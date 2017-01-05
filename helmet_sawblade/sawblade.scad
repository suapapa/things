$fn = 100;

translate([0, 0, 45]) rotate([-90, 0, 0]) {

intersection() {
translate([2.5, 0, 0]) rotate([-90, 180, 0])
        linear_extrude(height  =  50) import(file = "sawblade.dxf", layer = "front");
translate([-5, 0, 0]) rotate([90, 0, 90])
        linear_extrude(height  =  10)  import(file = "sawblade.dxf", layer = "1");
}

translate([10, 0, 0])
intersection() {
translate([2.5, 0, 0]) rotate([-90, 180, 0])
        linear_extrude(height  =  50) import(file = "sawblade.dxf", layer = "front");
translate([-5, 0, 0]) rotate([90, 0, 90])
        linear_extrude(height  =  10)  import(file = "sawblade.dxf", layer = "2");
}

translate([-10, 0, 0])
intersection() {
translate([2.5, 0, 0]) rotate([-90, 180, 0])
        linear_extrude(height  =  50) import(file = "sawblade.dxf", layer = "front");
translate([-5, 0, 0]) rotate([90, 0, 90])
        linear_extrude(height  =  10)  import(file = "sawblade.dxf", layer = "3");
}

translate([20, 0, 0])
intersection() {
translate([2.5, 0, 0]) rotate([-90, 180, 0])
        linear_extrude(height  =  50) import(file = "sawblade.dxf", layer = "front");
translate([-5, 0, 0]) rotate([90, 0, 90])
        linear_extrude(height  =  10)  import(file = "sawblade.dxf", layer = "4");
}

translate([-20, 0, 0])
intersection() {
translate([2.5, 0, 0]) rotate([-90, 180, 0])
        linear_extrude(height  =  50) import(file = "sawblade.dxf", layer = "front");
translate([-5, 0, 0]) rotate([90, 0, 90])
        linear_extrude(height  =  10)  import(file = "sawblade.dxf", layer = "5");
}

translate([30, 0, 0])
intersection() {
translate([2.5, 0, 0]) rotate([-90, 180, 0])
        linear_extrude(height  =  50) import(file = "sawblade.dxf", layer = "front");
translate([-5, 0, 0]) rotate([90, 0, 90])
        linear_extrude(height  =  10)  import(file = "sawblade.dxf", layer = "6");
}

translate([-30, 0, 0])
intersection() {
translate([2.5, 0, 0]) rotate([-90, 180, 0])
        linear_extrude(height  =  50) import(file = "sawblade.dxf", layer = "front");
translate([-5, 0, 0]) rotate([90, 0, 90])
        linear_extrude(height  =  10)  import(file = "sawblade.dxf", layer = "7");
}

}