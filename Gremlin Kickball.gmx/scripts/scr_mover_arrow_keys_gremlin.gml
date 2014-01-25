if (keyboard_check(vk_left)) {
    physics_apply_impulse(phy_com_x,phy_com_y,-magic_force/damping_x_gremlin,0);    
}
if (keyboard_check(vk_right)) {
    physics_apply_impulse(phy_com_x,phy_com_y,magic_force/damping_x_gremlin,0);
}
if (keyboard_check(vk_up)) {
    physics_apply_impulse(phy_com_x,phy_com_y,0,-magic_force/damping_y_gremlin);
}
if (keyboard_check(vk_down)) {
    physics_apply_impulse(phy_com_x,phy_com_y,0,magic_force/damping_y_gremlin);
}

