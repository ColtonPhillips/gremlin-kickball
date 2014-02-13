/*
**  Usage:
**      gain(g,t)
**
**  Arguments:
**      g       gain, real
**      t       value, real
**
**  Returns:
**      If (t) varies over the [0,1] interval, then
**      the result also varies over that interval.
**      The zero and one endpoints of the interval
**      are mapped onto themselves. Regardless of
**      the value of (g), all gain functions return
**      0.5 when (t) is 0.5. Above and below 0.5 the
**      gain function consists of two scaled-down
**      bias curves forming an S-shaped curve.
**
**  Dependencies:
**      bias()
**
**  GMLscripts.com
*/
{
    if (argument1 < 0.5) return bias(1-argument0,2*argument1)/2;
    else return 1 - bias(1-argument0,2-2*argument1)/2;
}
