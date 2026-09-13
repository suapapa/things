oled_back();

module oled_back() {
    led_t=2;
    spt_t=4;
    difference() {
        hull() {
            cylinder(spt_t,6/2,6/2,$fn=30);
            translate([0,29,0]) cylinder(spt_t,6/2,6/2,$fn=30);
        }
        translate([0,0,-0.5])cylinder(spt_t+1,3/2,3/2);
        translate([0,29,-0.5]) cylinder(spt_t+1,3/2,3/2);
        
        translate([-2,-2,spt_t-led_t]) cube(29+4);
    }
}


module oled_front() {
    hw=33.8-3;
    hh=32-3;
    
    translate([-hw/2,0,0]) union() {
        cylinder(h=20, r=3.2/2, center=true, $fn=20);
        translate([hw, hh, 0]) cylinder(h=20, r=3.2/2, center=true, $fn=20);
        translate([hw, 0, 0]) cylinder(h=20, r=3.2/2, center=true, $fn=20);
        translate([0, hh, 0]) cylinder(h=20, r=3.2/2, center=true, $fn=20);
    }
    translate([-32/2,4,-10]) cube([32,17,20]);
}

module usb_c(){
    rotate([0,90,0]) union() {
        cube([13.5,5.5,20], center=true);
        cube([14,3.5,20], center=true);        
    }
}

module rotary_encoder() {
    rotate([0,90,0]) cylinder(h=20, r=7/2, center=true, $fn=20);
}

module shutter_jack() {
    rotate([0,90,0]) cylinder(h=20, r=7.2/2, center=true, $fn=20);
}

module switch() {
    rotate([0,90,0]) cylinder(h=20, r=6/2, center=true, $fn=20);
}

module pcb() {
    w=45;
    h=35;
    
    support(3,8);
    translate([w,h,0]) support(3,8);
    translate([0,h,0])support(3,8);
    translate([w,0,0])support(3,8);
}

module support(p,h) {
    difference() {
        cylinder(h=h, r=(p+3)/2);
        translate([0,0,-1]) cylinder(h=h+2, r=p/2);
    }
}