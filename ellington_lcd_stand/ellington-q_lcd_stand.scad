difference() {
    linear_extrude(20) polygon([[0,0],[80,0],[30,10],[30,50]]);
    translate([10,10,-5]) rotate([0,0,-10]) cube([10,100,30]);
}