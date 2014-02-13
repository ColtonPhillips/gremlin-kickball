/*
**  Usage:
**      lcm(a,b)
**
**  Arguments:
**      a,b     non-negative integers
**
**  Returns:
**      the least common multiple of the given integers
**
**  GMLscripts.com
*/
{
    var a,b,c,r;
    a = max(argument0,argument1);
    b = min(argument0,argument1);
    c = a * b;
    while (b != 0) {
        r = a mod b;
        a = b;
        b = r;
    }
    return (c / a);
}
