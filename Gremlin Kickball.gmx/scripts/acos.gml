/*
**  Usage:
**      acos(rad,n)
**
**  Arguments:
**      rad     angle, radians
**      n       repetition, integer
**
**  Returns:
**      the arccosine of the given angle for the nth repetition
**
**  GMLscripts.com
*/
{
    var a,n,p2;
    a = arccos(argument0);
    n = argument1;
    p2 = 2*pi;
    return a - 2 * n * a + p2 * n + floor(n / 2) * (4 * a - p2);
}
