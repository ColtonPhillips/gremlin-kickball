/*
**  Usage:
**      hex_to_color(hex)
**
**  Arguments:
**      hex     a string of hexadecimal digits 
**              representing a color in RRGGBB format
**
**  Returns:
**      a color generated from the given hexadecimal color code
**
**  Dependencies:
**      hex_to_dec() - coverts a hexadecimal string to an integer
**
**  GMLscripts.com
*/
{
    var hex,dec,col;
    hex = argument0;
    dec = hex_to_dec(hex);
    col = (dec & 16711680) >> 16 | (dec & 65280) | (dec & 255) << 16;
    return col;
}
