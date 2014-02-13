/*
**  Usage:
**      color_multiply(color1,color2)
**
**  Arguments:
**      color1      first color
**      color2      second color
**
**  Returns:
**      the given colors multiplied together
**
**  GMLscripts.com
*/
{
    var c1,c2,t;
    c1 = argument0;
    c2 = argument1;
    t = ((c1 & 255) * (c2 & 255)) >> 8;
    c1 = c1 >> 8;
    c2 = c2 >> 8;
    t |= ((c1 & 255) * (c2 & 255)) & 65280;
    c1 = c1 & 65280;
    c2 = c2 >> 8;
    t |= ((c1 * c2) & 16711680);
    return t;
}
