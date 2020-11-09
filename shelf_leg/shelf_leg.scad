rotate([90,0,0])
difference() {
    cube([40,40,60], false);
    translate([3,3,55]) cube([50,50,35+5], false);
    translate([10,10,-5]) cube([50, 50,50+5], false);
    translate([25,25,0]) cylinder(r=2,h=100,$fs=0.1);
}

