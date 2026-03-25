pipe_r=(28.5+0.2)/2;

difference() {
    union() {
        translate([-240/2,-3,0]) cube([240,100+20+3,3]);
        cylinder(50, pipe_r+8, pipe_r+8);
        translate([-pipe_r-6,-20,0]) cube([(pipe_r+6)*2,20,50]);
        
        pillar(240/2, 100+20-3, 1.5);
        pillar(-240/2+6, 100+20-3, 1.5);
        pillar(0, 100+20-3, 1.5);
        pillar(240/2, 0, 1.5);
        pillar(-240/2+6, 0, 1.5);
    }
    
    hull(){
        translate([0,0,-1]) cylinder(50+2, pipe_r, pipe_r);
        translate([0,-50,-1]) cylinder(50+2, pipe_r, pipe_r);
    }
    
    translate([0,0,5]) donut(pipe_r+3, pipe_r+6, 4);
    //translate([0,0,25]) donut(pipe_r+3, pipe_r+6, 4);
    translate([0,0,40]) donut(pipe_r+3, pipe_r+6, 4);
    
    translate([-pipe_r-7,-50-10,-1]) cube([(pipe_r+7)*2,50,52]);    
}

module donut(in, out, h) {
    difference(){
        cylinder(h, out, out);
        translate([0,0,-2]) cylinder(h+2, in, in);
    }
}

module pillar(x,y,z) {
    hull() {
        cylinder(50, 3, 3);
        translate([x-3,y,z+3/2]) sphere(3);
    }
}