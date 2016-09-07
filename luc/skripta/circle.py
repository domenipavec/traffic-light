#!/usr/bin/env python

import pcbnew

import numpy as np

pcb = pcbnew.LoadBoard('luc.kicad_pcb')

origin = (150, 50)


def point(x, y):
    return pcbnew.wxPoint(int(1000000 * x), int(1000000 * y))


for module in pcb.GetModules():
    ref = module.GetReference()
    if ref[0] == 'D':
        i = int(ref[1:])
        if i <= 1:
            r = 0
            phi = 360 / 1 * (i - 1)
        elif i <= 7:
            r = 6
            phi = 360 / 6 * (i - 2)
        elif i <= 19:
            r = 12
            phi = 360 / 12 * (i - 8)
        elif i <= 37:
            r = 18
            phi = 360 / 18 * (i - 20)
        elif i <= 61:
            r = 24
            phi = 360 / 24 * (i - 38)
        elif i <= 91:
            r = 30
            phi = 360 / 30 * (i - 62)
        phir = np.radians(phi)
        x = origin[0] + r * np.cos(phir)
        y = origin[1] + r * np.sin(phir)
        module.SetPosition(point(x, y))
        module.SetOrientation(180 * 10)


pcb.Save('luc1.kicad_pcb')
