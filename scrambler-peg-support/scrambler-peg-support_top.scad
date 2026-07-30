   union() {
difference() {
 union() {
hull(){
rotate([-90,0,0]) cylinder(35,3,3,$fn=8);
translate([40,0,0]) rotate([-90,0,0]) cylinder(35,3,3,$fn=8);
translate([40,0,25]) rotate([-90,0,0]) cylinder(35,3,3,$fn=8);
translate([0,0,25]) rotate([-90,0,0]) cylinder(35,3,3,$fn=8);
}
translate([0,0,-3]) union() {
translate([-6,0,0]) cube([52,3,25]);
translate([-6,3+5,0]) cube([52,3,25]);
translate([-6,3+5+8,0]) cube([52,3,25]);
translate([-6,3+5+8+8,0]) cube([52,3,25]);
translate([-6,3+5+8+8+8,0]) cube([52,3,25]);
}
}

translate([-0.25,-1,0]) cube([40.5,40,40]);
}
translate([10,0,-0.5]) cube([20,15,2.5]);
}
