include <disk_pair.scad>
include <ziptie.scad>

gas_pipe_r=37.5/2;

difference(){
    translate([0,gas_pipe_r/2+4,0]) cube([(gas_pipe_r+4)*2,gas_pipe_r+4,20],center=true);
    #cylinder(h=50, r=gas_pipe_r+0.2, center=true);
    translate([0,0,-2.5+5]) ziptie(gas_pipe_r+1);
    translate([0,0,-2.5-5]) ziptie(gas_pipe_r+1);
}

translate([0,gas_pipe_r+4+4,15])
    rotate([-90,0,0]) disk_top(25, 25, 5, t1=0.5, t2=2);