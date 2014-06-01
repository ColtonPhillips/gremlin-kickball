/*
**  Usage:
**      point_in_circle(x,y,cx,cy,r)
**
**  Arguments:
**      x,y         test point
**      cx,cy       center of the circle
**      radius      radius of the circle
**
**  Returns:
**      TRUE if the test point is within the given circle,
**      FALSE otherwise.
**
**  GMLscripts.com
*/
{
    return (point_distance(argument0,argument1,argument2,argument3) <= argument4);
}
