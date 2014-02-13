/*
**  Usage:
**      ds_grid_swap_rows(grid,row1,row2)
**
**  Arguments:
**      grid    ds_grid with rows to swap
**      row1    1st row of the exchange
**      row2    2nd row of the exchange
**
**  Returns:
**      nothing
**
**  GMLscripts.com
*/
{
    var i, temp;
    i = 0;
    repeat (ds_grid_width(argument0)) {
        temp = ds_grid_get(argument0, i, argument1);
        ds_grid_set(argument0, i, argument1, ds_grid_get(argument0, i, argument2));
        ds_grid_set(argument0, i, argument2, temp);
        i += 1;
    }
}
