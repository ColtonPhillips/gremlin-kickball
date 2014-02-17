var _n = argument0;
physics_apply_torque( -magic_torque_gremlin 
    * gamepad_button_value(_n,gp_shoulderlb));
physics_apply_torque( magic_torque_gremlin 
    * gamepad_button_value(_n,gp_shoulderrb));
