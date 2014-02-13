/*
**  Usage:
**      ds_list_sum_squares(id)
**
**  Arguments:
**      id      ds_list of numbers
**
**  Returns:
**      the sum of squares of all elements in the given list
**
**  GMLscripts.com
*/
{
    var i,j,k;
    j = 0;
    k = ds_list_size(argument0);
    for (i=0; i<k; i+=1) j += sqr(ds_list_find_value(argument0, i));
    return j;
}
