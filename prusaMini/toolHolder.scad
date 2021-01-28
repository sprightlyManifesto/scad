include <../lib.scad>;
$fn=36;

difference(){
    union(){  //outerform
        rotate([180,0,0]){translate([0,0,2.5]){cube([10,7.5,5],true);}}
        cylinder(d=7.5,h=3);
        translate([6,0,8]){cube([42,7.5,10],center=true);}
        }
        //innerform
    rotate([180,0,0]){translate([0,0,2]){linear_extrude(6){hex(5.7);}}}
    cylinder(d=3.5,h=50,center=true);
    translate([0,0,7]){cylinder(d=6,h=50);}
    translate([15,0,8]){cube([15,50,3],center=true);}
    translate([15,0,12]){cube([10,50,10],center=true);}
    translate([-10,0,8]){rotate([90,0,0]){cylinder(d=4,h=50,center=true);}}
    }    
    
    