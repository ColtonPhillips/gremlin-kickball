/*
**  Usage:
**      draw_sprite_percent(sprite,amount,x,y,restrict)
**
**  Arguments:
**      sprite      progress bar sprite
**      amount      percentage, 0 - 100
**      x,y         position where sprite will be drawn
**      restrict    if true, first and last subimages only
**                  appear at exactly 0 or 100 percent
**
**  Returns:
**      the subimage drawn for the given percentage
**
**  Notes:
**      This is useful for sprite based health bars or
**      progress bars, where the bar goes from empty at
**      the first subimage to full at the last subimage.
**
**  GMLscripts.com
*/
{
    var n,index;
    n = sprite_get_number(argument0);
    if (argument1 >= 100) index = (n-1);
    else if (argument1 <= 0) index = 0;
    else{
        index = round(argument1*(n-1)/100);
        if (argument4) index = min(max(1,index),(n-2));
    }
    draw_sprite(argument0,index,argument2,argument3);
    return index;
}
