

module chamferedCube(x=10, y=10, z=10, chamfer=1)
{
    c=sin(45);

    minkowski()
    {
        cube([x-c*2,y-c*2,z-c*2],true);
        polyhedron([[c,0,0],[0,0,c],[0,c,0],[0,0,-c],[0,-c,0],[-c,0,0]],
        [[0,1,2], [0,2,3],[0,3,4],[0,4,1],[5,2,1], [5,3,2],[5,4,3],[5,1,4],]);
        //cube([10,10,10],true);
    }
}

module radCube(x=10, y=10, z=10, rad=1)
{
    minkowski()
    {
        cube([x-rad*2,y-rad*2,z-rad*2],true);
        sphere(r=rad);
        //cube([10,10,10],true);
    }
}

module radCylinder(d=5,h=50,r=1)
{
    minkowski()
    {
        cylinder(h,d-r*2,true);
        sphere(r=1);
        //cube([10,10,10],true);
    }
}

module hex(af=10)
{
    r= af/2/cos(30);
    regular_polygon(order=6,r=r);
 }

 module regular_polygon(order = 4, r=1){
     angles=[ for (i = [0:order-1]) i*(360/order) ];
     coords=[ for (th=angles) [r*cos(th), r*sin(th)] ];
     polygon(coords);
 }

module chamferHole(d=10, chamfer=1)
{
    
    c=chamfer*sin(45);
    rotate_extrude($fn=200) polygon(points=[[0,c],[d/2,c],[d/2+c,0],[d/2,-c],[0,-c]]);
}

$fn=100;
//radCylinder();
//hex();
//sphere(r=rad,$fa=10);
//chamferedCube();
//++radiusedCube();
//chamferHole(7,3);
