/*
**  Usage:
**      exp_dist(x)
**
**  Arguments:
**      x       upper bound of desired random value
**  Returns:
**      a random number from 0 to x with an exponential ditribution
**
**  GMLscripts.com
*/
{
    return argument0 * (-ln(random(1)))
}
