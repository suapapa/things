difference() {
    union() {
        translate([0, 0, 13/2]) cube([50,50,13],true);
        translate([0, 25/2, 40/2]) cube([20,25,40],true);
    }
    translate([0, -5, 5/2]) cube([40,70,10],true);
    translate([0, -4, 5]) cube([30,15,10], true);
    #translate([0, 23.5/2, 61.5/2+2]) rotate([90-15,0,0]) cylinder(h=23.5, r=61.5/2, $fn=100);
}