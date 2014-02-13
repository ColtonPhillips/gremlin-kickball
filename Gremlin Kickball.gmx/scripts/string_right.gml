/*
**  Usage:
**      string_right(str,num)
**
**  Arguments:
**      str     a string of text
**      num     number of characters
**
**  Returns:
**      the given number of characters from the
**      end of the given string
**
**  GMLscripts.com
*/
{
    return (string_delete(argument0,1,string_length(argument0)-argument1));
}
