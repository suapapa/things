

bowl();
translate([0,86/2-5,0]) hook(l=95);

module hook(l=100) {
    rotate([-90,0,0]) linear_extrude(l) translate([-2.5,-5,0]) square(5);
    translate([0,l,0]) linear_extrude(40) square(5, center=true);
    translate([0,l-10,40-5]) rotate([-90,0,0]) linear_extrude(10) translate([-2.5,-5,0]) square(5);
}

module bowl() {
    difference() {
        cylinder(30, 86/2, 86/2);
        translate([0,0,3]) cylinder(30-3-3,86/2-3, 86/2-3);
        translate([-50,0,5]) cube([100,100,30]);
        
        for(r = [-30:15:30])
            rotate([0,0,r]) translate([-2,-100,3]) cube([4,100,30-3-3]);
    }
}
