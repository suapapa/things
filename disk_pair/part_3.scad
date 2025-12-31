pipe_r = 22.2/2;

difference(){
    union() {
        rotate([45,0,0]) pipe();
        rotate([90+45,0,0]) pipe();
        translate([0,0,0]) cube([25,40,5],center=true);
    }
    #translate([0,0,-5]) cube([30,50,10],center=true);
}

module pipe() {
    translate([0,35/2+4,0])
    difference(){
        translate([0,0,0]) rotate([90,0,0]) cylinder(h=35,r=pipe_r+2,center=true);
        translate([0,0-3,0]) rotate([90,0,0]) cylinder(h=60, r=pipe_r+0.1, center=true, $fn=40);
        //translate([0,0-3,0]) rotate([90,0,0]) cylinder(h=60, r=6, center=true, $fn=40);
    }
}