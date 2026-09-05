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
        
        for(y=[0:12:80/2]) {
            for(x=[0:12:80/2]) {
                translate([x,0,0-y]) rotate([90,0,0]) cylinder(50,3,3,center=true,$fn=4);
                translate([-x,0,-y]) rotate([90,0,0]) cylinder(50,3,3,center=true,$fn=4);
            }
        }
    }
    
}
