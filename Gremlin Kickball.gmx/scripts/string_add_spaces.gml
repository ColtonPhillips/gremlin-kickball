/*
**  Usage:
**      string_add_spaces(str)
**
**  Arguments:
**      str         string to add spaces to
**
**  Returns:
**      the given string with spaces in between each letter
**
**  GMLscripts.com
*/
{
    var str,len;
    str = argument0;
    len = string_length(str);
    for (j=len; j>0; j-=1) str = string_insert(' ', str, j);
    return str;
}
