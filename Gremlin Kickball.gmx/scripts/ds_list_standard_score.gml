/*
**  Usage:
**      ds_list_standard_score(id,pos)
**
**  Arguments:
**      id      list data structure
**      pos     position in the list
**
**  Returns:
**      the standard score (z-score) of the value at position pos in the given list
**
**  GMLscripts.com
*/
{
    var n, avg, sum, i;
    n = ds_list_size(argument0);
    avg = 0;
    sum = 0;
    for (i=0; i<n; i+=1) avg += ds_list_find_value(argument0, i);
    avg /= n;
    for (i=0; i<n; i+=1) sum += sqr(ds_list_find_value(argument0, i) - avg);
    return (ds_list_find_value(argument0, argument1) - avg)/sqrt(sum/n);
}
