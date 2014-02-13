/*
**  Usage:
**      draw_surface_center(id,x,y)
**
**  Arguments:
**      id         surface id
**      x,y        draw position of center of surface
**
**  Returns:
**      nothing
**
**  Notes:
**      Draws a surface centered at the given point.
**
**  GMLscripts.com
*/
{
    var surface,sx,sy,mx,my;
    surface = argument0;
    sx = argument1;
    sy = argument2;
    mx = surface_get_width(surface)/2;
    my = surface_get_height(surface)/2;
    draw_surface(surface,sx-mx,sy-my);
}
