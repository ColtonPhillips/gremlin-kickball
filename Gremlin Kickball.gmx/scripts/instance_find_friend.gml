/*
**  Usage:
**      inst = instance_find_friend(object);
**
**  Arguments:
**      object      an object to look for
**
**  Returns:
**      inst        nearest instance of given (object) where
**                  local variable "team" is the same as the
**                  calling instance, or keyword (noone)
**
**  GMLscripts.com
*/
{
    var ds,selected;
    ds = ds_priority_create();
    ds_priority_add(ds,noone,100000000);
    with (argument0) {
        if (team == other.team && id != other.id) {
            ds_priority_add(ds,id,point_distance(x,y,other.x,other.y));
        }
    }
    selected = ds_priority_find_min(ds);
    ds_priority_destroy(ds);
    return selected;
}
