/* File: main.cpp
 * Contains base main function and usually all the other stuff that avr does...
 */
/* Copyright (c) 2012-2013 Domen Ipavec (domen.ipavec@z-v.si)
 *
 * Permission is hereby granted, free of charge, to any person
 * obtaining a copy of this software and associated documentation files
 * (the "Software"), to deal in the Software without restriction,
 * including without limitation the rights to use, copy, modify, merge,
 * publish, distribute, sublicense, and/or sell copies of the Software,
 * and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
 * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
 * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

//#include <util/delay.h>

#include <avr/io.h>
#include <avr/interrupt.h>
//#include <avr/pgmspace.h>
#include <avr/eeprom.h>
#include <util/delay.h>

#include <stdint.h>

#include "bitop.h"

static const uint8_t RED = PA0;
static const uint8_t YELLOW = PA2;
static const uint8_t GREEN = PA1;

static volatile uint16_t power = 450;
static const uint16_t power_modes[] = {150, 160, 170, 180, 200, 250, 300, 400, 450};
static const uint8_t POWER_INDEX_MAX = sizeof(power_modes)/sizeof(power_modes[0]) - 1;
static uint8_t power_index = 0;

static volatile bool pwm_enabled = false;

static volatile uint16_t adc = 0;
static const uint8_t ADC_AVERAGE_SHIFT = 2;
static volatile uint16_t adc_average = 920<<ADC_AVERAGE_SHIFT;

static const uint16_t ADC_SHUTDOWN = 750;
static const uint16_t ADC_LOW = 820;
static const uint16_t ADC_WARNING = 920;

ISR(ADC_vect) {
	adc = ADC;
	if (pwm_enabled) {
		OCR0B = 255 - (adc << 5)/power;
	}
}

static volatile uint8_t sw1 = 0;
static volatile uint8_t sw2 = 0;
static volatile uint8_t sw3 = 0;
static volatile uint8_t sw4 = 0;

ISR(TIMER1_OVF_vect) {
	if (BITCLEAR(PINB, PB2)) {
		sw1++;
	} else {
		sw1 = 0;
	}
	if (BITCLEAR(PINA, PA3)) {
		sw2++;
	} else {
		sw2 = 0;
	}
	if (BITCLEAR(PINA, PA4)) {
		sw3++;
	} else {
		sw3 = 0;
	}
	if (BITCLEAR(PINA, PA5)) {
		sw4++;
	} else {
		sw4 = 0;
	}
}

static volatile uint16_t timer;

ISR(TIMER2_OVF_vect) {
	timer++;
}

ISR(TIMER2_COMPA_vect) {
	if (adc != 0) {
		adc_average -= adc_average >> ADC_AVERAGE_SHIFT;
		adc_average += adc;
	}
}

// describes current light configuration
static uint8_t state = 1;
// describes operation mode (manual, automatic)
static uint8_t mode = 0;
static uint8_t EEMEM eeprom_mode = 0;

static uint16_t on_time = 10;
static uint16_t EEMEM eeprom_on_time = 10;
static const uint16_t BLINK_TIME = 1;
static const uint16_t YELLOW_TIME = 2;

static inline void set_state() {
	if (state == 0) {
		pwm_enabled = true;
		SETBIT(PORTA, GREEN);
		CLEARBITS(PORTA, BIT(YELLOW) | BIT(RED));
	} else if (state == 1) {
		pwm_enabled = true;
		SETBIT(PORTA, YELLOW);
		CLEARBITS(PORTA, BIT(GREEN) | BIT(RED));
	} else if (state == 2) {
		pwm_enabled = true;
		SETBIT(PORTA, RED);
		CLEARBITS(PORTA, BIT(GREEN) | BIT(YELLOW));
	} else if (state == 3) {
		pwm_enabled = true;
		SETBITS(PORTA, BIT(RED) | BIT(YELLOW));
		CLEARBIT(PORTA, GREEN);
	} else if (state == 4) {
		pwm_enabled = false;
		OCR0B = 0;
		CLEARBIT(PORTA, PA7);
		CLEARBITS(PORTA, BIT(YELLOW) | BIT(RED) | BIT(GREEN));
	} else if (state == 5) {
		pwm_enabled = true;
		SETBITS(PORTA, BIT(RED) | BIT(GREEN));
		CLEARBIT(PORTA, YELLOW);
	}
	timer = 0;
}

static inline void transition(uint16_t time, uint8_t new_state) {
	if (timer >= time) {
		state = new_state;
		set_state();
	}
}

static const uint8_t SHORT_PRESS = 2;
static const uint8_t LONG_PRESS = 20;

static inline bool pressed(volatile uint8_t * sw, uint8_t timing = SHORT_PRESS) {
	if (*sw == timing) {
		while(*sw == timing);
		return true;
	} else {
		return false;
	}
}

static inline uint16_t pressed_transition(volatile uint8_t * sw, uint8_t new_state) {
	uint16_t old_timer = 0;
	if (pressed(sw)) {
		state = new_state;
		old_timer = timer;
		set_state();
	}
	return old_timer;
}

static inline void shutdown() {
	CLEARBIT(PORTB, PB1);
	while(true);
}

int main() {
	// init

	// init shutdown transistor
	SETBIT(DDRB, PB1);
	SETBIT(PORTB, PB1);

	// init selections mosfets
	SETBITS(DDRA, BIT(RED) | BIT(YELLOW) | BIT(GREEN));

	// init pwm mosfet
	SETBIT(DDRA, PA7);

	// init pull-ups for buttons
	SETBITS(PUEA, BIT(PA3) | BIT(PA4) | BIT(PA5));
	SETBIT(PUEB, PB2);

	// disable digital input on analog pins
	DIDR0 = BIT(ADC6D);
	DIDR1 = BIT(ADC11D);

	for (uint16_t i = 0; i < 10; i++) {
		_delay_ms(1);
	}

	// check if we are powering down
	if (BITSET(PINB, PB2)) {
		shutdown();
	}

	// wait for button release
	while (BITCLEAR(PINB, PB2));

	// read eeprom
	mode = eeprom_read_byte(&eeprom_mode);
	if (mode > 3) {
		mode = 0;
	}
	on_time = eeprom_read_word(&eeprom_on_time);
	if (on_time < 1) {
		on_time = 1;
	}
	power = power_modes[power_index];

	// init debounce timer (65ms ovf)
	TCCR1B = BIT(CS11);
	// set overflow interrupt
	TIMSK1 = BIT(TOIE1);

	// init timing timer (500ms)
	TCCR2B = BIT(CS20) | BIT(CS21);
	// set overflow interrupt
	TIMSK2 = BIT(TOIE2);
	// set match interrupt to halfway for adc averaging
	OCR2A = 0xffff>>1;
	SETBIT(TIMSK2, OCIE2A);

	// init pwm timer
	// tocc6 is OCR0B
	// enable tocc6
	SETBIT(TOCPMCOE, TOCC6OE);
	// set fast pwm non inverting
	TCCR0A = BIT(COM0B1) | BIT(WGM01) | BIT(WGM00);
	// set no prescaling clock
	TCCR0B = BIT(CS00);
	OCR0B = 0;

	// set adc to adc11 for vin
	ADMUXA = 11;
	// set reference to 2.2V
	ADMUXB = BIT(REFS1);
	// enable adc in freerunning mode
	ADCSRA = BIT(ADEN) | BIT(ADSC) | BIT(ADATE) | BIT(ADIE) | BIT(ADPS2) | BIT(ADPS1);

	// enable interrupts
	sei();

	// wait for adc results
	while (adc == 0);

	// flash battery indication
	if (adc > ADC_WARNING) {
		state = 0;
	} else if (adc > ADC_LOW) {
		state = 1;
	} else if (adc > ADC_SHUTDOWN) {
		state = 2;
	} else {
		shutdown();
	}
	set_state();
	while (timer < BLINK_TIME);

	state = 4;
	set_state();
	while (timer < BLINK_TIME);

	for (;;) {
		// state machine
		if (mode == 0) {
			if (state == 1) {
				transition(BLINK_TIME, 4);
			} else {
				transition(BLINK_TIME, 1);
			}
		} else if (mode == 1) {
			if (state == 0) {
				transition(on_time, 1);
			} else if (state == 1) {
				transition(YELLOW_TIME, 2);
			} else if (state == 2) {
				transition(on_time, 3);
			} else if (state == 3) {
				transition(YELLOW_TIME, 0);
			} else {
				state = 0;
				set_state();
			}
		} else if (mode == 2) {
			if (state == 0) {
				pressed_transition(&sw1, 1);
			} else if (state == 1) {
				transition(YELLOW_TIME, 2);
			} else if (state == 2) {
				pressed_transition(&sw1, 3);
			} else if (state == 3) {
				transition(YELLOW_TIME, 0);
			} else {
				state = 0;
				set_state();
			}
		} else if (mode == 3) {
			if (state == 5) {
				transition(BLINK_TIME, 4);
			} else if (state == 4) {
				transition(BLINK_TIME, 0);
			} else if (state == 0) {
				uint16_t new_time = pressed_transition(&sw1, 1);
				if (new_time > 0) {
					on_time = new_time;
					eeprom_update_word(&eeprom_on_time, on_time);
					mode = 1;
					eeprom_update_byte(&eeprom_mode, mode);
				}
			} else {
				state = 5;
				set_state();
			}
		}
		// buttons
		if (pressed(&sw2)) {
			if (power_index < POWER_INDEX_MAX) {
				power_index++;
			}
			power = power_modes[power_index];
		}
		if (pressed(&sw3)) {
			if (mode == 0) {
				mode = 1;
				state = 0;
			} else if (mode == 1) {
				mode = 2;
				state = 0;
			} else {
				mode = 0;
				state = 1;
			}
			eeprom_update_byte(&eeprom_mode, mode);
			set_state();
		}
		if (pressed(&sw4)) {
			if (power_index > 0) {
				power_index--;
			}
			power = power_modes[power_index];
		}
		if (pressed(&sw3, LONG_PRESS)) {
			mode = 3;
			state = 5;
			set_state();
		}
		if (adc_average < (ADC_SHUTDOWN << ADC_AVERAGE_SHIFT) || pressed(&sw1, LONG_PRESS)) {
			state = 4;
			set_state();
			shutdown();
		}
	}
}


