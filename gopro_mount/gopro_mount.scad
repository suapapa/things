use <gopro_mounts_mooncactus.scad>

tw = 20;
bw = 27.5;
m = (bw-tw)/2;
h = 6.5;

union() {
    translate([27/2, 27/2, 19]) rotate([-90,0,0]) gopro_connector("triple");
    
    translate([-m/2,-m/2,6.5]) cube([bw+m,bw+m,3]);

    cubePoints = [
      [0, 0, 0],
      [bw, 0, 0],
      [bw, bw, 0],
      [0, bw, 0],
      [m, m, h],
      [m+tw, m, h],
      [m+tw, m+tw, h],
      [m, m+tw, h],
    ];
    cubeFaces = [
      [0,1,2,3],  // bottom
      [4,5,1,0],  // front
      [7,6,5,4],  // top
      [5,6,2,1],  // right
      [6,7,3,2],  // back
      [7,4,0,3]
    ]; // left
    polyhedron( cubePoints, cubeFaces );
}