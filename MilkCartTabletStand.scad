ridge_width = 3.5;
ridge_height = 10.4;

difference() {
union() {
  translate([-7.5,-8.5,0])
    cube([15,39,12]);
  difference() {
    translate([-3/2,11,12-2])
      rotate([-33,0,0])
        cube([3,15,70*0.75 + 2]);
    translate([-6/2,18+12,12-2])
      rotate([-15,0,0])
        cube([6,15,70 + 2]);
    }
  translate([-15/2,-5,ridge_height+1]) 
    rotate([-20,0,0])
      cube([15,3,7]);
}

// basic model
color("green") {
translate([-10,-(ridge_width+0.5)/2,-2])
 cube([20, ridge_width+0.5, ridge_height+2]);
rotate([0, 0, 90])
 translate([-10,-ridge_width/2,-2])
 cube([50, ridge_width, ridge_height+2]);
}

// fancy cutouts
color("red") {
  translate([15/4,ridge_width,-2])
    cube([15,50,ridge_height*2]);
  translate([-15 *1.25,ridge_width,-2])
    cube([15,50,ridge_height*2]);
  
  translate([-30/2,- 16 - ridge_width,-2])
    cube([30,15,ridge_height*3]);
}
}