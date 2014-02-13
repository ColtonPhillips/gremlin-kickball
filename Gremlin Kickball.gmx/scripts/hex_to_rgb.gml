/*
**  Usage:
**      hex_to_rgb(hex,var_red,var_blue,var_green)
**
**  Arguments:
**      hex         hexadecimal string representing a color in RRGGBB format
**      var_red     local variable name to store the red value in, string
**      var_green   local variable name to store the green value in, string
**      var_blue    local variable name to store the blue value in, string
**
**  Returns:
**      nothing
**
**  Notes:
**      Rather than return a value, this sets the values of local variables
**
**  Dependencies:
**      hex_to_dec() - converts a hexadecimal string to an integer
**
**  GMLscripts.com
*/
/*
{
    var color;
    color = hex_to_dec(argument0);
    variable_local_set(argument1,(color & 16711680) >> 16);
    variable_local_set(argument2,(color & 65280) >> 8);
    variable_local_set(argument3,color & 255);
}
*/
