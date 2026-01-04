// 1. 전체 외곽 사이즈 설정
width = 50+10;  // 가로
depth = 50;  // 세로(깊이)
height = 40; // 높이
wall = 10;    // 벽 두께

difference() {
    // 가장 바깥쪽 큰 직육면체
    difference() {
        cube([width, depth, height]);
        translate([5, 5, -8])
            cube([width-10, depth, height]);
        screw(15+(25/2), 10);
        //screw(15+25, 10);
        screw(15, 10+12.5);
        screw(15+25, 10+12.5);
    }
}

module screw(y, z) {
    translate([0,y,z])
        union() {
            translate([-6,0,0]) rotate([0,90,0]) cylinder(20, 2, 2, $fn=10);
            translate([6,0,0]) rotate([0,90,0]) cylinder(80, 4, 4, $fn=10);
        }
}
    