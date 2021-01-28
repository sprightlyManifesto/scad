//lizzies golf ball
$fn=100;
dia = 42.76;
dimpleDia = 5;
dimpleDepth = 1;
pitch = 16;

difference()
{
    sphere(d=dia);    
    for(a=[0:pitch]){for(b=[0:pitch]){for(c=[0:pitch]){
        rad = dia/2+dimpleDia/2-dimpleDepth;
        translate([rad,rad,rad]){sphere(d=dimpleDia);}
    }}}
}

