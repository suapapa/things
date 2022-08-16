union() {
    
    difference() {
        cube([20, 30, 2]);
        // bolts
        translate([10, 5, -5]) cylinder(10, 1.5, 1.5, $fn=100);
        translate([10, 15, -5]) cylinder(10, 1.5, 1.5, $fn=100);
        translate([10, 25, -5]) cylinder(10, 1.5, 1.5, $fn=100);
    }

    translate([2,0,0]) rotate([0,-90,0]) difference() {
        cube([20, 30, 2]);
        // bolts
        translate([10, 5, -5]) cylinder(10, 1.5, 1.5, $fn=100);
        translate([10, 15, -5]) cylinder(10, 1.5, 1.5, $fn=100);
        translate([10, 25, -5]) cylinder(10, 1.5, 1.5, $fn=100);
    }
}