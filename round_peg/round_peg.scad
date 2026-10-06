// peg(60,65,20,8);
peg(25,30,15,8);

module peg(id,od,opn,t,opn_both=false) {
    difference() {
        cylinder(h=t+3,r=od/2);
        translate([0,0,t]) cylinder(h=t+2,r=id/2);
        if (opn_both == true) {
            translate([-opn/2,-od/2,t]) #cube([opn,od,t]);
        } else {
            translate([-opn/2,0,t]) #cube([opn,od,t]);
        }
    }
}