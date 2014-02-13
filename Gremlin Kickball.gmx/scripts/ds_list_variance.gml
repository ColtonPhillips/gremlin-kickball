/*
**  Usage:
**      ds_list_variance(id[,sample])
**
**  Arguments:
**      id          list data structure
**      sample      set to TRUE if the list is made up of a sample
**
**  Returns:
**      the variance of the given list, real
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
    return sum/(n - argument1);
}
