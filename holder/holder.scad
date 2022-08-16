difference() {
    union() {
        cylinder(15, 10, 7, $fn=8);
        translate([0, -5, 0]) cube([15, 10, 5]);
    }
    translate([0, 0, 2]) cylinder(20, 4.25, 4.25, $fn=50);
    #translate([12, 10, 5]) rotate([90,0,0]) cylinder(20, 1.5, 1.5, $fn=6);
}