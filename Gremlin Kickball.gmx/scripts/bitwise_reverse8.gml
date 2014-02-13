/*
**  Usage:
**      bitwise_reverse8(n)
**
**  Arguments:
**      n       an 8-bit integer
**
**  Returns:
**      the given number with bits in reverse order
**
**  GMLscripts.com
*/
{
    var n;
    n = argument0;
    n = (n & $55) <<  1 | (n & $AA) >>  1; 
    n = (n & $33) <<  2 | (n & $CC) >>  2; 
    n = (n & $0F) <<  4 | (n & $F0) >>  4; 
    return n;
}
