d=24;
t=17;
b=19;

difference(){
    cube([50, d, 15]);
    translate([2, -5, 12]) cube([46, d+10, 5]);
    translate([-2, 0, 0])
        rotate([90, 0 ,90])
            linear_extrude(height=54)
                polygon([[3, -2], [3, 6], [3+t, 6], [3+b, -2]]);
}

