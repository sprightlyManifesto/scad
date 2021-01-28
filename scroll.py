#!/usr/bin/python3
from math import *
ptsPerRev = 100
pitch = 6
turns = 5
od = 50
wall = 2

scrollPts = []

for i in range(0,ptsPerRev * turns):
	a = i * 2 * pi / ptsPerRev
	r = (od - i* pitch / ptsPerRev) /2
	scrollPts.append((r*cos(a),r*sin(a)))

for i in range(ptsPerRev * turns-1,-1,-1):
	a = i * 2 * pi / ptsPerRev
	r = (od - i* pitch / ptsPerRev - wall) / 2
	scrollPts.append((r*cos(a),r*sin(a)))

scroll = "$fn=100;\nscroll=["  
for p in scrollPts:
	scroll += f"[{p[0]},{p[1]}],"
scroll = scroll[:-1] + "];\nlinear_extrude(6,center=true){polygon(scroll);}\n"

prog = """
rotate([180,0,0])
{
	difference()
	{
		union()
		{"""

prog += scroll
prog += """
			cylinder(d=55,h=3);
			cylinder(d=51.5,h=10);
		}
			cylinder(d=25,h=100,center=true);
	}

}
"""

open("scroll.scad","w").write(prog)


