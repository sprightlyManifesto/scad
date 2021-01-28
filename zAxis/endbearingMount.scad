$fn =100;
boreOffset = 3;
railPitch = 60;
railOffset = 6;
railDia = 12;
cubeX = 80;
cubeY = 36;
cubeZ = 20;
rad = 1;
//bolt  values are clearance hole sizes for M4
boltHeadDia = 7.8;
boltHeadDepth = 4.4;
boltDia = 4.5;
nutAF =7;
nutH = 3.7;
//nutOD = (nutAF*tan(30))*(1 + 2*sin(30));  //wrong nuts are not true hex due to chamfers
nutOD =7.66; 

pinchBoltY = cubeY/2 - boltHeadDia/2 -0.5;

difference()
{
    minkowski(){
        cube([cubeX-rad*2,cubeY-rad*2,cubeZ-rad*2],true);
        sphere(rad);        
    }
    //Bore
    cylinder(h=11, d=19, center=false); 
    //part symetrcial features in x
    for(p = [-1,1]){
            //rail hole and pinch slit
            translate([p*railPitch/2,railOffset,0]){
                cylinder(h=cubeZ +1, d=railDia, center = true);
                translate([0,cubeY/2,0]){cube([0.4,cubeY,cubeZ+1],center=true);}
            }
            //mounting holes
            translate([p*railPitch/2,0,0]){
                rotate([90,0,0]){cylinder(h=cubeY+1, d=4.5,center=true);}
                translate([0,-9,0]){
                rotate([-90,0,0]){cylinder(h=cubeY+1, d=boltHeadDia);}
                }
            }
    //pinch bolt holes      
        translate([p*cubeX/2,pinchBoltY,0]){
            rotate([0,90,0]){
                cylinder(h=2*(boltHeadDepth), d=boltHeadDia, center=true);
                cylinder(h=2*(cubeX-railPitch),d=boltDia,center=true);
                }
            }
    //nut holes
        translate([p*19,pinchBoltY,0]){
            cube([nutH,nutAF+2,cubeZ+1],center=true);
        }
    }//end for p
}//end diff
          
    

