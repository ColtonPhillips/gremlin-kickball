/*
**  Usage:
**      draw_text_shadow(x,y,str,tcolor,scolor,intensity,distance,direction)
**
**  Arguments:
**      x,y         position of text
**      str         a string of text
**      tcolor      text color
**      scolor      shadow color
**      intensity   shadow intensity {0..1}
**      distance    shadow distance in pixels
**      direction   shadow direction in pixels
**
**  GMLscripts.com
*/
{
    var c,a,i,j;
    c = draw_get_color();
    a = draw_get_alpha();
    i = lengthdir_x(argument6, argument7);
    j = lengthdir_y(argument6, argument7);
    draw_set_color(argument4);
    draw_set_alpha(a * argument5);
    draw_text_ext(argument0 + i, argument1 + j, argument2, -1, -1);
    draw_set_color(argument3);
    draw_set_alpha(a);
    draw_text_ext(argument0, argument1, argument2, -1, -1);
    draw_set_color(c);
}
