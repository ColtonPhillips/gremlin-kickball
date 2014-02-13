/*
**  Usage:
**      point_in_polygon(x,y,polygon);
**
**  Arguments:
**      x,y        a test point, real
**      polygon    ds_list containing XY coordinate pairs defining
**                 the shape of a polygon
**
**  Returns:
**      TRUE if the point is inside the polygon,
**      FALSE otherwise
**
**  GMLscripts.com
*/
{
    var x0,y0,polygon,inside;
    var n,i,poly_x,poly_y,x1,x2,y1,y2,m,b,ix,iy;
    x0 = argument0;
    y0 = argument1;
    polygon = argument2;
    inside = false;
    n = ds_list_size(polygon) div 2;
    i = 0;
    repeat (n) {
        poly_x[i] = ds_list_find_value(polygon, 2*i);
        poly_y[i] = ds_list_find_value(polygon, 2*i+1);
        i += 1;
    }
    poly_x[n] = poly_x[0];
    poly_y[n] = poly_y[0];
    i = 0;
    repeat (n) {
       x1 = poly_x[i];
       y1 = poly_y[i];
       x2 = poly_x[i+1];
       y2 = poly_y[i+1];
       if (((y1 <= y0) && (y2 > y0)) || ((y1 > y0) && (y2 <= y0))) {
           if (x1 == x2) {
               if (x1 > x0) inside = !inside;
           }else{
               m = (y2 - y1) / (x2 - x1);
               b = y1 - m * x1;
               ix = (y0 - b) / m;
               iy = y0;
               if (ix > x0) inside = !inside;
           }
       }
       i += 1;
    }
    return inside;
}
