/*
**  Usage:
**      string_ucfirst(str)
**
**  Arguments:
**      str     a string of text
**
**  Returns:
**      the given string with the first character capitalized
**
**  GMLscripts.com
*/
{
    var str,out;
    str = argument0;
    out = string_upper(string_char_at(str,1));
    out += string_copy(str,2,string_length(str)-1);
    return out;
}
