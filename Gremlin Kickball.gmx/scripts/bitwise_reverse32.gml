/*
**  Usage:
**      bitwise_reverse32(n)
**
**  Arguments:
**      n       a 32-bit integer
**
**  Returns:
**      the given number with bits in reverse order
**
**  GMLscripts.com
*/
{
    var n;
    n = argument0;
    n = (n & $55555555) <<  1 | (n & $AAAAAAAA) >>  1; 
    n = (n & $33333333) <<  2 | (n & $CCCCCCCC) >>  2; 
    n = (n & $0F0F0F0F) <<  4 | (n & $F0F0F0F0) >>  4; 
    n = (n & $00FF00FF) <<  8 | (n & $FF00FF00) >>  8; 
    n = (n & $0000FFFF) << 16 | (n & $FFFF0000) >> 16; 
    return n;
}
