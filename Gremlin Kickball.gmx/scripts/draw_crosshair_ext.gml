/*
**  Usage:
**      draw_crosshair_ext(x,y,col1,col2,col3,col4)
**
**  Arguments:
**      x,y         a position in the room
**      col1        color of the first end point of the horizontal line
**      col2        color of the second end point of the horizontal line
**      col3        color of the first end point of the vertical line
**      col4        color of the second end point of the vertical line
**
**  Returns:
**      nothing
**
**  Notes:
**      Draws a horizontal and vertical pair of lines
**      of the given colors intersecting at the given point.
**
**  GMLscripts.com
*/
{
    draw_line_color(0,argument1,room_width,argument1,argument2,argument3);
    draw_line_color(argument0,0,argument0,room_height,argument4,argument5);
}
