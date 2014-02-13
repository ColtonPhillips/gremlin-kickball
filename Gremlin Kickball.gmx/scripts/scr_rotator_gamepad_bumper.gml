var _n = argument0;
var _torque = argument1;
physics_apply_torque( -_torque * gamepad_button_value(_n,gp_shoulderl));
physics_apply_torque( _torque * gamepad_button_value(_n,gp_shoulderr));
