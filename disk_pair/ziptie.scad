module ziptie(in) {
    difference() {
        cylinder(5, in+2.5+0.2, in+2.5+0.2, $fn=100);
        translate([0,0,-1]) cylinder(5+2, in+0.5, in+0.5, $fn=100);
    }
} 