/*
**  Usage:
**      pulse(a,b,t)
**
**  Arguments:
**      a       lower bound, real
**      b       upper bound, real
**      t       value, real
**
**  Returns:
**      1 when (a <= t <= b),
**      0 otherwise
**
**  GMLscripts.com
*/
{
    return ((argument0 <= argument2) && (argument2 <= argument1));
}
