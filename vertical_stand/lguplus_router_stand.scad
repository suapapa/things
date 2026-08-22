//cube([33,200,100]);
hdd=33+0.2;
difference() {
    translate([-30,0,0]) hull() {
        linear_extrude(1) square([60,120]);
        translate([10,20,30]) linear_extrude(1) square([40,80]);
    }
    translate([-hdd/2,-10,3]) cube([hdd,200,100]);
}