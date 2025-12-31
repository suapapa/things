//disk_bottom(25, 25, 5, t1=0.5, t2=2);
//disk_top(25, 25, 5, t1=0.5, t2=2);

module disk_bottom(cr, r, h, t1=1, t2=3) {
    difference(){
        union() {
            translate([0,0,-h/2]) cylinder(h, cr, cr, $fn=100);
            for (i = [0:45/2:365]) {
                rotate([0,0,i])
                    hull() {
                        translate([r*0.25,0,h*0.5]) sphere(t1,$fn=10);
                        translate([r*0.75,0,h*0.5]) sphere(t2,$fn=10);
                    }
            }
        }
        cylinder(h=20, r=1.5+0.1, center=true, $fn=20);
        translate([0,0,-3]) cylinder(h=3, r=3+0.1, $fn=6);
    }
}

module disk_top(cr, r, h, t1=1, t2=3) {
    rotate([180,0,0])
    translate([0,0,-h/2])
    difference() {
        translate([0,0,0]) cylinder(h, cr, cr, $fn=100);
        union() {
            translate([0,0,-h/2]) cylinder(h, cr+1, cr+1, $fn=100);
            for (i = [0:45/2:365]) {
                rotate([0,0,i])
                    hull() {
                        translate([r*0.25,0,h*0.5]) sphere(t1,$fn=10);
                        translate([r*0.75,0,h*0.5]) sphere(t2,$fn=10);
                    }
            }
        }
        cylinder(h=20, r=1.5+0.1, $fn=20);
    }
}

