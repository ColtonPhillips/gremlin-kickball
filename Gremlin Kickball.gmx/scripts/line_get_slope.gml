/*
**  Usage:
**      line_get_slope(x1,y1,x2,y2)
**
**  Arguments:
**      x1,y1       1st point on line
**      x2,y2       2nd point on line
**
**  Returns:
**      the slope of the given line
**
**  Notes:
**      This will cause a divide by zero error if y1 equals y2.
**
**  GMLscripts.com
*/
{
    return ( (argument3 - argument1) / (argument2 - argument0) );
}
