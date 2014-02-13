/*
**  Usage:
**      is_clockwise(x1,y1,x2,y2,x3,y3);
**
**  Arguments:
**      x1,y1    coordinate pair for the first point
**      x2,y2    coordinate pair for the second point
**      x3,y3    coordinate pair for the third point
**
**  Returns:
**      TRUE if the points are in clockwise order,
**      FALSE if the points are in counter-clockwise order,
**      or (-1) if there is no solution.
**
**  GMLscripts.com
*/
{
    var x1,y1,x2,y2,x3,y3,m,b,cw;
    x1 = argument0;
    y1 = argument1;
    x2 = argument2;
    y2 = argument3;
    x3 = argument4;
    y3 = argument5;
    cw = -1;
    if ((x1 != x2) || (y1 != y2)) {
        if (x1 == x2) {
            cw = (x3 < x2) xor (y1 > y2);
        }else{
            m = (y1 - y2) / (x1 - x2);
            b = y1 - m * x1;
            cw = (y3 > (m * x3 + b)) xor (x1 > x2);
        }
    }
    return cw;
}
