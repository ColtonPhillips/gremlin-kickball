/*
**  Usage:
**      wavelength_to_hue(wavelength)
**
**  Arguments:
**      wavelength       wavelength of a color, nanometers
**
**  Returns:
**      Approximation of the hue of a color with the given wavelength
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
    return (sqrt((argument0 - 650) / 0.0072) + 156.75);
}
