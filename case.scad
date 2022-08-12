$fn = 100;

UART_on_main = true;
UART_on_dock = false;

module board() {
    color([.3, .7, .3]) {
        difference() {
            translate([0, 0, -1.5])
                cube([65, 40, 1.5]);
            union() {
                translate([3.5, 3.5, 0])
                    cylinder(h = 5, r = 1.5, center = true);
                translate([61.5, 3.5,0])
                    cylinder(h = 5, r = 1.5, center = true);
                translate([3.5, 36.5,0])
                    cylinder(h = 5, r = 1.5, center = true);
                translate([61.5, 36.5,0])
                    cylinder(h = 5, r = 1.5, center = true);
                }
            }
    }
    color([.7, .7, .7]) {
        // HDMI
        translate([55, 20 - 15 / 2, 0])
            cube([12, 15, 6.5]);
        
        // USB
        translate([-.5, 20 - 13.2 / 2, 0])
            cube([10, 13.2, 6.7]);
        
        if (UART_on_main) {
            // UART on main board
            translate([53, 29, 0]) {
                cube([2.5, 7.5, 30]);
            }
        }
        if (UART_on_dock) {
            // UART on dock
            translate([58 - 12.7, 0, -1]) {
                cube([7.62, 2.54, 30]);
            }
        }
    }
}

module top() {
    color([.3, .3, .3]) {
        // reset button
        translate([60, 7.4, 3])
            cube([4, 3, 10.5]);

        difference() {
            translate([-3, -3, 0])
                cube([71, 56, 14]);
            union() {
                translate([1, 1, -2])
                    cube([47.5, 48, 30]);
                
                translate([19.75, -4, 11.8])
                    cube([10, 8, 4]);

                // slit
                translate([-1, -2, 11.8])
                    cube([51.5, 54, 1.2]);
                
                // cover
                translate([-1, -1, 12])
                    cube([51.5, 52, 8]);
                
                translate([-1, -1, -10])
                    cube([66, 52, 20]);

                translate([52.5, -1, -1])
                    cube([13.5, 52, 13]);

                // HDMI
                translate([35, 19 - 15 / 2, -1])
                    cube([42, 17, 8.5]);
                // USB
                translate([-5, 19 - 13.2 / 2, -1])
                    cube([10, 15.2, 8.7]);
                if (UART_on_main) {
                    // UART on main board
                    translate([52.5, 28, -1]) {
                        cube([4, 9.5, 30]);
                    }
                }
                if (UART_on_dock) {
                    // UART on dock
                    translate([58.5 - 13.7, -.5, -1]) {
                        cube([8.62, 3.54, 30]);
                    }
                }
                
                // power cable
                translate([-5.0, 46, -1])
                    cube([20, 4, 3]);
                translate([0, 48, 2])
                    rotate([0, 90, 0])
                        cylinder(h = 20, r = 2, center = true);

                translate([64, 7, 10])
                    cube([.6, 27.6, 10]);
                translate([59.4, 7, 10])
                    cube([.6, 27.6, 10]);
                translate([59.4, 7, 10])
                    cube([5.2, .6, 10]);
            }
        }
        difference() {
            union() {
                translate([3.5, 3.5, 3])
                    cylinder(h = 6, r = 3.5, center = true);
                translate([61.5, 3.5, 5.5])
                    cylinder(h = 11, r = 3.5, center = true);
                translate([3.5, 36.5, 3])
                    cylinder(h = 6, r = 3.5, center = true);
                translate([61.5, 36.5, 5.5])
                    cylinder(h = 11, r = 3.5, center = true);
                
                translate([-1.5, 0, 0])
                    cube([5, 7, 6]);
                translate([61.5, 0, 0])
                    cube([5, 7, 11]);
                translate([-1.5, 33, 0])
                    cube([5, 7, 6]);
                translate([61.5, 33, 0])
                    cube([5, 7, 11]);

                translate([-1.5, 0, 0])
                    cube([2.5, 7, 10]);
                translate([-1.5, 33, 0])
                    cube([2.5, 7, 10]);

            }
            union() {
                translate([3.5, 3.5, 0])
                    cylinder(h = 25, r = 1.25, center = true);
                translate([61.5, 3.5,0])
                    cylinder(h = 25, r = 1.25, center = true);
                translate([3.5, 36.5,0])
                    cylinder(h = 25, r = 1.25, center = true);
                translate([61.5, 36.5,0])
                    cylinder(h = 25, r = 1.25, center = true);
            }
        }
    }
}

module bottom() {
    color([1, .5, 0]) {
        difference() {
            union() {
                difference() {
                    translate([-3, -3, -6.5])
                        cube([71, 56, 6.5]);                    
                    translate([-1, -1, -4.5])
                        cube([67, 52, 6.5]);                    
                }
                
                translate([3.5, 3.5, -4])
                    cylinder(h = 5, r = 5.5, center = true);
                translate([61.5, 3.5, -4])
                    cylinder(h = 5, r = 5.5, center = true);
                translate([3.5, 36.5, -4])
                    cylinder(h = 5, r = 5.5, center = true);
                translate([61.5, 36.5, -4])
                    cylinder(h = 5, r = 5.5, center = true);
            }
            union() {
                translate([3.5, 3.5, -5.5])
                    cylinder(h = 4, r = 3.5, center = true);
                translate([61.5, 3.5, -5.5])
                    cylinder(h = 4, r = 3.5, center = true);
                translate([3.5, 36.5, -5.5])
                    cylinder(h = 4, r = 3.5, center = true);
                translate([61.5, 36.5, -5.5])
                    cylinder(h = 4, r = 3.5, center = true);
                
                translate([3.5, 3.5, 0])
                    cylinder(h = 25, r = 1.75, center = true);
                translate([61.5, 3.5,0])
                    cylinder(h = 25, r = 1.75, center = true);
                translate([3.5, 36.5,0])
                    cylinder(h = 25, r = 1.75, center = true);
                translate([61.5, 36.5,0])
                    cylinder(h = 25, r = 1.75, center = true);
                
                translate([7, -1, -3.5])
                    cube([51, 14, 4]);
            }
        }
    }
}

module cover() {
    color([1, .5, 0]) {
        difference() {
            union() {
                translate([-.65, -.65, 12.1])
                    cube([50.8, 51.3, 2]);
                
                translate([7, 49.65, 12.1])
                    cube([10, 2, .7]);
                translate([32.5, 49.65, 12.1])
                    cube([10, 2, .7]);

                translate([16.75, -1.65, 12.1])
                    cube([3, 2, .7]);
                translate([29.75, -1.65, 12.1])
                    cube([3, 2, .7]);

            }
            union() {
                // slit
                translate([4, 1.35, 0])
                    cube([41.5, 2, 30]);
                translate([4, 2.35, 15])
                    cylinder(h = 30, r = 1, center = true);
                translate([45.5, 2.35, 15])
                    cylinder(h = 30, r = 1, center = true);
                // UART
                translate([50.5, 27.5, 0])
                    cube([10.5, 9.5, 30]);
                
                translate([14.25, 25 + 6.06, 10])
                    cylinder(h = 30, r = 5, center = true);
                translate([28.25, 25 + 6.06, 10])
                    cylinder(h = 30, r = 5, center = true);

                translate([22.25, 25 - 6.06, 10])
                    cylinder(h = 30, r = 5, center = true);
                translate([36.25, 25 - 6.05, 10])
                    cylinder(h = 30, r = 5, center = true);

                if (UART_on_dock) {
                    // UART on dock
                    translate([58.5 - 13.7, -1.5, -1]) {
                        cube([8.62, 4.54, 30]);
                    }
                }
            }
        }
    }
}

//board();
cover();
top();
bottom();

rotate([180, 0, 0]) {
    //top();
}
