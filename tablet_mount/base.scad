difference() {
    rotate([90,0,0])
        linear_extrude(20)
            polygon([[0,0],[30,0],[30-4,1.8],[4,1.8]]);
    translate([-2,-4+1,0.8,]) cube([35,2,10]);
    translate([-2,-8+1,0.8,]) cube([35,2,10]);
    translate([-2,-12+1,0.8,]) cube([35,2,10]);
    translate([-2,-16+1,0.8,]) cube([35,2,10]);
    translate([-2,-20+1,0.8,]) cube([35,2,10]);
}