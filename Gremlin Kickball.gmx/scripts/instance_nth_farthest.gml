/*
**  Usage:
**      instance_nth_farthest(x,y,obj,n)
**
**  Arguments:
**      x,y       a point
**      obj       an object_index, or keyword "all"
**      n         proximity
**
**  Return:
**      inst      (n)th farthest instance id of type
**                (object) from the given point (x,y),
**                or keyword "noone" if none found.
**
**  GMLscript.com
*/
{
    var pointx,pointy,object,n,list,farthest;
    pointx = argument0;
    pointy = argument1;
    object = argument2;
    n = argument3;
    n = min(max(1,n),instance_number(object));
    list = ds_priority_create();
    farthest = noone;
    with (object) ds_priority_add(list,id,distance_to_point(pointx,pointy));
    repeat (n) farthest = ds_priority_delete_max(list);
    ds_priority_destroy(list);
    return farthest;
}
