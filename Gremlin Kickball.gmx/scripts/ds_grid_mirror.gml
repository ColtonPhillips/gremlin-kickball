/*
**  Usage:
**      ds_grid_mirror(dsid,horiz,vert)
**
**  Arguments:
**      dsid        ds_grid data structure for which to mirror
**      horiz       set to TRUE to mirror horizontally
**      vert        set to TRUE to mirror vertically
**
**  Returns:
**      nothing
**
**  GMLscripts.com
*/
{
    var dsid,horiz,vert,w,h,temp;
    dsid = argument0;
    horiz = argument1;
    vert = argument2;
    w = ds_grid_width(dsid);
    h = ds_grid_height(dsid);
    temp = ds_grid_create(w,h);
    if (horiz) {
        for (i=0;i<w;i+=1) {
            ds_grid_set_grid_region(temp,dsid,i,0,i,h-1,w-i-1,0);
        }
        ds_grid_copy(dsid,temp);
    }
    if (vert) {
        for (i=0;i<h;i+=1) {
            ds_grid_set_grid_region(temp,dsid,0,i,w-1,i,0,h-i-1);
        }
        ds_grid_copy(dsid,temp);
    }
    ds_grid_destroy(temp);
}
