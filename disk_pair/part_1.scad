include <disk_pair.scad>

pipe_r = 22.2/2;

union() {
    disk_bottom(25, 25, 5, t1=0.5, t2=2);

    translate([0,35,10-2.5]) difference(){
        union() {
            translate([0,3,0]) hull(){
                translate([0,5,3]) rotate([90,0,0]) cylinder(h=25,r=pipe_r+2,center=true);
                translate([0,2,-10+2.5]) cube([20,30,5],center=true);
            }
            translate([0,-5,-10+2.5]) cube([20,30,5],center=true);
        }
        translate([0,3+5+1,3]) rotate([90,0,0]) cylinder(h=25, r=pipe_r+0.1, center=true, $fn=40);
        translate([0,5,3]) {
            rotate([90,0,0]) cylinder(h=50, r=6, center=true, $fn=40);
            #translate([0,-20,0]) cube([2,60,30]);
        }
    }
}