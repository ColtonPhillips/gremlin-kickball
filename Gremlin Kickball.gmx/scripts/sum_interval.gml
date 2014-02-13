/*
**  Usage:
**      sum_interval(m,n)
**
**  Arguments:
**      m       positive integer
**      n       positive integer
**
**  Returns:
**      returns the sum of positive integers 
**      between m and n, inclusive
**
**  GMLscripts.com
*/
{
    var m,n;
    m = floor(min(argument0,argument1));
    n = floor(max(argument0,argument1));
    return (n*n+n)/2 - (m*m+m)/2 + m;
}
