/*
**  Usage:
**      color_mix(color1,color2)
**
**  Arguments:
**      color1      first color
**      color2      second color
**
**  Returns:
**      a 50/50 mixture of the two given colors
**
**  GMLscripts.com
*/
{
    return (argument0 & $fefefe) + (argument1 & $fefefe) >> 1;
}
