x_f=15;
x_b=30;
h=50;
z=18;
t=1.8;
r=4;

module owall(t=2,x=50,y=18,r=3,fn=50) {
    linear_extrude(t)
    hull() {
        polygon(points = [[0,0],[x,0],[0,y]]);
        translate([x-r,y-r,0]) circle(r=r, $fn=fn);
    }
}

module cwall(t=2,x=50,y=10,r=3,fn=50) {
    linear_extrude(t)
    difference() {
        polygon(points = [[0,0],[x,0],[x,y],[0,y]]);
        translate([x,r+t])
            circle(r=r, $fn=fn);
        translate([x-r,r+t])
            square([20,20]);
    }
}

mirror([1,0,0])
difference() {
    union() {
        translate([0,0,7+t+0.2]) owall(t,50,18,r);
        owall(t,60,30,r);
        translate([0,1,0]) rotate([90,0,0]) owall(t,60,7+t+t+0.2,r);
        rotate([90,0,-90+180]) owall(t,30,7+t+t+0.2,r);
    }
}
