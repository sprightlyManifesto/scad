include <../threadlib/threadlib.scad>

$fn=100;
union(){
    difference(){
        rotate_extrude(){polygon([[0,0],[17,0],[18,1],[18,4],[17,5],[0,5]]);}
        knocks= 7;

        for ( i = [0 : knocks] ){
            rotate([0,0,i*360/knocks]){
                
                translate([0, 18+3, 0]){
                    cylinder(r = 5, h=50,center=true);}}    
        }
    }

    translate([0,0,2]){bolt("UNC-20", 10, higbee_arc=20, fn=120, table=THREAD_TABLE);}
    cylinder(d=6.3, h=9.5);
}