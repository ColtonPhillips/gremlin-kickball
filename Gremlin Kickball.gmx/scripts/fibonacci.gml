/*
**  Usage:
**      fibonacci(n)
**
**  Arguments:
**      n       desired Fibonacci number, non-negative integer
**
**  Returns:
**      the nth number of the Fibonacci sequence
**
**  Note:
**      This function is accurate for the first 75 Fibonacci numbers.
**      Precision problems in Game Maker 6 limit it to the first 32.
**
**  GMLscripts.com
*/
{
    return round(power((1+sqrt(5))/2,argument0)/sqrt(5));
}
