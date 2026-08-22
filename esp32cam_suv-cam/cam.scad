cam_hindge();

module cam_hindge() {
     difference() {
        union() {
            hull() {
                translate([-14/2,0,0]) cube([14,10,2]);
                translate([-7,5,7]) rotate([0,90,0]) cylinder(14,8/2,8/2);
                translate([0,15,0]) cylinder(2,7,7);
            }
        }
        translate([-10,5,7]) rotate([0,90,0]) cylinder(20,1.7,1.7,$fn=20);
        translate([-10.4/2,-2,2])cube([10.4,30,50]);
        translate([0,15,-2]) cylinder(10,1.7,1.7,$fn=20);
    }   
}

module cam_top() {
   difference() {
       linear_extrude(2) hull() {
            translate([16.5/2+3,0,0])circle(5);
            translate([-16.5/2-3,0,0])circle(5);
            translate([5,3.75,0]) circle(2);
            translate([-5,3.75,0]) circle(2);
            translate([16.5/2,-3,0]) circle(2);
            translate([-16.5/2,-3,0]) circle(2);
        }
        translate([16.5/2+2+1+1,0,-6]) cylinder(10,1.7,1.7,$fn=20);
        translate([-(16.5/2+2+1+1),0,-6]) cylinder(10,1.7,1.7,$fn=20);
        translate([-14/2,-2,-5]) cube([14,2,10]);
    }
    difference() {
        hull() {
            translate([-10/2,0,0]) cube([10,10,2]);
            translate([-5,5,6]) rotate([0,90,0]) cylinder(10,8/2,8/2);
        }
        translate([-6,5,6]) rotate([0,90,0]) cylinder(12,5/2,5/2);
    }
}


module cam_bottom() {
    difference() {
        linear_extrude(21+2) hull() {
            translate([16.5/2+3,0,0])circle(5);
            translate([-16.5/2-3,0,0])circle(5);
            translate([5,3.75,0]) circle(2);
            translate([-5,3.75,0]) circle(2);
            translate([16.5/2,-3,0]) circle(2);
            translate([-16.5/2,-3,0]) circle(2);
        }
        translate([-16.7/2,-2,2]) cube([16.7,20,24]);
        translate([-13/2,-4,5])cube([13,20,24]);
        translate([-7/2,-2-3.5-5,5+5])cube([7,20,24]);
        
        translate([5,3.75,-5]) cylinder(10, 1.7/2, 1.6/2, $fn=20);
        translate([-5,3.75,-5]) cylinder(10, 1.7/2, 1.6/2, $fn=20);
        
        #translate([16.5/2+2+1+1,0,21-6]) cylinder(10, 5/2, 5/2);
        #translate([-(16.5/2+2+1+1),0,21-6]) cylinder(10, 5/2, 5/2);
    }
}