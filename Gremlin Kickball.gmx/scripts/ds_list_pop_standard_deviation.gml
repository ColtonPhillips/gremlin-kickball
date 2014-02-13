/*
**  Usage:
**      ds_list_pop_standard_deviation(id)
**
**  Arguments:
**      id      ds_list of numbers
**
**  Returns:
**      the population standard deviation of all elements in the given list
**
**  GMLscripts.com
*/
{
    var i,j,k,m;
    j = 0;
    k = ds_list_size(argument0);
    for (i=0; i<k; i+=1) j += ds_list_find_value(argument0, i);
    m = j / k;
    j = 0;
    for (i=0; i<k; i+=1) j += sqr(ds_list_find_value(argument0, i) - m);
    return sqrt(j / k);
}
