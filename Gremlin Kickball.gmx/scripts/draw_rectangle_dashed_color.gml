/*
**  Usage:
**      draw_rectangle_dashed_color(x1,y1,x2,y2,col1,col2,col3,col4,size)
**
**  Arguments:
**      x1,y1       first corner of the rectangle
**      x2,y2       second corner of the rectangle
**      col1,col2   top left, top right corner colors
**      col3,col4   bottom right, bottom left corner colors
**      size        length of the dashes in pixels (optional)
**
**  Returns:
**      nothing
**
**  Notes:
**      Draws a rectangle made of dashes of the given size.
**      If no size is given, one pixel dots will be used.
**      Creates a sprite, 2x2 pixels is size, and a pair
**      of global variables the first time it is called.
**
**  GMLscripts.com
*/
/*
{
    // initialize the script the first on the first call
    if (!variable_global_exists("_DRAW_RECT_DASH_SPR")) {
        var i,j,k,l;
        i = draw_getpixel(0,0);
        j = draw_getpixel(1,0);
        k = draw_getpixel(0,1);
        l = draw_getpixel(1,1);
        draw_point_color(0,0,c_white);
        draw_point_color(1,0,c_black);
        draw_point_color(0,1,c_black);
        draw_point_color(1,1,c_white);
        global._DRAW_RECT_DASH_SPR = sprite_create_from_screen(0,0,2,2,0,1,0,0,0,0);
        global._DRAW_RECT_DASH_TEX = sprite_get_texture(global._DRAW_RECT_DASH_SPR,0);
        draw_point_color(0,0,i);
        draw_point_color(1,0,j);
        draw_point_color(0,1,k);
        draw_point_color(1,1,l);
    }
    // main script begin
    var x1,y1,x2,y2,u1,v1,u2,v2,alpha;;
    x1 = min(argument0,argument2);
    y1 = min(argument1,argument3);
    x2 = max(argument0,argument2);
    y2 = max(argument1,argument3);
    // scale and center texture UV coordinates
    argument8 = max(1,argument8);
    u2 = (x2-x1)/(2*argument8);
    v2 = (y2-y1)/(2*argument8);
    u1 = 0.25 - (u2 mod 2)/2;
    v1 = 0.25 - (v2 mod 2)/2;
    u2 += u1;
    v2 += v1;
    // draw textured rectangle using the given colors and default alpha
    alpha = draw_get_alpha();
    texture_set_repeat(1);    
    draw_primitive_begin_texture(pr_linestrip, global._DRAW_RECT_DASH_TEX);
    draw_vertex_texture_color(x1, y1, u1, v1, argument4, alpha);
    draw_vertex_texture_color(x2, y1, u2, v1, argument5, alpha);
    draw_vertex_texture_color(x2, y2, u2, v2, argument6, alpha);
    draw_vertex_texture_color(x1, y2, u1, v2, argument7, alpha);
    draw_vertex_texture_color(x1, y1, u1, v1, argument4, alpha);
    draw_primitive_end(); 
}
*/
