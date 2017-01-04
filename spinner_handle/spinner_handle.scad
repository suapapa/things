$fn=60;

translate([-8,0,0])
    rotate_extrude()
        import(file = "spinner_handle.dxf", layer = "f");

translate([8,0,0])
    rotate_extrude()
        import(file = "spinner_handle.dxf", layer = "m");
