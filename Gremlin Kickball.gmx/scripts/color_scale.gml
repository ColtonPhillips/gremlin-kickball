/*
**  Usage:
**      color_scale(color,scale)
**
**  Arguments:
**      color       a 24-bit color
**      scale       scaling factor, 0 to 1.0
**
**  Return:
**      the given color with each component
**      scaled by the given factor
**
**  GMLscripts.com
*/
{
    var c,v,t;
    c = argument0;
    v = argument1 * 65336;
    t = c & 65280;
    c = c ^ t;
    t *= v;
    t = t >> 24;
    t = t << 8;
    v = v >> 8;
    c *= v;
    c = c >> 8;
    c = c & 16711935;
    return c | t;
}
