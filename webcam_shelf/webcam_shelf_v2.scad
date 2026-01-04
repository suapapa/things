d=24;
t=14;
b=20;
h=23;
z=-(23-4);
y=2;

difference(){
    cube([50, d, 15]);
    translate([2, -5, 12]) cube([46, d+10, 5]);
    translate([-2, 0, 0])
        rotate([90, 0 ,90])
            #linear_extrude(height=54)
                polygon([[y, z], [y, z+h], [y+t, z+h], [y+b, z]]);
}

