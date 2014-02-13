/*
**  Usage:
**      ds_grid_set_grid_region(id,source,x1,y1,x2,y2,xpos,ypos)
**
**  Arguments:
**      id          destination ds_grid to copy values to
**      source      source ds_grid to copy values from
**      x1,y1       upper-left corner of the region to be copied
**      x2,y2       lower-right corner of the region to be copied
**      xpos,ypos   position in the destination to copy values to
**
**  Returns:
**      nothing
**
**  Notes:
**      This function replaces the buggy Game Maker 7 version of the
**      same name. It also adds the same functionality to Game Maker 6.
**
**  GMLscripts.com
*/
{
    var copy,xoff,yoff,i,j;
    if (argument0 != argument1) copy = -1;
    else {
        copy = ds_grid_create(argument4+1,argument5+1);
        for (i=argument2; i<=argument4; i+=1) {
            for (j=argument3; j<=argument5; j+=1) {
                ds_grid_set(copy,i,j,ds_grid_get(argument1,i,j));
            }
        }
        argument1 = copy;
    }
    xoff = argument6-argument2;
    yoff = argument7-argument3;
    for (i=argument2; i<=argument4; i+=1) {
        for (j=argument3; j<=argument5; j+=1) {
            ds_grid_set(argument0,i+xoff,j+yoff,ds_grid_get(argument1,i,j));
        }
    }
    if (copy != -1) ds_grid_destroy(copy);
}
