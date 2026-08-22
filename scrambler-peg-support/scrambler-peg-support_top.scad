   union() {
difference() {
    union() {
        hull(){
            translate([0,0,10]) rotate([-90,0,0]) cylinder(35-8-2,3,3,$fn=8);
            translate([40,0,10]) rotate([-90,0,0]) cylinder(35-8-2,3,3,$fn=8);
            #translate([6,0,0]) rotate([-90,0,0]) cylinder(35-8-2,3,3,$fn=8); 
            #translate([40-6,0,0]) rotate([-90,0,0]) cylinder(35-8-2,3,3,$fn=8); 
            translate([40,0,22]) rotate([-90,0,0]) cylinder(35-8-2,3,3,$fn=8);
            translate([0,0,22]) rotate([-90,0,0]) cylinder(35-8-2,3,3,$fn=8);
        }
        translate([0,0,-3]) union() {
            translate([-6,0,10]) cube([52,2,25-10]);
            translate([-6,3+5-1,10]) cube([52,3,25-10]);
            translate([-6,3+5+8-1,10]) cube([52,3,25-10]);
            translate([-6,3+5+8+8-1,10]) cube([52,2,25-10]);
        }
    }

    hull() {
        translate([-0.1,-1,10]) cube([40.2,40,40]);
        #translate([6+1.5,-3,3]) rotate([-90,0,0]) cylinder(35-5,3,3,$fn=8); 
        #translate([40-6-1.5,-3,3]) rotate([-90,0,0]) cylinder(35-5,3,3,$fn=8); 

    }
}
    translate([10,0,-0.5]) cube([20,15,2.5]);
}
