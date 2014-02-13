/*
**  Usage:
**      smoothstep(a,b,t)
**
**  Arguments:
**      a       upper bound, real
**      b       lower bound, real
**      t       value, real
**
**  Returns:
**      0 when (t < a), 1 when (t >= b),
**      a smooth transition from 0 to 1 otherwise,
**      or (-1) on error (a == b)
**
**  GMLscripts.com
*/
{
    var p;
    if (argument2 < argument0) return 0;
    if (argument2 >= argument1) return 1;
    if (argument0 == argument1) return -1;
    p = (argument2 - argument0) / (argument1 - argument0);
    return (p * p * (3 - 2 * p));
}
