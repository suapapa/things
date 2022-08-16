module nut() {
    rotate([0,0,90]) linear_extrude(10) circle((2.5+0.2)/cos(180/6), $fn=6);
    //rotate([0,0,90]) linear_extrude(10) circle(3, $fn=6);
}

module hole(d, a) {
    r = (d + a)/2;
    cylinder(h=10, r1=r, r2=r, center=false, $fn=360);
}

module pillar() {
    difference() {
        translate([-7, -10, 0]) cube([10+4, 27+27+10+5, 13]);
        translate([-8, -5, 5]) cube([10+6, 100, 20]);
        translate([-5, -7, 2]) cube([10, 100, 30]);
        translate([0, 0, -1]) hole(3.5, 0.1);
        translate([0, 27, -1]) hole(3.5, 0.1);
        translate([0, 27+27, -1]) hole(3.5, 0.1);
        
        translate([0,-11,10]) rotate([-90,180,0]) union() {
            hole(3, 0.1);
            translate([-(3.1/2),0,0]) cube([3+0.1,10,10]);
        }
        translate([0,-8.5,10]) rotate([-90,180,0]) union() {
            nut();
            translate([-(2.5+0.2),0,0]) cube([5+0.4,10,10]);
        }
    }
}

module dual_pillar() {
    union() {
        pillar();
        translate([60,0,0]) pillar();
        
        translate([5,-2.5,0]) cube([50,5,3]);
        translate([5, 27-2.5,0]) cube([50,5,3]);
    }
}

pillar();