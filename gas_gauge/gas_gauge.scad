
difference() {
    union() {
        cube([60, 30, 2]);
        translate([15, 0, 0]) cube([30,30,10]);
    };
    translate([5, 3, 3]) cube([50, 8, 3]);
    translate([5, 19, 3]) cube([50, 8, 3]);
    
    // pipe
    translate([30, 15, 19]) rotate([0, 90, 90]) cylinder(40, 12.5, 12.5, true);
    
    // bolts
    translate([5, 10, -5]) cylinder(10, 1.5, 1.5, $fn=100);
    translate([5, 20, -5]) cylinder(10, 1.5, 1.5, $fn=100);
    translate([55, 10, -5]) cylinder(10, 1.5, 1.5, $fn=100);
    translate([55, 20, -5]) cylinder(10, 1.5, 1.5, $fn=100); 
}