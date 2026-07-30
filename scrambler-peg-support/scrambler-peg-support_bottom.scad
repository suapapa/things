difference() {
    union() {
        translate([-20,-20,0])cube([40,40,20]);
        rotate([90,0,0]) cylinder(60,32/2,27/2);
        translate([-10,-2,0]) cube([20,4,24]);
                translate([-10,-14,0]) cube([20,4,24]);
                translate([-10,+10,0]) cube([20,4,24]);
                translate([-10,-26,0]) cube([20,4,17]);
                translate([-10,-38,0]) cube([20,4,17]);
                translate([-10,-50,0]) cube([20,4,17]);
    }
    rotate([90,0,0]) cylinder(62,28/2,23/2);
    translate([-50/2,-7/2,-15]) cube([50,7,30]);
    translate([-37/2,-37/2+4,-4]) cube([37,37,22]);
    translate([-100,-100,-200])cube(200);
}