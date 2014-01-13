direction = point_direction(0, 0, gamepad_axis_value(0, gp_axislh), gamepad_axis_value(0, gp_axislv));

magic_force=20;
hchince = lengthdir_x(gamepad_axis_value(0, gp_axislh), direction) * magic_force;
vchince = lengthdir_y(gamepad_axis_value(0, gp_axislv), direction) * magic_force;

if (gamepad_axis_value(0,gp_axislh) < 0) hchince *= -1;
if (gamepad_axis_value(0,gp_axislv) < 0) vchince *= -1;

if (not ( abs(hchince) < 0.5 && abs(vchince) < 0.5)) {
    physics_apply_impulse(phy_com_x,phy_com_y,hchince/2,vchince/7.7);
}

magicjump = -66.6;
if (gamepad_button_check_pressed(0, gp_face1)) {
    if (grep > 60) {
        physics_apply_impulse(phy_com_x,phy_com_y,0,magicjump - (0.7 * grep) );
        grep = grep / 2;
    }
}

magicx = 500;
if (phy_linear_velocity_x < -magicx) phy_linear_velocity_x =-magicx;
if (phy_linear_velocity_x > magicx) phy_linear_velocity_x =magicx; 

magicy = 300;
if (phy_linear_velocity_y > magicy) phy_linear_velocity_y =magicy;
if (phy_linear_velocity_y < -magicy) phy_linear_velocity_y =-magicy;

physics_apply_torque( -300 * gamepad_button_value(0,gp_shoulderlb))
physics_apply_torque( 300 * gamepad_button_value(0,gp_shoulderrb))

physics_apply_impulse(phy_com_x,phy_com_y,0,4.2);

if (grep < 100) grep = grep + 1;
