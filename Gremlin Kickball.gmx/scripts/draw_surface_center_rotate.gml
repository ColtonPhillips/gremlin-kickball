/*
**  Usage:
**      draw_surface_center_rotate(id,x,y,rot)
**
**  Arguments:
**      id         surface id
**      x,y        draw position of center of surface
**      rot        degrees rotation
**
**  Returns:
**      nothing
**
**  Notes:
**      Draws a rotated surface centered at the given point.
**
**  GMLscripts.com
*/
{
    var surface,sx,sy,angle,mx,my;
    surface = argument0;
    sx = argument1;
    sy = argument2;
    rot = argument3;
    mx = surface_get_width(surface)/2;
    my = surface_get_height(surface)/2;
    d3d_transform_stack_push();
    d3d_transform_set_identity();
    d3d_transform_add_translation(-mx,-my,0);
    d3d_transform_add_rotation_z(rot);
    d3d_transform_add_translation(sx,sy,0);
    draw_surface(surface,0,0);
    d3d_transform_stack_pop();
}
