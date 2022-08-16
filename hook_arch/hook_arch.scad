difference(){
    linear_extrude(height = 14) {
        polygon(points=[[0,0],[12,0],[12,8],[0,8],[0,7],[1,6.5],[1,7],[11,7],[11,5],[1,5],[1,5.5],[0,5.5]]);
    }
    translate([-2,0,14]) rotate([0,90,0]) linear_extrude(height = 15) {
        polygon(points=[[0,0],[7,4],[14,0]]);
    }
    cube([15,3,20]);
}