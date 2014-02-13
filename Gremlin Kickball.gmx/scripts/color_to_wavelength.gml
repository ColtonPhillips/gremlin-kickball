/*
**  Usage:
**      color_to_wavelength(color)
**
**  Arguments:
**      color       a standard Game Maker RGB color
**
**  Returns:
**      approximate wavelength of the given color in nanometers
**
**  Notes:
**      Human color perception is a subjective, psychological
**      phenomenon. Exactly mapping an RGB color on your monitor
**      to a specific wavelength is not possible. In particular,
**      colors in the purple range will produce spurious results.
**
**  GMLscripts.com
*/
{
    var hue;
    hue = color_get_hue(argument0);
    return (650 - 2.25*hue + 0.0072*hue*hue);
}
