screwhole_diameter = 3.2;
$fn = 100;

difference() {
    cube([20, 5, 10]);
    translate([17.5, 2.5, -1]) cylinder(12, screwhole_diameter/2, screwhole_diameter/2);
    translate([2.5, 2.5, -1]) cylinder(12, screwhole_diameter/2, screwhole_diameter/2);
    
    translate([-2, -1, 3]) cube([7, 7, 8]);
    translate([15, -1, 3]) cube([7, 7, 8]);
    translate([8.5, -1, 3]) cube([3, 7, 8]);
    
    translate([0, 2.5, 7.5]) rotate([0, 90, 0]) cylinder(20, screwhole_diameter/2, screwhole_diameter/2);
}