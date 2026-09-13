t=2;

difference() {
    union() {
        difference() {
            cube([60+2*t,120+2*t,2],center=true);
            //translate([0,0,t])cube([60,120,40+t],center=true);
        }

        translate([60/2,120/2,0]) cylinder(2,10/2,10/2,center=true,$fn=6);
        translate([-60/2,120/2,0]) cylinder(2,10/2,10/2,center=true,$fn=6);
        translate([60/2,-120/2,0]) cylinder(2,10/2,10/2,center=true,$fn=6);
        translate([-60/2,-120/2,0]) cylinder(2,10/2,10/2,center=true,$fn=6);
    }

    translate([60/2,120/2,-1]) cylinder(10,3.2/2,3.2/2,center=true,$fn=16);
    translate([-60/2,120/2,-1]) cylinder(10,3.2/2,3.2/2,center=true,$fn=16);
    translate([60/2,-120/2,-1]) cylinder(10,3.2/2,3.2/2,center=true,$fn=16);
    translate([-60/2,-120/2,-1]) cylinder(10,3.2/2,3.2/2,center=true,$fn=16);
    
    for(i=[0:10:100/2]) {
        translate([0,i,0]) cube([50,2,10], center=true);
        translate([0,-i,0]) cube([50,2,10], center=true);
    }
    
    // translate([15,60,0])rotate([90,0,0])cylinder(20,6/2,6/2,center=true);
    // translate([-15,60,0])rotate([90,0,0])cylinder(20,6/2,6/2,center=true);
}
