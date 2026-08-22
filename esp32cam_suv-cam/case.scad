difference() {
    union() {
        difference() {
            union() {
                cube([28+3,40+1.5,28+3]);
                hull() {
                    translate([(28+3)/2,40+1.5+2.5,28+3-5-1.5-5-1]) cylinder(6,5,5);
                    translate([(28+3)/2-5,40+1.5+2.5-4,28+3-5-1.5-5-1]) cube([10,3,6]);
                }
            }
            translate([(28+3-28)/2,-1.5,28+3-8-1.5]) cube([28,40+1.5,8]);
            translate([(28+3-18)/2,5,28]) cube([18,30,20]);
            translate([1.5,-1.5,1.5])cube([5,40+1.5,28]);
            translate([28+3-5-1.5,-1.5,1.5])cube([5,40+1.5,28]);
            translate([(28+3-17)/2,20+15,-1.5])cube([17,50+1.5,25-3]);
            
            translate([1.5,-0.5-20-1.5+15,1.5]) cube([28,40+1,28]);
        }
        

        
        translate([(28+3)/2,0,1.5]) rotate([-90,0,0]) hull() {
            translate([0,5,0]) cylinder(5,5,5);
            translate([-5,0,0]) cube([10,1,5]);
        }
        translate([28+1.5,0,28+3-5]) rotate([-90,-90,0]) hull() {
            translate([0,5,0]) cylinder(5,5,5);
            translate([-5,0,0]) cube([10,1,5]);
        }
        translate([1.5,0,28+3-5]) rotate([-90,90,0]) hull() {
            translate([0,5,0]) cylinder(5,5,5);
            translate([-5,0,0]) cube([10,1,5]);
        }
    }

    translate([(28+3-25)/2,13,28+3-5-1.5]) cube([25,45.5,3]);
    translate([(28+3)/2,40+1.5+2.5,28.3-5-1.5-5]) cylinder(8,5/2,5/2);
    translate([(28+3)/2,0-0.5,1.5]) rotate([-90,0,0]) hull() {
        translate([0,5,0]) cylinder(5,5/2,5/2);
    }
    translate([28+1.5,0-0.5,28+3-5]) rotate([-90,-90,0]) hull() {
        translate([0,5,0]) cylinder(5,5/2,5/2);
    }
    translate([1.5,0-0.5,28+3-5]) rotate([-90,90,0]) hull() {
        translate([0,5,0]) cylinder(5,5/2,5/2);
    }
    
    translate([-2,5,5]) rotate([0,90,0]) cylinder(5, 1.6, 1.6, $fn=20);
    translate([-2,5,5+(2.54*2)]) rotate([0,90,0]) cylinder(5, 1.6, 1.6, $fn=20);
}