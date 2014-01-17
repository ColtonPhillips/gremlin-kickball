if (phy_linear_velocity_x < -limiter_x_gremlin) phy_linear_velocity_x =-limiter_x_gremlin;
if (phy_linear_velocity_x > limiter_x_gremlin) phy_linear_velocity_x =limiter_x_gremlin; 

if (phy_linear_velocity_y > limiter_y_gremlin) phy_linear_velocity_y =limiter_y_gremlin;
if (phy_linear_velocity_y < -limiter_y_gremlin) phy_linear_velocity_y =-limiter_y_gremlin;
