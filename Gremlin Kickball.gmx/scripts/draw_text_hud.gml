/*
**  Usage:
**      draw_text_hud(x,y,string,sep,width,xscale,yscale,rot,c1,c2,c3,c4,alpha)
**
**  Description:
**      Draws a HUD string of text in a certain position relative 
**      to the screen regardless of the view or rotation.
**
**  Arguments:
**      x,y,string,sep,width,   These arguments are exactly the same as for
**      xscale,yscale,rot,      draw_text_ext_transformed_color(). {x,y} is
**      c1,c2,c3,c4,alpha       relative to the top-left corner of the screen.
**
**  Returns:
**      nothing
**
**  GMLscripts.com
*/
{
    var xoffset,yoffset,tx,ty;
    xoffset = argument0;
    yoffset = argument1;
    tx = view_xview[0] + view_wview[0]/2 + lengthdir_x(xoffset-view_wview[0]/2,-view_angle[0]) 
        + lengthdir_x(yoffset-view_hview[0]/2,-view_angle[0]-90);
    ty = view_yview[0] + view_hview[0]/2 + lengthdir_y(xoffset-view_wview[0]/2,-view_angle[0]) 
        + lengthdir_y(yoffset-view_hview[0]/2,-view_angle[0]-90);
    draw_text_ext_transformed_color(tx,ty,argument2,argument3,argument4,argument5,argument6,
    argument7-view_angle[0],argument8,argument9,argument10,argument11,argument12);
}
