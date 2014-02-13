/*
**  Usage:
**      rgb_to_hex(r,g,b)
**
**  Arguments:
**      r,g,b       the red, green, and blue components of an RGB color
**
**  Returns:
**      the given RGB color as a string of hexadecimal digits in RRGGBB format
**
**  Dependencies:
**      dec_to_hex() - converts an integer to a hexadecimal string
**
**  GMLscripts.com
*/
{
    var r,g,b;
    r = argument0 & 255;
    g = argument1 & 255;
    b = argument2 & 255;
    return dec_to_hex(r << 16 | g << 8 | b);
}
