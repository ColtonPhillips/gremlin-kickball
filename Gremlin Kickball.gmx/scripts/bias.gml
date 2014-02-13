/*
**  Usage:
**      bias(b,t)
**
**  Arguments:
**      b       bais, real
**      t       value, real
**
**  Returns:
**      If (t) varies over the [0,1] interval, then
**      the result also varies over that interval.
**      The zero and one endpoints of the interval
**      are mapped onto themselves. Other values
**      are shifted upward toward one if (b) is
**      greater than one, and shifted downward
**      toward zero if (b) is between zero and one.
**
**  GMLscripts.com
*/
{
	return power(argument1,ln(argument0)/ln(0.5));
}
