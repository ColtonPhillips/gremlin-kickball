/*
**  Usage:
**      draw_crosshair(x,y)
**
**  Arguments:
**      x,y         a position in the room
**
**  Returns:
**      nothing
**
**  Notes:
**      Draws a horizontal and vertical pair of lines
**      intersecting at the given point.
**
**  GMLscripts.com
*/
{
    draw_line(0,argument1,room_width,argument1);
    draw_line(argument0,0,argument0,room_height);
}
