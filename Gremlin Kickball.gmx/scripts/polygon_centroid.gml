/*
**  Usage:
**      polygon_centroid(polygon)
**
**  Description:
**      Takes a list of points defining the boundary of a polygon
**      and returns the area enclosed within. This function also
**      computes the centroid of a polygon and stores their 
**      coordinate values into a pair of global variables.
**
**  Arguments:
**      polygon    ds_list containing XY coordinate pairs defining
**                 the shape of a polygon
**
**  Returns:
**      area                area of the polygon, if negative the
**                          polygon is clockwise
**      global.xCentroid    x coordinate of centroid of polygon
**      global.yCentroid    y coordinate of centroid of polygon
**
**  Notes:
**      Polygons are closed figures, the first point in the polygon
**      will also be considered the last point in the polygon.
**      Polygons must be simple, which means they can not have
**      edges that cross each other.
**
**  Example:
**      in:  polygon = [ 100,100,  100,200,  200,200,  200,100 ]
**           (a square polygon: four coordinate pairs)
**      out: 10000
**      centroid: (150,150)
**
**  GMLscripts.com
*/
{
    var ai,atmp,xtmp,ytmp,i,j,x1,y1,x2,y2;
    atmp = 0;
    xtmp = 0;
    ytmp = 0;
    global.xCentroid = 0;
    global.yCentroid = 0;
    j = ds_list_size(polygon);
    for (i=0; i<j div 2; i+=1) {
        x1 = ds_list_find_value(polygon,(2*i)   mod j);
        y1 = ds_list_find_value(polygon,(2*i+1) mod j);
        x2 = ds_list_find_value(polygon,(2*i+2) mod j);
        y2 = ds_list_find_value(polygon,(2*i+3) mod j);
        ai = x1*y2 - x2*y1;
        atmp += ai;
        xtmp += (x2 + x1) * ai;
        ytmp += (y2 + y1) * ai;
    }
    if (atmp != 0) {
        global.xCentroid = xtmp / (3 * atmp);
        global.yCentroid = ytmp / (3 * atmp);
    }
    return atmp / 2;
}
