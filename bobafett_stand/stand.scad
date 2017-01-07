$fn = 360;

union()
    linear_extrude(height = 9) import("stand.dxf", layer = "hinge");
    linear_extrude(height = 4) import("stand.dxf", layer = "2nd");
    linear_extrude(height = 3) import("stand.dxf", layer = "1st");