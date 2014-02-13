/*
**  Usage:
**      draw_crosshair_width(x,y,width)
**
**  Arguments:
**      x,y         a position in the room
**      width       the width of the lines
**
**  Returns:
**      nothing
**
**  Notes:
**      Draws a horizontal and vertical pair of lines
**      of the given width intersecting at the given point.
**
**  GMLscripts.com
*/
{
    draw_line_width(0,argument1,room_width,argument1,argument2);
    draw_line_width(argument0,0,argument0,room_height,argument2);   
}
