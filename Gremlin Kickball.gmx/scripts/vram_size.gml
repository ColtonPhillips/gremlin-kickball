/*
**  Usage:
**      vram_size()
**
**  Arguments:
**      none
**
**  Returns:
**      the amount of available video memory in megabytes
**
**  GMLscripts.com
*/
{
    var s,w,i,m;
    i = 0;
    m = 0;
    for (w=256;w>=1;w=w>>1) {
        for(s[i]=surface_create(w,w);surface_exists(s[i]);s[i]=surface_create(w,w)) {
            m += w*w;
            i += 1;
        }
    }
    for (i-=1;i>=0;i-=1) surface_free(s[i]);
    return (m/262144);
}
