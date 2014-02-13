/*
**  Usage:
**      draw_rectangle_inverted(x1,y1,x2,y2)
**
**  Arguments:
**      x1,y1       1st corner of the rectangle
**      x2,y2       2nd corner of the rectangle
**
**  Returns:
**      nothing, inverts the given rectangular area of the screen
**
**  Notes:
**      Resets blending mode to normal.
**
**  GMLscripts.com
*/
{
    draw_set_blend_mode_ext(bm_inv_dest_color,bm_inv_src_color);
    draw_rectangle_color(argument0,argument1,argument2,argument3,c_white,c_white,c_white,c_white,0);
    draw_set_blend_mode(bm_normal);
}
