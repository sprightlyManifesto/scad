$fn=100;
include <../lib.scad>

difference(){
    union(){
        radCylinder(h=65,d=72,r=10);
        }
    translate([0,0,3]){radCylinder(h=65,d=65,r=10)};
    }    

//chamferedCube(x=74,y=82,z=24,r3,center=true);

