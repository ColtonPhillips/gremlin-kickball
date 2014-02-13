/*
**  Usage:
**      ds_list_geometric_mean(id)
**
**  Arguments:
**      id      list data structure
**
**  Returns:
**      the geometric mean of the values in the given list
**
**  GMLscripts.com
*/
{
    var n, geo, i;
    n = ds_list_size(argument0);
    geo = 1;
    for (i=0; i<n; i+=1) geo *= ds_list_find_value(argument0, i);
    return power(geo, 1/n);
}
