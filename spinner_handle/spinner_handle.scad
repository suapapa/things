$fn=60;

translate([-8,0,0])
    rotate_extrude()
        import(file = "spinner_handle_m.dxf");

translate([8,0,0])
    rotate_extrude()
        import(file = "spinner_handle_f.dxf");
