if (keyboard_check(ord("A"))) {
    physics_apply_impulse(phy_com_x,phy_com_y,-magic_force/damping_x_gremlin,0);    
}
if (keyboard_check(ord("D"))) {
    physics_apply_impulse(phy_com_x,phy_com_y,magic_force/damping_x_gremlin,0);
}
if (keyboard_check(ord("W"))) {
    physics_apply_impulse(phy_com_x,phy_com_y,0,-magic_force/damping_y_gremlin);
}
if (keyboard_check(ord("S"))) {
    physics_apply_impulse(phy_com_x,phy_com_y,0,magic_force/damping_y_gremlin);
}

