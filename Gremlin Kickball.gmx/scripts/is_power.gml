/*
**  Usage:
**      is_power(value,base)
**
**  Arguments:
**      value       a number, real
**      base        an exponential base, real
**
**  Returns:
**      TRUE if the given value is a power of the given base,
**      (-1) if the result is undefined,
**      FALSE otherwise
**
**  GMLscripts.com
*/
{
    var value,base;
    value = argument0;
    base = argument1;
    if (argument1 == 0 && argument0 == 0) return -1;
    if (argument1 == 1 || argument0 == 1) return true;
    if (argument0 == 0 || argument1 == 0) return false;
    return ((logn(argument1,argument0) mod 1) == 0);
}
