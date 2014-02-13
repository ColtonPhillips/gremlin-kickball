/*
**  Usage:
**      factorial(number)
**
**  Given:
**      number      an integer
**
**  Returns:
**      the factorial of the given number
**
**  GMLscripts.com
*/
{
    if (argument0 <= 1) return 1;
    else return argument0 * factorial(argument0 - 1);
}
