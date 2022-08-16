module nut() {
    rotate([0,0,90]) linear_extrude(10) circle(2.6/cos(180/6), $fn=6);
}

module hole(d, a) {
    r = (d + a)/2;
    cylinder(h=10, r1=r, r2=r, center=false, $fn=360);
}

module pillar() {
    difference() {
        translate([-7, -10, 0]) cube([10+4, 33+10+5, 15]);
        translate([-8, -5, 5]) cube([10+6, 33+10+5, 20]);
        translate([-5, -7, 2]) cube([10, 33+20+5, 30]);
        translate([0, 0, -1]) hole(3.5, 0.1);
        translate([0, 33, -1]) hole(3.5, 0.1);
        
        translate([0,-11,10]) rotate([-90,0,0]) hole(3, 0.1);
        translate([0,-8.5,10]) rotate([-90,0,0]) nut();
    }
}

union() {
    pillar();
    translate([60,0,0]) pillar();
    
    translate([5,-2.5,0]) cube([50,5,3]);
    translate([5, 33-2.5,0]) cube([50,5,3]);
}