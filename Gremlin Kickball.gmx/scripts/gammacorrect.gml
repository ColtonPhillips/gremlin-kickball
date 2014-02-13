/*
**  Usage:
**      out = gammacorrect(gamma,t);
**
**  Arguments:
**      gamma       correction value, real
**      t           value, real
**
**  Returns:
**      If (t) varies over the [0,1] interval, then
**      the result also varies over that interval.
**      The zero and one endpoints of the interval
**      are mapped onto themselves. Other values
**      are shifted upward toward one if (gamma) is
**      greater than one, and shifted downward
**      toward zero if (gamma) is between zero and one.
**
**  GMLscripts.com
*/
{
    return power(argument1,1/argument0);
}
