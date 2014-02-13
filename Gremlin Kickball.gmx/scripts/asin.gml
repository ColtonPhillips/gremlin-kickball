/*
**  Usage:
**      asin(rad,n)
**
**  Arguments:
**      rad     angle, radians
**      n       repetition, integer
**
**  Returns:
**      the arcsine of the given angle for the nth repetition
**
**  GMLscripts.com
*/
{
    var a,n;
    a = arcsin(argument0);
    n = argument1;
    return a - 2 * n * a + pi * n + floor(n / 2) * 4 * a;
}
