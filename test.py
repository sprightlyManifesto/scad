#!/usr/bin/python3
from math import *
ptsPerRev = 100
pitch = 6
turns = 1
od = 100
d = 5
wall = 2

polyPts = []

for i in range(0,ptsPerRev * turns):
	a = i * 2 * pi / ptsPerRev
	r = od /2  - d*cos(a*8) 
	polyPts.append((r*cos(a),r*sin(a)))


polytxt = "$fn=100;\npoly=["  
for p in polyPts:
	polytxt += f"[{p[0]},{p[1]}],"
polytxt = polytxt[:-1] + "];\nlinear_extrude(175,center=true,twist=360,scale=1.5){polygon(poly);}\n"


open("test.scad","w").write(polytxt)


