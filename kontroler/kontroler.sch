EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:kontroler-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATTINY841-SSU IC1
U 1 1 57B88D11
P 6100 3850
F 0 "IC1" H 5250 4600 50  0000 C CNN
F 1 "ATTINY841-SSU" H 6800 3100 50  0000 C CNN
F 2 "SMD_Packages:SOIC-14_N" H 6100 3650 50  0000 C CIN
F 3 "" H 6100 3850 50  0000 C CNN
	1    6100 3850
	1    0    0    -1  
$EndComp
$Comp
L Battery BT1
U 1 1 57B88D80
P 1800 3200
F 0 "BT1" H 1900 3250 50  0000 L CNN
F 1 "Battery" H 1900 3150 50  0000 L CNN
F 2 "halfbattery:HALFBATTERY" V 1800 3240 50  0001 C CNN
F 3 "" V 1800 3240 50  0000 C CNN
	1    1800 3200
	1    0    0    -1  
$EndComp
$Comp
L Battery BT2
U 1 1 57B88E2F
P 1800 3600
F 0 "BT2" H 1900 3650 50  0000 L CNN
F 1 "Battery" H 1900 3550 50  0000 L CNN
F 2 "halfbattery:HALFBATTERY" V 1800 3640 50  0001 C CNN
F 3 "" V 1800 3640 50  0000 C CNN
	1    1800 3600
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 57B88F9D
P 2500 3300
F 0 "R1" V 2580 3300 50  0000 C CNN
F 1 "10K" V 2500 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2430 3300 50  0001 C CNN
F 3 "" H 2500 3300 50  0000 C CNN
	1    2500 3300
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 57B8912D
P 3200 3450
F 0 "C1" H 3225 3550 50  0000 L CNN
F 1 "10uF" H 3225 3350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3238 3300 50  0001 C CNN
F 3 "" H 3200 3450 50  0000 C CNN
	1    3200 3450
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 57B8916A
P 4100 3450
F 0 "C3" H 4125 3550 50  0000 L CNN
F 1 "10uF" H 4125 3350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4138 3300 50  0001 C CNN
F 3 "" H 4100 3450 50  0000 C CNN
	1    4100 3450
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 57B8936C
P 4950 3450
F 0 "C5" H 4975 3550 50  0000 L CNN
F 1 "100n" H 4975 3350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4988 3300 50  0001 C CNN
F 3 "" H 4950 3450 50  0000 C CNN
	1    4950 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 57B893DD
P 1800 3800
F 0 "#PWR01" H 1800 3550 50  0001 C CNN
F 1 "GND" H 1800 3650 50  0000 C CNN
F 2 "" H 1800 3800 50  0000 C CNN
F 3 "" H 1800 3800 50  0000 C CNN
	1    1800 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 57B89438
P 3200 3650
F 0 "#PWR02" H 3200 3400 50  0001 C CNN
F 1 "GND" H 3200 3500 50  0000 C CNN
F 2 "" H 3200 3650 50  0000 C CNN
F 3 "" H 3200 3650 50  0000 C CNN
	1    3200 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 57B8945E
P 4100 3650
F 0 "#PWR03" H 4100 3400 50  0001 C CNN
F 1 "GND" H 4100 3500 50  0000 C CNN
F 2 "" H 4100 3650 50  0000 C CNN
F 3 "" H 4100 3650 50  0000 C CNN
	1    4100 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 57B89484
P 4950 3650
F 0 "#PWR04" H 4950 3400 50  0001 C CNN
F 1 "GND" H 4950 3500 50  0000 C CNN
F 2 "" H 4950 3650 50  0000 C CNN
F 3 "" H 4950 3650 50  0000 C CNN
	1    4950 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 57B894D7
P 5000 4500
F 0 "#PWR05" H 5000 4250 50  0001 C CNN
F 1 "GND" H 5000 4350 50  0000 C CNN
F 2 "" H 5000 4500 50  0000 C CNN
F 3 "" H 5000 4500 50  0000 C CNN
	1    5000 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 57B8954F
P 3650 3600
F 0 "#PWR06" H 3650 3350 50  0001 C CNN
F 1 "GND" H 3650 3450 50  0000 C CNN
F 2 "" H 3650 3600 50  0000 C CNN
F 3 "" H 3650 3600 50  0000 C CNN
	1    3650 3600
	1    0    0    -1  
$EndComp
$Comp
L D D2
U 1 1 57B89663
P 2700 3800
F 0 "D2" H 2700 3900 50  0000 C CNN
F 1 "TS4148" H 2700 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2700 3800 50  0001 C CNN
F 3 "" H 2700 3800 50  0000 C CNN
	1    2700 3800
	0    -1   -1   0   
$EndComp
$Comp
L D D1
U 1 1 57B89732
P 2500 4000
F 0 "D1" H 2500 4100 50  0000 C CNN
F 1 "TS4148" H 2500 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2500 4000 50  0001 C CNN
F 3 "" H 2500 4000 50  0000 C CNN
	1    2500 4000
	-1   0    0    1   
$EndComp
$Comp
L Q_NPN_BEC Q2
U 1 1 57B897DE
P 3450 4300
F 0 "Q2" H 3750 4350 50  0000 R CNN
F 1 "Q_NPN_BEC" H 4050 4250 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 3650 4400 50  0001 C CNN
F 3 "" H 3450 4300 50  0000 C CNN
	1    3450 4300
	-1   0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 57B899D7
P 2700 4350
F 0 "SW1" H 2850 4460 50  0000 C CNN
F 1 "SW_PUSH" H 2700 4270 50  0000 C CNN
F 2 "Connect:PINHEAD1-2" H 2700 4350 50  0001 C CNN
F 3 "" H 2700 4350 50  0000 C CNN
	1    2700 4350
	0    1    1    0   
$EndComp
$Comp
L GND #PWR07
U 1 1 57B89B3A
P 3350 4550
F 0 "#PWR07" H 3350 4300 50  0001 C CNN
F 1 "GND" H 3350 4400 50  0000 C CNN
F 2 "" H 3350 4550 50  0000 C CNN
F 3 "" H 3350 4550 50  0000 C CNN
	1    3350 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 57B89B6C
P 2700 4700
F 0 "#PWR08" H 2700 4450 50  0001 C CNN
F 1 "GND" H 2700 4550 50  0000 C CNN
F 2 "" H 2700 4700 50  0000 C CNN
F 3 "" H 2700 4700 50  0000 C CNN
	1    2700 4700
	1    0    0    -1  
$EndComp
Text GLabel 2300 4000 0    60   Input ~ 0
SW_IN
$Comp
L R R4
U 1 1 57B89D9E
P 3850 4300
F 0 "R4" V 3930 4300 50  0000 C CNN
F 1 "10k" V 3850 4300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3780 4300 50  0001 C CNN
F 3 "" H 3850 4300 50  0000 C CNN
	1    3850 4300
	0    1    1    0   
$EndComp
Text GLabel 4050 4300 2    60   Input ~ 0
SHDN
$Comp
L INDUCTOR L1
U 1 1 57B8A0B5
P 5000 1100
F 0 "L1" V 4950 1100 50  0000 C CNN
F 1 "INDUCTOR" V 5100 1100 50  0000 C CNN
F 2 "1447423C:1447423C" H 5000 1100 50  0001 C CNN
F 3 "" H 5000 1100 50  0000 C CNN
	1    5000 1100
	0    1    1    0   
$EndComp
$Comp
L D_Schottky D3
U 1 1 57B8A22E
P 5750 1100
F 0 "D3" H 5750 1200 50  0000 C CNN
F 1 "D_Schottky" H 5750 1000 50  0000 C CNN
F 2 "Diodes_SMD:SMA_Handsoldering" H 5750 1100 50  0001 C CNN
F 3 "" H 5750 1100 50  0000 C CNN
	1    5750 1100
	-1   0    0    1   
$EndComp
$Comp
L CP C6
U 1 1 57B8A3E0
P 6050 1400
F 0 "C6" H 6075 1500 50  0000 L CNN
F 1 "100uF" H 6075 1300 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D8_L11.5_P3.5" H 6088 1250 50  0001 C CNN
F 3 "" H 6050 1400 50  0000 C CNN
	1    6050 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 57B8A548
P 5450 1700
F 0 "#PWR09" H 5450 1450 50  0001 C CNN
F 1 "GND" H 5450 1550 50  0000 C CNN
F 2 "" H 5450 1700 50  0000 C CNN
F 3 "" H 5450 1700 50  0000 C CNN
	1    5450 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 57B8A5BC
P 6050 1600
F 0 "#PWR010" H 6050 1350 50  0001 C CNN
F 1 "GND" H 6050 1450 50  0000 C CNN
F 2 "" H 6050 1600 50  0000 C CNN
F 3 "" H 6050 1600 50  0000 C CNN
	1    6050 1600
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 57B8A6ED
P 6500 1700
F 0 "R6" V 6580 1700 50  0000 C CNN
F 1 "3k3" V 6500 1700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6430 1700 50  0001 C CNN
F 3 "" H 6500 1700 50  0000 C CNN
	1    6500 1700
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 57B8A74A
P 6750 1700
F 0 "C7" H 6775 1800 50  0000 L CNN
F 1 "100nF" H 6775 1600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6788 1550 50  0001 C CNN
F 3 "" H 6750 1700 50  0000 C CNN
	1    6750 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 57B8A8B2
P 6500 1900
F 0 "#PWR011" H 6500 1650 50  0001 C CNN
F 1 "GND" H 6500 1750 50  0000 C CNN
F 2 "" H 6500 1900 50  0000 C CNN
F 3 "" H 6500 1900 50  0000 C CNN
	1    6500 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 57B8A8FC
P 6750 1900
F 0 "#PWR012" H 6750 1650 50  0001 C CNN
F 1 "GND" H 6750 1750 50  0000 C CNN
F 2 "" H 6750 1900 50  0000 C CNN
F 3 "" H 6750 1900 50  0000 C CNN
	1    6750 1900
	1    0    0    -1  
$EndComp
Text GLabel 6900 1500 2    60   Input ~ 0
ADC_V_OUT
$Comp
L R R2
U 1 1 57B8ABDC
P 3550 2150
F 0 "R2" V 3630 2150 50  0000 C CNN
F 1 "33k" V 3550 2150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3480 2150 50  0001 C CNN
F 3 "" H 3550 2150 50  0000 C CNN
	1    3550 2150
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 57B8AC6D
P 3550 2550
F 0 "R3" V 3630 2550 50  0000 C CNN
F 1 "12k" V 3550 2550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3480 2550 50  0001 C CNN
F 3 "" H 3550 2550 50  0000 C CNN
	1    3550 2550
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 57B8ACC5
P 3800 2550
F 0 "C2" H 3825 2650 50  0000 L CNN
F 1 "100n" H 3825 2450 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 3838 2400 50  0001 C CNN
F 3 "" H 3800 2550 50  0000 C CNN
	1    3800 2550
	1    0    0    -1  
$EndComp
$Comp
L CP C4
U 1 1 57B8AE92
P 4150 1350
F 0 "C4" H 4175 1450 50  0000 L CNN
F 1 "100uF" H 4175 1250 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D8_L11.5_P3.5" H 4188 1200 50  0001 C CNN
F 3 "" H 4150 1350 50  0000 C CNN
	1    4150 1350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 57B8AF73
P 4150 1600
F 0 "#PWR013" H 4150 1350 50  0001 C CNN
F 1 "GND" H 4150 1450 50  0000 C CNN
F 2 "" H 4150 1600 50  0000 C CNN
F 3 "" H 4150 1600 50  0000 C CNN
	1    4150 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 57B8B022
P 3550 2750
F 0 "#PWR014" H 3550 2500 50  0001 C CNN
F 1 "GND" H 3550 2600 50  0000 C CNN
F 2 "" H 3550 2750 50  0000 C CNN
F 3 "" H 3550 2750 50  0000 C CNN
	1    3550 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 57B8B078
P 3800 2750
F 0 "#PWR015" H 3800 2500 50  0001 C CNN
F 1 "GND" H 3800 2600 50  0000 C CNN
F 2 "" H 3800 2750 50  0000 C CNN
F 3 "" H 3800 2750 50  0000 C CNN
	1    3800 2750
	1    0    0    -1  
$EndComp
Text GLabel 3950 2350 2    60   Input ~ 0
ADC_V_BAT
$Comp
L ZENER D4
U 1 1 57B8B2AB
P 7650 1500
F 0 "D4" H 7650 1600 50  0000 C CNN
F 1 "ZENER-35V" H 7650 1400 50  0000 C CNN
F 2 "Diodes_SMD:SOD-123" H 7650 1500 50  0001 C CNN
F 3 "" H 7650 1500 50  0000 C CNN
	1    7650 1500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR016
U 1 1 57B8B484
P 7650 1800
F 0 "#PWR016" H 7650 1550 50  0001 C CNN
F 1 "GND" H 7650 1650 50  0000 C CNN
F 2 "" H 7650 1800 50  0000 C CNN
F 3 "" H 7650 1800 50  0000 C CNN
	1    7650 1800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P1
U 1 1 57B8B573
P 8000 1100
F 0 "P1" H 8000 1200 50  0000 C CNN
F 1 "CONN_01X01" V 8100 1100 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_SMD_5x10mm" H 8000 1100 50  0001 C CNN
F 3 "" H 8000 1100 50  0000 C CNN
	1    8000 1100
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W4
U 1 1 57B8B6ED
P 6050 1050
F 0 "W4" H 6050 1320 50  0000 C CNN
F 1 "TEST_1P" H 6050 1250 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Big" H 6250 1050 50  0001 C CNN
F 3 "" H 6250 1050 50  0000 C CNN
	1    6050 1050
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W2
U 1 1 57B8B832
P 5450 1050
F 0 "W2" H 5450 1320 50  0000 C CNN
F 1 "TEST_1P" H 5450 1250 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Big" H 5650 1050 50  0001 C CNN
F 3 "" H 5650 1050 50  0000 C CNN
	1    5450 1050
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W3
U 1 1 57B8B912
P 5750 2250
F 0 "W3" H 5750 2520 50  0000 C CNN
F 1 "TEST_1P" H 5750 2450 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Big" H 5950 2250 50  0001 C CNN
F 3 "" H 5950 2250 50  0000 C CNN
	1    5750 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 57B8B9A8
P 5750 2300
F 0 "#PWR017" H 5750 2050 50  0001 C CNN
F 1 "GND" H 5750 2150 50  0000 C CNN
F 2 "" H 5750 2300 50  0000 C CNN
F 3 "" H 5750 2300 50  0000 C CNN
	1    5750 2300
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W5
U 1 1 57B8BA73
P 6750 1450
F 0 "W5" H 6750 1720 50  0000 C CNN
F 1 "TEST_1P" H 6750 1650 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Big" H 6950 1450 50  0001 C CNN
F 3 "" H 6950 1450 50  0000 C CNN
	1    6750 1450
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W1
U 1 1 57B8BCA3
P 3800 2300
F 0 "W1" H 3800 2570 50  0000 C CNN
F 1 "TEST_1P" H 3800 2500 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Big" H 4000 2300 50  0001 C CNN
F 3 "" H 4000 2300 50  0000 C CNN
	1    3800 2300
	1    0    0    -1  
$EndComp
Text GLabel 4900 1450 0    60   Input ~ 0
MOS_PWM
$Comp
L CONN_01X01 P2
U 1 1 57B8C1C1
P 10500 750
F 0 "P2" H 10500 850 50  0000 C CNN
F 1 "CONN_01X01" V 10600 750 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_SMD_5x10mm" H 10500 750 50  0001 C CNN
F 3 "" H 10500 750 50  0000 C CNN
	1    10500 750 
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR018
U 1 1 57B8C455
P 10500 1500
F 0 "#PWR018" H 10500 1250 50  0001 C CNN
F 1 "GND" H 10500 1350 50  0000 C CNN
F 2 "" H 10500 1500 50  0000 C CNN
F 3 "" H 10500 1500 50  0000 C CNN
	1    10500 1500
	1    0    0    -1  
$EndComp
Text GLabel 10150 1250 0    60   Input ~ 0
MOS_LED_1
$Comp
L CONN_01X01 P3
U 1 1 57B8CE05
P 10500 1850
F 0 "P3" H 10500 1950 50  0000 C CNN
F 1 "CONN_01X01" V 10600 1850 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_SMD_5x10mm" H 10500 1850 50  0001 C CNN
F 3 "" H 10500 1850 50  0000 C CNN
	1    10500 1850
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR019
U 1 1 57B8CE12
P 10500 2600
F 0 "#PWR019" H 10500 2350 50  0001 C CNN
F 1 "GND" H 10500 2450 50  0000 C CNN
F 2 "" H 10500 2600 50  0000 C CNN
F 3 "" H 10500 2600 50  0000 C CNN
	1    10500 2600
	1    0    0    -1  
$EndComp
Text GLabel 10150 2350 0    60   Input ~ 0
MOS_LED_2
$Comp
L CONN_01X01 P4
U 1 1 57B8CFA7
P 10500 2900
F 0 "P4" H 10500 3000 50  0000 C CNN
F 1 "CONN_01X01" V 10600 2900 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_SMD_5x10mm" H 10500 2900 50  0001 C CNN
F 3 "" H 10500 2900 50  0000 C CNN
	1    10500 2900
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR020
U 1 1 57B8CFB4
P 10500 3650
F 0 "#PWR020" H 10500 3400 50  0001 C CNN
F 1 "GND" H 10500 3500 50  0000 C CNN
F 2 "" H 10500 3650 50  0000 C CNN
F 3 "" H 10500 3650 50  0000 C CNN
	1    10500 3650
	1    0    0    -1  
$EndComp
Text GLabel 10150 3400 0    60   Input ~ 0
MOS_LED_3
Text GLabel 7500 3850 2    60   Input ~ 0
ADC_V_OUT
Text GLabel 7500 4150 2    60   Input ~ 0
ADC_V_BAT
Text GLabel 7500 3950 2    60   Input ~ 0
MOS_PWM
Text GLabel 7500 3450 2    60   Input ~ 0
MOS_LED_1
Text GLabel 7500 3350 2    60   Input ~ 0
MOS_LED_2
Text GLabel 7500 3250 2    60   Input ~ 0
MOS_LED_3
Text GLabel 7500 4350 2    60   Input ~ 0
SW_IN
Text GLabel 7500 4250 2    60   Input ~ 0
SHDN
$Comp
L SW_PUSH SW2
U 1 1 57B8E7F3
P 9400 5050
F 0 "SW2" H 9550 5160 50  0000 C CNN
F 1 "SW_PUSH" H 9400 4970 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH_SMALL" H 9400 5050 50  0001 C CNN
F 3 "" H 9400 5050 50  0000 C CNN
	1    9400 5050
	0    -1   -1   0   
$EndComp
$Comp
L SW_PUSH SW3
U 1 1 57B8E9AB
P 9700 4950
F 0 "SW3" H 9850 5060 50  0000 C CNN
F 1 "SW_PUSH" H 9700 4870 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH_SMALL" H 9700 4950 50  0001 C CNN
F 3 "" H 9700 4950 50  0000 C CNN
	1    9700 4950
	0    -1   -1   0   
$EndComp
$Comp
L SW_PUSH SW4
U 1 1 57B8EA43
P 10000 4850
F 0 "SW4" H 10150 4960 50  0000 C CNN
F 1 "SW_PUSH" H 10000 4770 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH_SMALL" H 10000 4850 50  0001 C CNN
F 3 "" H 10000 4850 50  0000 C CNN
	1    10000 4850
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR021
U 1 1 57B8ED13
P 9400 5450
F 0 "#PWR021" H 9400 5200 50  0001 C CNN
F 1 "GND" H 9400 5300 50  0000 C CNN
F 2 "" H 9400 5450 50  0000 C CNN
F 3 "" H 9400 5450 50  0000 C CNN
	1    9400 5450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 57B8EF33
P 9700 5350
F 0 "#PWR022" H 9700 5100 50  0001 C CNN
F 1 "GND" H 9700 5200 50  0000 C CNN
F 2 "" H 9700 5350 50  0000 C CNN
F 3 "" H 9700 5350 50  0000 C CNN
	1    9700 5350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 57B8EFB9
P 10000 5250
F 0 "#PWR023" H 10000 5000 50  0001 C CNN
F 1 "GND" H 10000 5100 50  0000 C CNN
F 2 "" H 10000 5250 50  0000 C CNN
F 3 "" H 10000 5250 50  0000 C CNN
	1    10000 5250
	1    0    0    -1  
$EndComp
$Comp
L LD1117S50CTR U1
U 1 1 57BB5971
P 3650 3300
F 0 "U1" H 3650 3550 50  0000 C CNN
F 1 "LD1117S50CTR" H 3650 3500 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 3650 3400 50  0000 C CNN
F 3 "" H 3650 3300 50  0000 C CNN
	1    3650 3300
	1    0    0    -1  
$EndComp
$Comp
L IRF8721PBF-1 Q3
U 1 1 57BB702D
P 5250 1400
F 0 "Q3" H 5600 1500 50  0000 L CNN
F 1 "IRF8721PBF-1" H 5600 1400 50  0000 L CNN
F 2 "Power_Integrations:SO-8" H 5600 1300 50  0000 L CNN
F 3 "" H 5150 1400 50  0000 L CNN
	1    5250 1400
	1    0    0    -1  
$EndComp
$Comp
L Q_PMOS_GDSD Q1
U 1 1 57BB8241
P 2700 3050
F 0 "Q1" H 3000 3100 50  0000 R CNN
F 1 "Q_PMOS_GDSD" H 3400 3000 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 2900 3150 50  0001 C CNN
F 3 "" H 2700 3050 50  0000 C CNN
	1    2700 3050
	0    1    -1   0   
$EndComp
$Comp
L Q_NMOS_GDSD Q4
U 1 1 57BB8E17
P 10400 1250
F 0 "Q4" H 10700 1300 50  0000 R CNN
F 1 "Q_NMOS_GDSD" H 11100 1200 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 10600 1350 50  0001 C CNN
F 3 "" H 10400 1250 50  0000 C CNN
	1    10400 1250
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDSD Q5
U 1 1 57BB9045
P 10400 2350
F 0 "Q5" H 10700 2400 50  0000 R CNN
F 1 "Q_NMOS_GDSD" H 11100 2300 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 10600 2450 50  0001 C CNN
F 3 "" H 10400 2350 50  0000 C CNN
	1    10400 2350
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDSD Q6
U 1 1 57BB90EF
P 10400 3400
F 0 "Q6" H 10700 3450 50  0000 R CNN
F 1 "Q_NMOS_GDSD" H 11100 3350 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 10600 3500 50  0001 C CNN
F 3 "" H 10400 3400 50  0000 C CNN
	1    10400 3400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X06 P5
U 1 1 57C1EEBE
P 7750 5500
F 0 "P5" H 7750 5850 50  0000 C CNN
F 1 "CONN_01X06" V 7850 5500 50  0000 C CNN
F 2 "attiny841-spi:ATTINY841-SPI" H 7750 5500 50  0001 C CNN
F 3 "" H 7750 5500 50  0000 C CNN
	1    7750 5500
	1    0    0    -1  
$EndComp
Text GLabel 9250 4650 0    60   Input ~ 0
SW2
Text GLabel 9550 4550 0    60   Input ~ 0
SW3
Text GLabel 9850 4450 0    60   Input ~ 0
SW4
Text GLabel 7500 3750 2    60   Input ~ 0
SW2
Text GLabel 7500 3650 2    60   Input ~ 0
SW3
Text GLabel 7500 3550 2    60   Input ~ 0
SW4
Text GLabel 7450 5250 0    60   Input ~ 0
SW2
$Comp
L +5V #PWR024
U 1 1 57C1FC25
P 4350 3150
F 0 "#PWR024" H 4350 3000 50  0001 C CNN
F 1 "+5V" H 4350 3290 50  0000 C CNN
F 2 "" H 4350 3150 50  0000 C CNN
F 3 "" H 4350 3150 50  0000 C CNN
	1    4350 3150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR025
U 1 1 57C1FCB5
P 4850 3150
F 0 "#PWR025" H 4850 3000 50  0001 C CNN
F 1 "+5V" H 4850 3290 50  0000 C CNN
F 2 "" H 4850 3150 50  0000 C CNN
F 3 "" H 4850 3150 50  0000 C CNN
	1    4850 3150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR026
U 1 1 57C20039
P 7100 5300
F 0 "#PWR026" H 7100 5150 50  0001 C CNN
F 1 "+5V" H 7100 5440 50  0000 C CNN
F 2 "" H 7100 5300 50  0000 C CNN
F 3 "" H 7100 5300 50  0000 C CNN
	1    7100 5300
	1    0    0    -1  
$EndComp
Text GLabel 7450 5450 0    60   Input ~ 0
SW3
Text GLabel 7450 5550 0    60   Input ~ 0
ADC_V_OUT
Text GLabel 7500 4450 2    60   Input ~ 0
RESET
Text GLabel 7450 5650 0    60   Input ~ 0
RESET
$Comp
L GND #PWR027
U 1 1 57C20773
P 7500 5800
F 0 "#PWR027" H 7500 5550 50  0001 C CNN
F 1 "GND" H 7500 5650 50  0000 C CNN
F 2 "" H 7500 5800 50  0000 C CNN
F 3 "" H 7500 5800 50  0000 C CNN
	1    7500 5800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X06 P7
U 1 1 57C2D605
P 4650 6300
F 0 "P7" H 4650 6650 50  0000 C CNN
F 1 "CONN_01X06" V 4750 6300 50  0000 C CNN
F 2 "attiny841-spi:ATTINY841-SPI" H 4650 6300 50  0001 C CNN
F 3 "" H 4650 6300 50  0000 C CNN
	1    4650 6300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X06 P6
U 1 1 57C2D6D4
P 4150 6300
F 0 "P6" H 4150 6650 50  0000 C CNN
F 1 "CONN_01X06" V 4250 6300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 4150 6300 50  0001 C CNN
F 3 "" H 4150 6300 50  0000 C CNN
	1    4150 6300
	-1   0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 57B8A676
P 6500 1300
F 0 "R5" V 6580 1300 50  0000 C CNN
F 1 "47k" V 6500 1300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6430 1300 50  0001 C CNN
F 3 "" H 6500 1300 50  0000 C CNN
	1    6500 1300
	1    0    0    -1  
$EndComp
Connection ~ 3100 2850
Wire Wire Line
	2900 2850 3100 2850
Wire Wire Line
	2900 2950 3100 2950
Wire Wire Line
	4450 6550 4350 6550
Wire Wire Line
	4450 6450 4350 6450
Wire Wire Line
	4450 6350 4350 6350
Wire Wire Line
	4350 6250 4450 6250
Wire Wire Line
	4450 6150 4350 6150
Wire Wire Line
	4350 6050 4450 6050
Wire Wire Line
	7500 5750 7500 5800
Wire Wire Line
	7550 5750 7500 5750
Wire Wire Line
	7550 5650 7450 5650
Wire Wire Line
	7150 4450 7500 4450
Wire Wire Line
	7450 5550 7550 5550
Wire Wire Line
	7450 5450 7550 5450
Wire Wire Line
	7100 5350 7100 5300
Wire Wire Line
	7550 5350 7100 5350
Wire Wire Line
	4850 3250 4850 3150
Wire Wire Line
	4850 3250 5050 3250
Wire Wire Line
	4350 3250 4350 3150
Wire Wire Line
	4050 3250 4350 3250
Wire Wire Line
	7450 5250 7550 5250
Wire Wire Line
	7150 3750 7500 3750
Wire Wire Line
	7500 3650 7150 3650
Wire Wire Line
	7150 3550 7500 3550
Wire Wire Line
	10000 4450 9850 4450
Wire Wire Line
	10000 4550 10000 4450
Wire Wire Line
	9700 4550 9550 4550
Wire Wire Line
	9700 4650 9700 4550
Wire Wire Line
	9400 4650 9400 4750
Wire Wire Line
	9250 4650 9400 4650
Wire Wire Line
	7150 4350 7500 4350
Wire Wire Line
	7150 4250 7500 4250
Wire Wire Line
	7150 4150 7500 4150
Wire Wire Line
	7150 3950 7500 3950
Wire Wire Line
	7150 3850 7500 3850
Wire Wire Line
	7150 3450 7500 3450
Wire Wire Line
	7150 3350 7500 3350
Wire Wire Line
	7150 3250 7500 3250
Connection ~ 4950 3250
Wire Wire Line
	4950 3300 4950 3250
Connection ~ 10500 1000
Wire Wire Line
	10600 1000 10500 1000
Wire Wire Line
	10600 1050 10600 1000
Connection ~ 10500 2100
Wire Wire Line
	10500 2050 10500 2150
Wire Wire Line
	10600 2100 10500 2100
Wire Wire Line
	10600 2150 10600 2100
Connection ~ 10500 3150
Wire Wire Line
	10600 3150 10500 3150
Wire Wire Line
	10600 3200 10600 3150
Connection ~ 5350 1650
Wire Wire Line
	5350 1600 5350 1650
Connection ~ 5450 1650
Wire Wire Line
	5250 1650 5450 1650
Wire Wire Line
	5250 1600 5250 1650
Connection ~ 5450 1200
Connection ~ 5350 1200
Wire Wire Line
	5250 1200 5550 1200
Wire Wire Line
	4900 1450 4950 1450
Wire Wire Line
	10000 5150 10000 5250
Wire Wire Line
	9700 5250 9700 5350
Wire Wire Line
	9400 5350 9400 5450
Wire Wire Line
	10200 3400 10150 3400
Wire Wire Line
	10500 3600 10500 3650
Wire Wire Line
	10500 3100 10500 3200
Wire Wire Line
	10200 2350 10150 2350
Wire Wire Line
	10500 2550 10500 2600
Wire Wire Line
	10200 1250 10150 1250
Wire Wire Line
	10500 1450 10500 1500
Wire Wire Line
	10500 950  10500 1050
Connection ~ 4150 1100
Wire Wire Line
	5750 2300 5750 2250
Connection ~ 7650 1100
Wire Wire Line
	7650 1700 7650 1800
Connection ~ 6500 1100
Wire Wire Line
	7650 1100 7650 1300
Connection ~ 3800 2350
Wire Wire Line
	3800 2750 3800 2700
Wire Wire Line
	3550 2750 3550 2700
Wire Wire Line
	4150 1600 4150 1500
Wire Wire Line
	4150 1200 4150 1100
Connection ~ 3550 2350
Wire Wire Line
	3800 2300 3800 2400
Wire Wire Line
	3550 2350 3950 2350
Wire Wire Line
	3550 2300 3550 2400
Connection ~ 3550 1900
Wire Wire Line
	3550 1100 4700 1100
Connection ~ 3100 2950
Wire Wire Line
	3550 1100 3550 2000
Wire Wire Line
	3100 1900 3550 1900
Wire Wire Line
	6500 1500 6900 1500
Connection ~ 6750 1500
Wire Wire Line
	6750 1850 6750 1900
Wire Wire Line
	6500 1850 6500 1900
Connection ~ 6500 1500
Wire Wire Line
	6750 1450 6750 1550
Wire Wire Line
	6500 1450 6500 1550
Connection ~ 6050 1100
Wire Wire Line
	6500 1100 6500 1150
Wire Wire Line
	6050 1550 6050 1600
Wire Wire Line
	5450 1600 5450 1700
Wire Wire Line
	6050 1050 6050 1250
Wire Wire Line
	5900 1100 7800 1100
Connection ~ 5450 1100
Wire Wire Line
	5450 1200 5450 1050
Wire Wire Line
	5300 1100 5600 1100
Wire Wire Line
	2950 4000 2950 3300
Wire Wire Line
	3350 4000 2950 4000
Wire Wire Line
	2650 4000 2700 4000
Wire Wire Line
	4000 4300 4050 4300
Wire Wire Line
	3650 4300 3700 4300
Wire Wire Line
	2350 4000 2300 4000
Wire Wire Line
	3350 4550 3350 4500
Wire Wire Line
	2700 4700 2700 4650
Wire Wire Line
	3350 4000 3350 4100
Connection ~ 2700 4000
Wire Wire Line
	2700 3950 2700 4050
Connection ~ 2700 3300
Connection ~ 3200 3250
Wire Wire Line
	3100 1900 3100 3250
Wire Wire Line
	3200 3650 3200 3600
Wire Wire Line
	3650 3600 3650 3550
Wire Wire Line
	4100 3650 4100 3600
Wire Wire Line
	4950 3650 4950 3600
Wire Wire Line
	5000 4450 5000 4500
Wire Wire Line
	5050 4450 5000 4450
Wire Wire Line
	1800 3800 1800 3750
Connection ~ 4100 3250
Wire Wire Line
	3200 3250 3200 3300
Wire Wire Line
	3100 3250 3250 3250
Wire Wire Line
	4100 3250 4100 3300
Connection ~ 2300 2950
Wire Wire Line
	1800 3050 1800 2950
Wire Wire Line
	2700 3250 2700 3650
Wire Wire Line
	2650 3300 2950 3300
Wire Wire Line
	1800 2950 2500 2950
Wire Wire Line
	2300 3300 2300 2950
Wire Wire Line
	2350 3300 2300 3300
Wire Wire Line
	1800 3350 1800 3450
$EndSCHEMATC
