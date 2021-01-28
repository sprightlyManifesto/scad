include <lib.scad>;
$fn=100;

cX = 90;
cY = 40;
cZ = 70;
bearingDepth    = 34;
bearingDia      = 21;
bearingPitch    = 60;
cboreDia        = 22;
cboreDepth      = 4;


difference(){
    chamferedCube(cX,cY,cZ,chamfer=1);
    for(z = [-cZ/2,cZ/2]){
        translate([0,0,z]){chamferHole(24,1);}    
        for(x = [-bearingPitch/2,bearingPitch/2]){    
            translate([x,0,z]) {
                cylinder(d=bearingDia,bearingDepth*2,center = true);
                cylinder(d=cboreDia,cboreDepth*2,center = true);                
                chamferHole(cboreDia,1);
                }
            }}
    cylinder(d=24, h=cZ+1, center=true);
    
    translate([0,0,-cZ/2]){chamferHole(24,1);}
}
/*
for(z = [-cZ/2,cZ/2])
    {
    for(x = [-bearingPitch/2,bearingPitch/2]){ 
        translate([x,0,z]) {chamferHole(30,3);}
    }
}
*/

//for(x = [120,-120,0])
//{
    
//}
