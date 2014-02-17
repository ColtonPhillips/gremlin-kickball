// This moves debug gremlin
// do not place debug gremlin into any rooms.

scr_j_for_jump_gremlin();

direction = point_direction(0, 0, gamepad_axis_value(0, gp_axislh), gamepad_axis_value(0, gp_axislv));
var magicchince=5;
var hchince = lengthdir_x(gamepad_axis_value(0, gp_axislh), direction) * magicchince;
var vchince = lengthdir_y(gamepad_axis_value(0, gp_axislv), direction) * magicchince;

if (gamepad_axis_value(0,gp_axislh) < 0) hchince *= -1;
if (gamepad_axis_value(0,gp_axislv) < 0) vchince *= -1;

if (not ( abs(hchince) < 0.5 && abs(vchince) < 0.5)) {
    physics_apply_impulse(phy_com_x,phy_com_y,hchince/2,vchince/2);
}

var jump = -50;
if (gamepad_button_check_pressed(0, gp_face1)) {
        physics_apply_impulse(phy_com_x,phy_com_y,0,jump);    
}

physics_apply_impulse(phy_com_x,phy_com_y,0,1);

// handle key input
magicr = 5;
if (keyboard_check(vk_left)) {
    physics_apply_impulse(phy_com_x,phy_com_y,-magicr,0);
}
if (keyboard_check(vk_right)) {
    physics_apply_impulse(phy_com_x,phy_com_y,magicr,0);
}

if (keyboard_check(vk_down)) {
    physics_apply_impulse(phy_com_x,phy_com_y,0,magicr);
}

if (keyboard_check(vk_up)) {
    physics_apply_impulse(phy_com_x,phy_com_y,0,-magicr);
}

magicx = 200;
if (phy_linear_velocity_x < -magicx) phy_linear_velocity_x =-magicx;
if (phy_linear_velocity_x > magicx) phy_linear_velocity_x =magicx; 

magicy = 300;
if (phy_linear_velocity_y > magicy) phy_linear_velocity_y =magicy;
if (phy_linear_velocity_y < -magicy) phy_linear_velocity_y =-magicy;

magict = 100;
physics_apply_torque( -magict * gamepad_button_value(0,gp_shoulderlb))
physics_apply_torque( magict * gamepad_button_value(0,gp_shoulderrb))

if (keyboard_check(vk_space)) { room_restart(); }
