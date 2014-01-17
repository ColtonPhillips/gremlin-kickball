// you better have grep and grip installed...

if (gamepad_button_check_pressed(0, gp_face1)) {
    if (grip < 11 && grep > 50) {
        grep = grep / 2;
        physics_apply_impulse(phy_com_x,phy_com_y,0,magic_jump  - grep + grip );
    }
    grip = grip + 10;
}

if (gamepad_button_check(0,gp_face1)) {
  // slight ups for holding jump
  physics_apply_force(phy_com_x,phy_com_y,0,-100 );
}
else if (gamepad_button_check_released(0,gp_face1)) {
    physics_apply_impulse(phy_com_x,phy_com_y,0,25);
}
