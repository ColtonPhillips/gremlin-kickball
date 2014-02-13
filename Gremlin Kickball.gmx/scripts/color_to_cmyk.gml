/*
**  Usage:
**      color_to_cmyk(color [, channel])
**
**  Arguments:
**      color       24-bit Game Maker color
**      channel     color channel to return, 1 = Cyan,
**                  2 = Magenta, 3 = Yellow, 4 = Key/Black (optional)
**
**  Returns:
**      a ds_list containing CMYK values of the given color,
**      or optionally the value of a specific color channel
**
**  GMLscripts.com
*/
{
    var C,M,Y,K,cmyk;
    C = 1 - color_get_red(argument0) / 255;
    M = 1 - color_get_green(argument0) / 255;
    Y = 1 - color_get_blue(argument0) / 255;
    K = min(C,M,Y,1);
    if (K == 1) {
        C = 0;
        M = 0;
        Y = 0;
    }else{
        C = (C - K) / (1 - K);
        M = (M - K) / (1 - K);
        Y = (Y - K) / (1 - K);
    }
    switch (argument1) {
        case 1: return C;
        case 2: return M;
        case 3: return Y;
        case 4: return K;
    }
    cmyk = ds_list_create();
    ds_list_add(cmyk, C);
    ds_list_add(cmyk, M);
    ds_list_add(cmyk, Y);
    ds_list_add(cmyk, K);
    return cmyk;
}
