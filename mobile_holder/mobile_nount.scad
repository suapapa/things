use <gopro_mounts_mooncactus.scad>

union() {
    translate([0, -21, 0]) gopro_connector("double");

    translate([0, 0, 1.75]) horn(11, 2, 2);
    translate([0, 0, -1.75]) horn(11, 2, 2);
}

module horn(w,t,di) {
   translate([0, 0, -t/2])
    difference() {
      hull() {
         cylinder(d=w,h=t);
         translate([-w/2,-(w/2+5),0]) cube([w,.001,t]);
      }
      translate([0,0,-0.5]) cylinder(t+1, di, di, $fn=20);
   }
}