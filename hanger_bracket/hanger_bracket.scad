


//zip_tie(100);
difference() {
    translate([0,0,-20.5/2]) linear_extrude(20.5)
        translate([10,-10,0]) polygon([[55,0], [0,-55], [-10,-55], [-10,10], [55,10]]);
    rotate([90,0,0]) cylinder(2000, 16.5/2, 16.5/2, center=true);
    #translate([0,-27,0]) rotate([90,0,0]) ziptie(16.5/2+2);
    translate([0,-50,0]) rotate([90,0,0]) ziptie(16.5/2+2);   
    rotate([0,90,0]) cylinder(2000, 19.5/2, 19.5/2, center=true);
    translate([20,0,0]) rotate([0,90,0]) ziptie(19.5/2+2);
    translate([50,0,0]) rotate([0,90,0]) ziptie(19.5/2+2);   

    // translate([50,-50,0]) cylinder(50, 35, 35, center=true);
}


module ziptie(in) {
    difference() {
        cylinder(5, in+2.5, in+2.5, $fn=100);
        translate([0,0,-1]) cylinder(5+2, in, in, $fn=100);
    }
} 