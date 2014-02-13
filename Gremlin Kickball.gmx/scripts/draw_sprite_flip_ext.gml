/*
**  Usage:
**      draw_sprite_flip_ext(sprite,subimg,x,y,xscale,yscale,rot,color,alpha,fliph,flipv)
**
**  Arguments:      Takes the same arguments as built-in function draw_sprite_ext() 
**                  along with two extras, fliph and flipv.
**
**      fliph       if TRUE, flip horizontally
**      flipv       if TRUE, flip vertically
**
**  Returns:
**      nothing
**
**  Notes:
**      Unlike simply negating the scaling of a sprite to flip
**      it about its origin, this function will flip the given
**      sprite while keeping its regular bounding box.
**      
**  GMLscripts.com
*/
{
    var sprite,subimg,posx,posy,xscale,yscale,rot,color,alpha,fliph,flipv;
    sprite = argument0;
    subimg = argument1;
    posx   = argument2;
    posy   = argument3;
    xscale = argument4;
    yscale = argument5;
    rot    = argument6;
    color  = argument7;
    alpha  = argument8;
    fliph  = argument9;
    flipv  = argument10;
    if (fliph) {
        posx  = 2 * (sprite_get_width(sprite) - sprite_get_xoffset(sprite));
        posx  = xscale * (posx - sprite_get_bbox_right(sprite)) + argument2;
        xscale *= -1;
    }
    if (flipv) {
        posy  = 2 * (sprite_get_height(sprite) - sprite_get_yoffset(sprite));
        posy  = yscale * (posy - sprite_get_bbox_bottom(sprite)) + argument3;
        yscale *= -1;
    }
    draw_sprite_ext(sprite,subimg,posx,posy,xscale,yscale,rot,color,alpha);
}
