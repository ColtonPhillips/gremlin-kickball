/*
**  Usage:
**      draw_sprite_wave(sprite,subimage,x,y,axis,wavelength,amplitude,phase)
**
**  Arguments:
**      sprite          sprite index
**      subimage        sprite subimage
**      x,y             position in room to draw sprite
**      axis            0 = horizontal wave, 1 = vertical wave
**      wavelength      length of wave in pixels, crest to crest
**      amplitude       half the height of wave in pixels, crest to trough
**      phase           wave position offset, vary to animate wave
**
**  Returns:
**      nothing
**
**  Notes:
**      Draws a sprite with wave-like distortion. 
**      The fractional part of the phase argument controls the cycle
**      of the wave, a full cycle covers the [0..1] interval.
**
**  GMLscripts.com
*/
{
    var sprite,image,posx,posy,axis,wavelength,amplitude,phase;
    sprite     = argument0;
    image      = argument1;
    posx       = argument2;
    posy       = argument3;
    axis       = argument4;
    wavelength = argument5;
    amplitude  = argument6;
    phase      = argument7;
    var width,height,xoff,yoff,size,i,shift,sx,sy;
    width  = sprite_get_width(sprite);
    height = sprite_get_height(sprite);
    xoff   = sprite_get_xoffset(sprite);
    yoff   = sprite_get_yoffset(sprite);
    if (axis) size = height else size = width;
    for (i=0; i<size; i+=1) {
        shift = amplitude*sin(2*pi*((i/wavelength)+phase));
        if (axis) {
            sx = shift-xoff+posx;
            sy = i-yoff+posy;
            draw_sprite_part(sprite,image,0,i,width,1,sx,sy);
        }else{
            sx = i-xoff+posx;
            sy = shift-yoff+posy;
            draw_sprite_part(sprite,image,i,0,1,height,sx,sy);
        }
    }
}
