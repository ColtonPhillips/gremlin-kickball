/*
**  Usage:
**      color_to_hex(color)
**
**  Arguments:
**      color       a color
**
**  Returns:
**      the given color as a hexadecimal string in RRGGBB format
**
**  Dependencies:
**      dec_to_hex() - converts an integer to a hexadecimal string
**
**  GMLscripts.com
*/
{
    var color,dec;
    color = argument0;
    dec = (color & 16711680) >> 16 | (color & 65280) | (color & 255) << 16;
    return dec_to_hex(dec);
}
