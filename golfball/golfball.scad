
dia=42.7;
samples = 360;
sphere(d=10);


difference(){
    sphere(d=dia,$fn=32);
 
 phi = 180 * (3 - sqrt(5));  //golden angle
    for(i = [1:samples]){
        y = 1 - (i /(samples - 1)) * 2;  // y goes from 1 to -1
        radius= sqrt(1 - y * y);  // radius at y
        theta = phi * i ; // golden angle increment
        x = cos(theta) * radius;
        z = sin(theta) * radius;
        if(is_num(x) && is_num(y) && is_num(z) && (abs(y)< 0.99))
        { 
        translate([x*dia/2,y*dia/2,z*dia/2]){sphere(d=4,$fn=16);}
        }
    }
}


