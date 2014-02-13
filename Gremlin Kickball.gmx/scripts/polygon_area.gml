/*
**  Usage:
**      polygon_area(polygon)
**
**  Description:
**      Takes a list of points defining the boundary of a polygon
**      and returns the area enclosed within.
**
**  Arguments:
**      polygon    ds_list containing XY coordinate pairs defining
**                 the shape of a polygon {x0,y0,x1,y1,...,xn,yn}
**
**  Returns:
**      area       area of the polygon, if negative the polygon is 
**                 clockwise
**
**  Notes:
**      Polygons are closed figures, the first point in the polygon
**      will also be considered the last point in the polygon.
**      Polygons must be simple, which means they can not have
**      edges that cross each other.
**
**  Example:
**      in:  polygon = {100,100,100,200,200,200,200,100}
**           (a square polygon with corners at 100,100 and 200,200)
**      out: 10000
**
**  GMLscripts.com
*/
{
    var a,i,j,x1,y1,x2,y2;
    a = 0;
    j = ds_list_size(polygon);
    for (i=0; i<j div 2; i+=1) {
        x1 = ds_list_find_value(polygon,(2*i)   mod j);
        y1 = ds_list_find_value(polygon,(2*i+1) mod j);
        x2 = ds_list_find_value(polygon,(2*i+2) mod j);
        y2 = ds_list_find_value(polygon,(2*i+3) mod j);
        a += x1*y2 - x2*y1;
    }
    return a / 2;
}
