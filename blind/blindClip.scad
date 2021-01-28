$fn =100;
rad=1;
cubeX = 20;
cubeY = 21;
cubeZ = 24;
bX = 12;
bY = 12;
bZ = 12;

union()
{
    difference()
    {
        minkowski(){cube([cubeX-rad*2,cubeY-rad*2,cubeZ-rad*2],true);sphere(rad);}
        //Bore
        cylinder(h=cubeZ+1,d=6,center=true);
        sphere(d=15);
    }//end diff
    
    translate([0,5+cubeY/2,3]){
        difference()
        {
            minkowski(){cube([bX-rad*2,bY-rad*2,bZ-rad*2],true);sphere(rad);}
            rotate([0,90,0]){cylinder(h=bZ+1,d=6,center=true);}
        }
    }
    
}


//cylinder(h=cubeZ+1,d=5,center=true);