screwhole_diameter = 3.2;
$fn = 100;

difference() {
    cube([25, 10, 12]);
    translate([20, 5, -1]) cylinder(12, screwhole_diameter/2, screwhole_diameter/2);
    translate([4, 5, -1]) cylinder(12, screwhole_diameter/2, screwhole_diameter/2);
    
    translate([-2, -1, 3]) cube([10, 12, 10]);
    translate([16, -1, 3]) cube([10, 12, 10]);
    translate([10.5, -1, 3]) cube([3, 12, 10]);
    
    translate([0, 5, 7.5]) rotate([0, 90, 0]) cylinder(20, screwhole_diameter/2, screwhole_diameter/2);
}