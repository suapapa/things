difference() {
    union() {
        cube([28+3,2.5,28+3]);
        translate([(28+3)/2,0,1.5]) rotate([-90,0,0]) hull() {
            translate([0,5,0]) cylinder(2.5,5,5);
            translate([-5,0,0]) cube([10,1,2.5]);
        }
        translate([28+1.5,0,28+3-5]) rotate([-90,-90,0]) hull() {
            translate([0,5,0]) cylinder(2.5,5,5);
            translate([-5,0,0]) cube([10,1,2.5]);
        }
        translate([1.5,0,28+3-5]) rotate([-90,90,0]) hull() {
            translate([0,5,0]) cylinder(2.5,5,5);
            translate([-5,0,0]) cube([10,1,2.5]);
        }
        
        //door_t=41+2.5+1;
        //translate([0,0,31-0.8]) cube([31,door_t,0.8]);
        //translate([0,41+2.5,31-20]) cube([31,1,20]);
        
        translate([31/2,0.5,18]) rotate([90,0,0]) cylinder(3, 8.2/2, 8.2/2,$fn=6);
        translate([31/2,0.5,10]) rotate([90,0,0]) cylinder(3, 8.2/2, 8.2/2,$fn=6);
        
    }
    
    translate([(28+3)/2,-1,1.5]) rotate([-90,0,0]) hull() {
        translate([0,5,0]) cylinder(5.5,1.7,1.7,$fn=20);
    }
    translate([28+1.5,-1,28+3-5]) rotate([-90,-90,0]) hull() {
        translate([0,5,0]) cylinder(5.5,1.7,1.7,$fn=20);
    }
    translate([1.5,-1,28+3-5]) rotate([-90,90,0]) hull() {
        translate([0,5,0]) cylinder(5.5,1.7,1.7,$fn=20);
    }
    
    translate([(28+3)/2,1,1.5]) rotate([-90,0,0]) hull() {
        translate([0,5,0]) cylinder(5.5,4,4,$fn=20);
    }
    translate([28+1.5,1,28+3-5]) rotate([-90,-90,0]) hull() {
        translate([0,5,0]) cylinder(5.5,4,4,$fn=20);
    }
    translate([1.5,1,28+3-5]) rotate([-90,90,0]) hull() {
        translate([0,5,0]) cylinder(5.5,4,4,$fn=20);
    }
    translate([31/2,0,18]) rotate([90,0,0]) cylinder(3, 6.2/2, 6.2/2,$fn=6);
    #translate([31/2,3,18]) rotate([90,0,0]) cylinder(10, 3.2/2, 3.2/2,$fn=20);

    translate([31/2,0,10]) rotate([90,0,0]) cylinder(3, 6.2/2, 6.2/2,$fn=6);
    #translate([31/2,3,10]) rotate([90,0,0]) cylinder(10, 3.2/2, 3.2/2,$fn=20);

    translate([31/2,1,18]) rotate([-90,0,0]) cylinder(10, 6/2, 6/2,$fn=20);
    #translate([31/2,1,10]) rotate([-90,0,0]) cylinder(10, 6/2, 6/2,$fn=20);
    
    // d=(31-16)/2;
    // mags(d);
    // mags(d+8);
    // mags(d+16);
    
    #translate([(28+3-25)/2,-1,25-2]) cube([25,100,10]);
}



module mags(x) {
    mag(x,8);
    mag(x,8+8);
    // mag(x,8+8+8);
    // mag(x,5+5+5+5);
    // mag(x,5+5+5+5+5);
}

module mag(x,z) {
    translate([x,2,z-3]) rotate([90,0,0]) cylinder(2.5,6.2/2,6.2/2,$fn=20);
}