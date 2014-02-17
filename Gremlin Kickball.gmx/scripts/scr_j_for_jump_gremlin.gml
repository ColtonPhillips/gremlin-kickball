// imperceptively apparent - 6
if (keyboard_check_pressed(ord("J"))) {
    physics_apply_impulse(phy_com_x,phy_com_y,
        0,magic_jump_impulse_gremlin/6);
}
