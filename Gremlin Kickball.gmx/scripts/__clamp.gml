/*
**  Usage:
**      clamp(t,a,b)
**
**  Arguments:
**      t       value, real
**      a       lower bound, real
**      b       upper bound, real
**
**  Returns:
**      (a) when (t < a), (b) when (t > b),
**      (t) otherwise
**
**  GMLscripts.com
*/
{
    if (argument0 < argument1) return argument1;
    if (argument0 > argument2) return argument2;
    return argument0;
}
