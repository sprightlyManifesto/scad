H = 20;
B = 7;
P = 12;
wall = 3;
rad = 1;
W = wall -rad *2;

minkowski(){
    difference(){
        linear_extrude(100){
            polygon([[0,0],[0,H],[W,H],[W,B],[P,B],[P,H],[P+W,H],[P+W,B],
                    [2*P,B],[2*P,H],[2*P+W,H],[2*P+W,B],
                    [3*P,B],[3*P,H],[3*P+W,H],[3*P+W,B],
                    [4*P,B],[4*P,H],[4*P+W,H],[4*P+W,B],
                    [5*P,B],[5*P,H],[5*P+W,H],[5*P+W,B],
                    [6*P,B],[6*P,H],[6*P+W,H],[6*P+W,B],
                    [6*P+1,0]
                    ]);
            }
        translate([P/2+W/2,B,0]){scale([1,0.5,1])cylinder(h=102,d=P-rad);}
        translate([3*P/2+W/2,B,0]){scale([1,0.5,1])cylinder(h=102,d=P-rad);}
        translate([5*P/2+W/2,B,0]){scale([1,0.5,1])cylinder(h=102,d=P-rad);}
        translate([7*P/2+W/2,B,0]){scale([1,0.5,1])cylinder(h=102,d=P-rad);}
        translate([9*P/2+W/2,B,0]){scale([1,0.5,1])cylinder(h=102,d=P-rad);}
        translate([11*P/2+W/2,B,0]){scale([1,0.5,1])cylinder(h=102,d=P-rad);}
    }
    sphere(d=1,$fn=36);
}