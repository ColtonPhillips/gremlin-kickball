/*
**  Usage:
**      spline(t,nknots,knotarray)
**
**  Arguments:
**      t            interval [0 to 1], real
**      nknots       number of points in the spline, real
**      knotarray    name of a local array [0 to nknots-1], string
**
**  Returns:
**      if (t) is 0, returns knot[1], if (t) is 1, returns knot[nknots-2],
**      for other values of (t), interpolates smoothly between knot[1]
**      to knot[nknots-2]. Because the spline is a cubic polynomial,
**      there must be at least four knots.
**
**  GMLscripts.com
*/
/*{
    var t,nknots,knotarray,nspans,span,knot,c3,c2,c1,c0;
    t = argument0;
    nknots = argument1;
    knotarray = argument2;
    nspans = nknots - 3;
    if (nspans < 1) return 0; // ERROR: too few knots
    t = min(max(t,0),1) * nspans;
    span = floor(t);
    if (span >= nknots - 3) span = nknots - 3;
    t -= span;
    knot[0] = variable_local_array_get(knotarray,span);
    knot[1] = variable_local_array_get(knotarray,span+1);
    knot[2] = variable_local_array_get(knotarray,span+2);
    knot[3] = variable_local_array_get(knotarray,span+3);
    c3 = -0.5 * knot[0] + 1.5 * knot[1] - 1.5 * knot[2] + 0.5 * knot[3];
    c2 = knot[0] - 2.5 * knot[1] + 2 * knot[2] - 0.5 * knot[3];
    c1 = -0.5 * knot[0] + 0.5 * knot[2];
    c0 = knot[1];
    return ((c3 * t + c2) * t + c1) * t + c0;
}

*/
