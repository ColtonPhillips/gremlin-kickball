/*
**  Usage:
**      ds_grid_swap_columns(grid,col1,col2)
**
**  Arguments:
**      grid    ds_grid with rows to swap
**      col1    1st column of the exchange
**      col2    2nd column of the exchange
**
**  Returns:
**      nothing
**
**  GMLscripts.com
*/
{
    var i, temp;
    i = 0;
    repeat (ds_grid_height(argument0)) {
        temp = ds_grid_get(argument0, argument1, i);
        ds_grid_set(argument0, argument1, i, ds_grid_get(argument0, argument2, i));
        ds_grid_set(argument0, argument2, i, temp);
        i += 1;
    }
}
