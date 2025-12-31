pipe_r = 22.2/2;

difference(){
    difference() {
        rotate([0,0,0]) pipe();
        translate([-10,0,0]) cube([10,35+2,1], center=true);
        translate([2,0,22]) rotate([90,0,0]) cylinder(h=37,r=8,center=true);
        #translate([0,0-10,23]) rotate([0,90,0]) cylinder(h=60, r=4, center=true, $fn=40);
    }
}

module pipe() {
    //translate([0,35/2+4,0])
    difference(){
        hull(){
            translate([0,0,0]) rotate([90,0,0]) cylinder(h=35,r=pipe_r+2,center=true);
            translate([12,0,10]) cube([3,35,40], center=true);
        }
        translate([0,0-3,0]) rotate([90,0,0]) cylinder(h=60, r=pipe_r+0.1, center=true, $fn=40);
    }
}