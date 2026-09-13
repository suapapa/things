difference(){
    hull(){
        cube([100,50,1]);
        translate([0,10,0]) cube([100,1,10]);
    }
    translate([5,5,-10]) cube([90,40,50]);
}