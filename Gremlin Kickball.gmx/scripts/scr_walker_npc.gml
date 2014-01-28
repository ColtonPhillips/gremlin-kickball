var _x = phy_com_x + __off_x;
var _y = phy_com_y + __off_y;

physics_apply_force(_x, _y, __xf, __yf);
physics_apply_impulse(_x, _y, __xi, __yi);
physics_apply_local_force(_x, _y, __xlf, __ylf);
physics_apply_impulse(_x, _y, __xli, __yli);
physics_apply_torque(__torque);
