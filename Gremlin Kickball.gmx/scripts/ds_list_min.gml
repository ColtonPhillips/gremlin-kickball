/*
**  Usage:
**      ds_list_min(id)
**
**  Arguments:
**      id      list data structure
**
**  Returns:
**      the minimum value of the given list
**
**  GMLscripts.com
*/
{
    var n, minv, i, val;
    n = ds_list_size(argument0);
    minv = ds_list_find_value(argument0, 0);
    for (i=1; i<n; i+=1) {
        val = ds_list_find_value(argument0, i);
        if (val < minv)
        minv = val;
    }
    return minv;
}
