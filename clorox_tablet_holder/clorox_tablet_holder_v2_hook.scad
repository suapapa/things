rotate([90,90,0]) hook(l=100);

module hook(l=100) {
    rotate([-90,0,0]) linear_extrude(l) translate([-2.5,-5,0]) square(5);
    
    translate([0,l,0]) linear_extrude(20+3) square(5, center=true);
    translate([0,l-10-20,20+3-5]) rotate([-90,0,0]) linear_extrude(10+20) translate([-2.5,-5,0]) square(5);
    
    translate([0,0,5]) rotate([0,180,0]) linear_extrude(10+1+0.1) square(5, center=true);
    translate([0,0,-(5+1+0.1)]) rotate([-90,0,0]) linear_extrude(10) translate([-2.5,-5,0]) square(5);
}
