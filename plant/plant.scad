/*
intersection() {
    plant_mash();
    translate([0,0,-1]) cylinder(3,80/2,80/2);
}

difference() {
    cylinder(1,83/2,83/2);
    translate([0,0,-1])cylinder(3,79/2,79/2);
}


module plant_mash() {
    translate([-50,-50,0])
    for(i=[0:5:100]) {
        translate([i,0,0]) cube([2,100,1]);
        translate([0,i,0]) cube([100,2,1]);
    }
}
*/

plant_dish();

module plant_dish(r=87) {
    difference() {
        cylinder(15, (r+3)/2, (r+5+3)/2);
        translate([0,0,1.5])cylinder(15, r/2, (r+5)/2);
    }
}