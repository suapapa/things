t=2;

difference() {
    union() {
        difference() {
            cube([60+2*t,120+2*t,40+t],center=true);
            translate([0,0,t])cube([60,120,40+t],center=true);
        }

        translate([60/2,120/2,0]) cylinder(40+t,10/2,10/2,center=true,$fn=6);
        translate([-60/2,120/2,0]) cylinder(40+t,10/2,10/2,center=true,$fn=6);
        translate([60/2,-120/2,0]) cylinder(40+t,10/2,10/2,center=true,$fn=6);
        translate([-60/2,-120/2,0]) cylinder(40+t,10/2,10/2,center=true,$fn=6);
    }

    translate([60/2,120/2,40+t-5]) cylinder(40+t,4/2,4/2,center=true,$fn=16);
    translate([-60/2,120/2,40+t-5]) cylinder(40+t,4/2,4/2,center=true,$fn=16);
    translate([60/2,-120/2,40+t-5]) cylinder(40+t,4/2,4/2,center=true,$fn=16);
    translate([-60/2,-120/2,40+t-5]) cylinder(40+t,4/2,4/2,center=true,$fn=16);
    
    translate([15,60,0])rotate([90,0,0])cylinder(20,6/2,6/2,center=true);
    translate([-15,60,0])rotate([90,0,0])cylinder(20,6/2,6/2,center=true);
}
