$fn=100;

difference(){
    minkowski(){cube([47,47,47],true);sphere(d=3);}

    translate([0,0,24]){linear_extrude(2){
        text("Nice",halign="center",valign="center",size=9);}}
    rotate([180,0,0]){translate([0,0,24]){linear_extrude(2){
        text("Naughty",halign="center",valign="center",size=9);}}}
    
    rotate([90,0,0]){
    translate([0,0,24]){linear_extrude(2){
        text("James",halign="center",valign="center",size=9);}}
    rotate([180,0,0]){translate([0,0,24]){linear_extrude(2){
        text("Lizzie",halign="center",valign="center",size=9);}}}
    }   
    rotate([0,90,0]){
    translate([0,0,24]){linear_extrude(2){
        text("Are
        ",halign="center",valign="center",size=9);}}
    rotate([180,0,0]){translate([0,0,24]){linear_extrude(2){
        text("They?",halign="center",valign="center",size=9);}}}
    }
}