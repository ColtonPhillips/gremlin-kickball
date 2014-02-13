/*
**  Usage:
**      draw_sprite_stretched_direction(sprite,subimg,x,y,scale,dir)
**
**  Arguments:
**      sprite      sprite to draw
**      subimg      subimage to draw
**      x,y         position on screen at which to draw
**      scale       scaling factor
**      dir         direction to stretch sprite
**
**  Returns:
**      nothing, draws at the given location a sprite subimage
**      stretched by a given scaling factor in a given direction
**
**  GMLscripts.com
*/
{
    d3d_transform_stack_push();
    d3d_transform_add_rotation_z(-argument5);
    d3d_transform_add_scaling(argument4,1,1);
    d3d_transform_add_rotation_z(argument5);
    d3d_transform_add_translation(argument2,argument3,0);
    draw_sprite(argument0,argument1,0,0);
    d3d_transform_stack_pop();
}
