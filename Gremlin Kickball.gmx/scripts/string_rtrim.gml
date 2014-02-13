/*
**  Usage:
**      string_rtrim(str)
**
**  Arguments:
**      str     a string of text
**
**  Returns:
**      the given string with whitespace stripped
**      from the end (right).
**
**  Notes:
**      Whitespace is defined as horizontal tab, newline,
**      vertical tab, form feed, carriage return, space
**
**  GMLscripts.com
*/
{
    var str,r,o;
    str = argument0;
    r = string_length(str);
    repeat (r) {
        o = ord(string_char_at(str,r));
        if ((o > 8) && (o < 14) || (o == 32)) r -= 1;
        else break;
    }
    return string_copy(str,1,r);
}
