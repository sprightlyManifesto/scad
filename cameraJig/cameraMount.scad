difference(){
    
    minkowski(){cube([113,48,23],true);sphere(r=1,$fn=36); };
    translate([115/2-15,0,0]){
        minkowski(){
                cube([18,38,50],true);
                sphere(r=1,$fn=36);
            }
            rotate([0,0,90]){cylinder(d=6.5, h=50);}
        }
        translate([-115/2+45,0,0]){
            minkowski(){
                cube([78,38,50],true);
                sphere(r=1,$fn=36);
                }
            }
    rotate([0,-90,0]){cylinder(d=7,h=100, $fn=50);}
}
