
middle();

module middle() {
    difference() {
        translate([0,9.5/2,0]) union(){
            cube([15,9.5,5],center=true);
            translate([0,0,0]) cube([10,7.5,20],center=true);
        }
        translate([0,3,0]) cube([7,8,25],center=true);
    }
}

module stopper() {
    difference() {
        translate([0,9.5/2,0]) union(){
            cube([15,9.5,5],center=true);
            translate([0,0,5]) cube([10,7.5,8],center=true);
        }
        translate([0,3,5]) cube([7,8,12],center=true);
        translate([-1,0,0]) hull(){
            cylinder(h=10, r=2.2, center=true, $fn=10);
            translate([0,5,0]) cylinder(h=10, r=2.2, center=true, $fn=10);
        }
    }
}
