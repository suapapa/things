difference() {
    linear_extrude(height=10)
        polygon(points=[[-25,0],[+25,0],[25,10],[5,70],[-5,70],[-25,10]]);
    #rotate([-10, 0, 0]) translate([0, 10, 55])
        cube([100, 12, 100], center=true);
}