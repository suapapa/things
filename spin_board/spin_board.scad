b_o=22; // 베어링 외경
b_i=8; // 베어링 내경
b_h=7; // 베어링 두께


//top();
bottom();

module top() {
    difference() {
        cylinder(h=6+2.5, r=200/2);

        translate([0,0,2.5]) cylinder(h=6+2.5, r=20/2+0.1, $fn=100);
        translate([0,0,2.5+0.5]) cylinder(h=6+2.5, r=22/2+0.1, $fn=100);
    }
}

module bottom() {
    cylinder(h=2.5, r=150/2);
    cylinder(h=7+2.5, r=8/2);
    #cylinder(h=2.5+1, r=10/2);
}