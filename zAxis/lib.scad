

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

module chamferHole(d=10, chamfer=1)
{
    
    c=chamfer*sin(45);
    rotate_extrude($fn=200) polygon(points=[[0,c],[d/2,c],[d/2+c,0],[d/2,-c],[0,-c]]);
}

//chamferHole(7,3);
