/*
**  Usage:
**      inst = instance_find_team(object,team);
**
**  Arguments:
**      object      an object to look for
**      team        team to find
**
**  Return:
**      inst        an instance of given (object) where
**                  local variable "team" is the same as
**                  the given (team), or keyword (noone)
**
**  GMLscripts.com
*/
{
    var ds,selected;
    ds = ds_priority_create();
    ds_priority_add(ds,noone,100000000);
    with (argument0) {
        if (team == argument1 && id != other.id) {
            ds_priority_add(ds,id,point_distance(x,y,other.x,other.y));
        }
    }
    selected = ds_priority_find_min(ds);
    ds_priority_destroy(ds);
    return selected;
}
