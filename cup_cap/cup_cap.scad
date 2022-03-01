difference(){
    union(){
        cube([29, 76, 10], true);
        cylinder(h=10, r1=38, r2=38, center=true, $fn=100);
    }
    translate([0,0,2]) cylinder(h=10, r1=35, r2=35, center=true, $fn=100);
    translate([-30,0,2]) cube([50, 8, 10], true);
    translate([0,-49,0]) cube([25,25,20], true);
    translate([0,49,0]) cube([25,25,20], true);
}
