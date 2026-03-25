small_out=13/2;
big_in_r=28.5/2;
big_out_r=23.5/2;

w=88;

difference() {
    cube([w+10, big_out_r*2+10, big_out_r*2+10],center=true);
    
    translate([-20,0,0]) pipe(small_out, w);
    pipe(big_in_r, w);
    translate([20,0,0]) pipe(big_out_r, w);
}

module pipe(r, w) {
    hull(){
        rotate([0,90,0]) cylinder(w, r, r, center=true, $fn=120);
        translate([0,0,50]) rotate([0,90,0]) cylinder(w, r, r, center=true, $fn=120);
    }
}