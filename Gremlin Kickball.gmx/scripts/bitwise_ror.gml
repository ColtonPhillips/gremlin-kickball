/*
**  Usage:
**      bitwise_ror(n,count,size)
**
**  Arguments:
**      n           number to be rotated right
**      count       number of bits to rotate
**      size        size of number in bits
**
**  Returns:
**      the given number rotated to the right by given number of bits
**
**  GMLscripts.com
*/
{
    var n,count,size;
    n = argument0;
    count = argument1;
    size = argument2;
    return (n >> count) | ((n << (size - count)) & (1 << size)-1);
}
