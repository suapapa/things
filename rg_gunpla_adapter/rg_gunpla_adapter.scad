difference() {
    union(){
        cube([4, 5, 5], true);
        cube([5, 4, 5], true);
    }
    cylinder(10, 1.5, 1.5, true, $fn=100);
}