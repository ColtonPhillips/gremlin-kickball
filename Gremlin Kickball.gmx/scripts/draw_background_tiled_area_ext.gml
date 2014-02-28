/*
**  Usage:
**      draw_background_tiled_area_ext(background,x,y,x1,y2,x2,y2,color,alpha)
**
**  Arguments:
**      background  the background to be drawn
**      x,y         the offset of the tiled area, as defined by a point 
**                  the background will/would be drawn
**      x1,y1       top left corner of the rectangle defining the area
**      x2,y2       bottom right corner of the area
**      color       the color mask that you want to blend the background with
**      alpha       the alpha value to draw it at
**
**  Notes:
**      x1 MUST be less than x2, and y1 less than y2
**      (x,y) doesn't have to be in the area, but if it is, then some
**      drawn background will have it's origin at this point
**
**  GMLscripts.com
*/
/*
{
    var bg,xx,yy,x1,y1,x2,y2;
    bg = argument0;
    xx = argument1;
    yy = argument2;
    x1 = argument3;
    y1 = argument4;
    x2 = argument5;
    y2 = argument6;
    var bw,bh,i,j,jj,left,top,width,height,X,Y;
    bw = background_get_width(bg);
    bh = background_get_height(bg);
    i = x1-((x1 mod bw) - (xx mod bw)) - bw*((x1 mod bw)<(xx mod bw));
    j = y1-((y1 mod bh) - (yy mod bh)) - bh*((y1 mod bh)<(yy mod bh)); 
    jj = j;
    for(i=i; i<=x2; i+=bw) {
        for(j=j; j<=y2; j+=bh) {
            if(i <= x1) left = x1-i;
            else left = 0;
            X = i+left;
            if(j <= y1) top = y1-j;
            else top = 0;
            Y = j+top;
            if(x2 <= i+bw) width = ((bw)-(i+bw-x2)+1)-left;
            else width = bw-left;
            if(y2 <= j+bh) height = ((bh)-(j+bh-y2)+1)-top;
            else height = bh-top;
            draw_background_part_ext(bg,left,top,width,height,X,Y,1,1,argument8,argument9);
        }
        j = jj;
    }
}
*/
