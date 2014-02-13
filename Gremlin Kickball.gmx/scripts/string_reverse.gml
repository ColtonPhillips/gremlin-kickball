/*
**  Usage:
**      string_reverse(str)
**
**  Arguments:
**      str     string to be reversed
**
**  Returns:
**      the given string with the characters in reverse order
**
**  GMLscripts.com
*/
{
    var out,i;
    out = "";
    for(i=string_length(argument0);i>0;i-=1) {
        out += string_char_at(argument0,i);
    }
    return out;
}
