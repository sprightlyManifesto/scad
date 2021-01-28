$fn=100;
include <../lib.scad>

difference(){
union(){
cylinder(h=65,d=72);
translate([0,0,-15]){rotate([180,0,0]){radCube(72,88.5,30,3);}}
}
cylinder(h=66,d=65);
translate([0,0,-15]){rotate([180,0,0]){radCube(x=74,y=82,z=24,r=3);}}
translate([0,0,-20]){rotate([180,0,0]){cube([74,65,24],center=true);}}
}


//chamferedCube(x=74,y=82,z=24,r3,center=true);