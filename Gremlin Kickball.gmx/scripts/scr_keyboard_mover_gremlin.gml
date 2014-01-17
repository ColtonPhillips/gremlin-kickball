// argument 1 is player. 1 or 2.

magic_force=20;
x_damping = 2;
y_damping = 12;

if (keyboard_check(ord("A"))) {
    physics_apply_impulse(phy_com_x,phy_com_y,-magic_force/x_damping,0);    
}
if (keyboard_check(ord("D"))) {
    physics_apply_impulse(phy_com_x,phy_com_y,magic_force/x_damping,0);
}
if (keyboard_check(ord("W"))) {
    physics_apply_impulse(phy_com_x,phy_com_y,0,-magic_force/y_damping);
}
if (keyboard_check(ord("S"))) {
    physics_apply_impulse(phy_com_x,phy_com_y,0,magic_force/y_damping);
}

