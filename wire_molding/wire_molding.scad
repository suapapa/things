or=14.7/2;
oh=10.5-or-1;

ir=11.8/2;
ih=7.4-ir+2.4-1;

//molding_y90(or=or,oh=oh,ir=ir,ih=ih,l=10);
molding_z90(or=or,oh=oh,ir=ir,ih=ih,l=10);

module molding_z90(or,oh,ir,ih,l) {
    difference() {
        z90(r=or+1.5,h=oh+1.5,l=l);
        translate([1,1,0]) z90(r=or+0.1,h=oh+2+0.1,l=l+1);
        //translate([0,0,-1]) y90(r=ir,h=ih+1,l=l+0.1,d=or+1-ir);
    }
}

module molding_y90(or,oh,ir,ih,l) {
    difference() {
        y90(r=or+1.5,h=oh+1,l=l);
        translate([0,0,-1]) y90(r=or+0.1,h=oh+2+0.1,l=l+1,d=or+1.5-or-0.1 );
        //translate([0,0,-1]) y90(r=ir,h=ih+1,l=l+0.1,d=or+1-ir);
    }
}

eps=0.1;

module z90(r, h, l=10) {
    rotate_extrude(angle=90)
        hole(r=r,h=h,rot=[0,0,90]);
    
    translate([0,-eps,0]) rotate([-90,0,0]) linear_extrude(l+eps) hole(r=r,h=h,rot=[0,0,90]);
    translate([-eps,0,0]) rotate([90,0,90]) linear_extrude(l+eps) hole(r=r,h=h,rot=[0,0,90]);
}

module y90(r, h, l=10, d=0) {
    rotate_extrude(angle=90) 
        translate([r+d,0,0]) hole(r=r,h=h,rot=[0,0,0]);
    
    translate([d,eps,0]) rotate([-90,180,180]) linear_extrude(l+eps) translate([r,0,0]) hole(r=r,h=h,rot=[0,0,0]);
    translate([eps,d,0]) rotate([90,0,-90]) linear_extrude(l+eps) translate([-r,0,0]) hole(r=r,h=h,rot=[0,0,0]);
}

module hole(r=5, h=3, rot=[0,0,0]) {
    rotate(rot) union() {
        translate([0,h,0]) difference() {
            circle(r);
            translate([0,-(2*r+2)/2,0]) square(2*r+2, center=true);
        }

        translate([0,(h+eps)/2,0]) square([r*2,h+eps],center=true);
    }
}