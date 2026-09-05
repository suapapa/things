

cube_bowl();

module cube_bowl() {
    difference(){
        cube([85,30,85], center=true);
        translate([0,0,2]) cube([85-2,30-2,85-2+2], center=true);
        for(i=[0:12:80/2]) {
            translate([i,0,0]) cube([5,25,100], center=true);
            translate([-i,0,0]) cube([5,25,100], center=true);
        }
        translate([0,15,50/2]) cube([5+0.2,10,15+0.2], center=true);
    }
}

// rotate([0,90,0]) hook(l=100);

module hook(l=100) {
    rotate([-90,0,0]) linear_extrude(l) translate([-2.5,-5,0]) square(5);
    translate([0,l,0]) linear_extrude(20) square(5, center=true);
    translate([0,l-10,20-5]) rotate([-90,0,0]) linear_extrude(10) translate([-2.5,-5,0]) square(5);

    translate([0,0,5]) rotate([0,180,0]) linear_extrude(10+1+0.2) square(5, center=true);
    translate([0,0,-(5+1+0.2)]) rotate([-90,0,0]) linear_extrude(10) translate([-2.5,-5,0]) square(5);
}