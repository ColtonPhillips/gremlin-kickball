/*
**  Usage:
**      ds_list_dispersion(id)
**
**  Arguments:
**      id      list data structure
**
**  Returns:
**      the dispersion of the given list
**
**  GMLscripts.com
*/
{
    var n, maxv, minv, i, val;
    n = ds_list_size(argument0);
    maxv = ds_list_find_value(argument0, 0);
    minv = maxv;
    for (i=1; i<n; i+=1) {
        val = ds_list_find_value(argument0, i);
        if (val > maxv)
        maxv = val;
        else if (val < minv)
        minv = val;
    }
    return (maxv - minv);
}
