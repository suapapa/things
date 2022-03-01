use <gopro_mounts_mooncactus.scad>

union() {
    translate([27/2, 27/2, 17]) rotate([-90,0,0]) gopro_connector("triple");

    cubePoints = [
      [0, 0, 0],
      [27, 0, 0],
      [27, 27, 0],
      [0, 27, 0],
      [2.5, 2.5, 6.5],
      [2.5+22, 2.5, 6.5],
      [2.5+22, 2.5+22, 6.5],
      [2.5, 2.5+22, 6.5],
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