/*
**  Usage:
**      spline4(t,knot0,knot1,knot2,knot3)
**
**  Arguments:
**      t              interval, real
**      knot0,1,2,3    points on a spline, real
**
**  Returns:
**      Evaluate the span cubic at (t) using Horners's rule.
**      This is a highly optimized version of spline()
**      for the special case of only four knots.
**
**  GMLscripts.com
*/
{
    var k0,k3,c3,c2,c1,c0;
    if (argument0 <= 0) return argument2;
    if (argument0 >= 1) return argument3;
    k0 = -0.5 * argument1;
    k3 = 0.5 * argument4;
    c3 = k0 + 1.5 * argument2 - 1.5 * argument3 + k3;
    c2 = argument1 - 2.5 * argument2 + 2 * argument3 - k3;
    c1 = k0 + 0.5 * argument3;
    c0 = argument2;
    return ((c3 * argument0 + c2) * argument0 + c1) * argument0 + c0;
}
