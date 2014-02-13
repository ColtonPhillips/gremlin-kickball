/*
**  Usage:
**      draw_sprite_wave_ext(sprite,subimage,x,y,axis,wavelength,amplitude,
**                           phase,xscale,yscale,blend,alpha)
**
**  Arguments:
**      sprite          sprite index
**      subimage        sprite subimage
**      x,y             position in room to draw sprite
**      axis            0 = horizontal wave, 1 = vertical wave
**      wavelength      length of wave in pixels, crest to crest
**      amplitude       half the height of wave in pixels, crest to trough
**      phase           wave position offset, vary to animate wave
**      xscale,yscale   scaling of sprite along x and y axes
**      blend           color to blend with sprite
**      alpha           alpha used to draw sprite
**
**  Returns:
**      nothing
**
**  Notes:
**      Draws a sprite with wave-like distortion. If scaling
**      is used, the wavelength of the wave will also be scaled.
**      The fractional part of the phase argument controls the cycle
**      of the wave, a full cycle covers the [0..1] interval.
**
**  GMLscripts.com
*/
{
    var sprite,image,posx,posy,axis,wavelength,amplitude,phase,xscale,yscale,blend,alpha;
    sprite     = argument0;
    image      = argument1;
    posx       = argument2;
    posy       = argument3;
    axis       = argument4;
    wavelength = argument5;
    amplitude  = argument6;
    phase      = argument7;
    xscale     = argument8;
    yscale     = argument9;
    blend      = argument10;
    alpha      = argument11;
    var width,height,xoff,yoff,size,i,shift,sx,sy;
    width  = sprite_get_width(sprite);
    height = sprite_get_height(sprite);
    xoff   = sprite_get_xoffset(sprite);
    yoff   = sprite_get_yoffset(sprite);
    if (axis) size = height else size = width;
    for (i=0; i<size; i+=1) {
        shift = amplitude*sin(2*pi*((i/wavelength)+phase));
        if (axis) {
            sx = xscale*(shift-xoff)+posx;
            sy = yscale*(i-yoff)+posy;
            draw_sprite_part_ext(sprite,image,0,i,width,1,sx,sy,xscale,yscale,blend,alpha);
        }else{
            sx = xscale*(i-xoff)+posx;
            sy = yscale*(shift-yoff)+posy;
            draw_sprite_part_ext(sprite,image,i,0,1,height,sx,sy,xscale,yscale,blend,alpha);
        }
    }
}
