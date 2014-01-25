var _n = argument0;
direction = point_direction(0, 0, gamepad_axis_value(_n, gp_axislh), gamepad_axis_value(_n, gp_axislv));

hchince = lengthdir_x(gamepad_axis_value(_n, gp_axislh), direction) * magic_force;
vchince = lengthdir_y(gamepad_axis_value(_n, gp_axislv), direction) * magic_force;

if (gamepad_axis_value(_n,gp_axislh) < 0) hchince *= -1;
if (gamepad_axis_value(_n,gp_axislv) < 0) vchince *= -1;

if (not ( abs(hchince) < 0.5 && abs(vchince) < 0.5)) {
    physics_apply_impulse(phy_com_x,phy_com_y,hchince/damping_x_gremlin,vchince/damping_y_gremlin);
}

