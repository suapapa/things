$fn = 360;
difference() {
    union() {
        linear_extrude(height = 9) import("stand.dxf", layer = "hinge");
        linear_extrude(height = 4) import("stand.dxf", layer = "2nd");
        linear_extrude(height = 3) import("stand.dxf", layer = "1st");
    }
    translate([0, 0, -1])
        linear_extrude(height = 3) import("stand.dxf", layer = "space");
}