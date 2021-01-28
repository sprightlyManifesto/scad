include <../lib.scad>

$fn=100;
x = 6.9;
y = 4.7;
thin = 1.3;
thick = 2;



difference()
{
    union()
    {
        linear_extrude(61)
        {
        polygon([[-x/2,thin/2],[-x/2,-thin/2],[-thick/2,-thin/2],
        [-thick/2,-thin/2],[-thick/2,-y/2],[thick/2,-y/2],[thick/2,-thin/2],
        [x/2,-thin/2],[x/2,thin/2],[thick/2,thin/2],[thick/2,y/2],
        [-thick/2,y/2],[-thick/2,thin/2]
        ]);}
        translate([0,0,0]){
        rotate([180,0,0]){cylinder(d=11.5, h=5.5);
                }}
    }
    
    for(i = [0,180])
    {
            rotate([90,0,i])
                {
                    linear_extrude(4,center=true){
                    polygon([[10,32],[2.6,32],[2.6,49.5],[1.9,54.3],[2.75,54.3],
                    [2.75,57],[1.3,61.5],[10,61.5]]);}
                }
          
              rotate([90,0,i+90])
                {
                    linear_extrude(4,center=true){
                    polygon([[2.75,57],[0.8,61.5],[10,61.5]]);}
                }
    } 
}