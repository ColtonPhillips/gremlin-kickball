/*
**  Usage:
**      motion_blur(length,direction)
**
**  Arguments:
**      length          length of blur
**      direction       direction of the blur
**
**  Returns:
**      nothing
**
**  Notes:
**      Example of use (draw event): motion_blur(speed*2,direction);
**      Please also remember that the script is compatible with
**      image_alpha. For example: If image_alpha is 0.5 then whole
**      motion blur will have half tranparency.
**
**  GMLscripts.com
*/
/*
{
    length = argument[0];
    if (length > 0) {
        step = 3;
        dir = degtorad(argument[1]);
        px = cos(dir);
        py = -sin(dir);
        a = image_alpha/(length/step);
        if (a >= 1) {
            draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,
                            image_yscale,image_angle,image_blend,image_alpha);
            a /= 2;
        }
        for(i=length;i>=0;i-=step) {
            draw_sprite_ext(sprite_index,image_index,x+(px*i),y+(py*i),
                            image_xscale,image_yscale,image_angle,image_blend,a);
        }
    } else {    
        draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,
                        image_yscale,image_angle,image_blend,image_alpha);
    }
}
*/
