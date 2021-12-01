outer_width = 100;
inner_width = 75;
border_thickness = outer_width - inner_width;
anchor_diameter = 3;

module triangle(width, height) {
    polygon(points = [[0, -width/2], [0, width/2], [height, 0]]);
}

linear_extrude(3) difference(){
    square(outer_width, center = true);
    
    // The Triangles
    translate([-inner_width/2-border_thickness/4, 0, 0]) triangle(inner_width, inner_width/2);
    translate([0, -inner_width/2-border_thickness/4, 0]) rotate([0, 0, 90]) triangle(inner_width, inner_width/2);
    translate([inner_width/2+border_thickness/4, 0, 0]) rotate([0, 0, 180]) triangle(inner_width, inner_width/2);
    translate([0, inner_width/2+border_thickness/4, 0]) rotate([0, 0, 270]) triangle(inner_width, inner_width/2);
    
    // The Screwholes
    translate([-inner_width/2-border_thickness/4, -inner_width/2-border_thickness/4, 0]) circle(anchor_diameter);
    translate([inner_width/2+border_thickness/4, -inner_width/2-border_thickness/4, 0]) circle(anchor_diameter);
    translate([inner_width/2+border_thickness/4, inner_width/2+border_thickness/4, 0]) circle(anchor_diameter);
    translate([-inner_width/2-border_thickness/4, inner_width/2+border_thickness/4, 0]) circle(anchor_diameter);
}