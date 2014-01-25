// you better have grep and grip installed...
var _n = argument0;
if (gamepad_button_check_pressed(_n, gp_face1)) {
    if (grip < 11 && grep > 50) {
        // mad ups
        grep = grep / 2;
        physics_apply_impulse(phy_com_x,phy_com_y,0,magic_jump  - grep + grip );
    }
    grip = grip + 10;
}

if (gamepad_button_check(_n,gp_face1)) {
  // slight ups for holding jump
  physics_apply_force(phy_com_x,phy_com_y,0,-100 );
}
else if (gamepad_button_check_released(_n,gp_face1)) {
    // tiny fall for letting go
    physics_apply_impulse(phy_com_x,phy_com_y,0,25);
}