/*
**  Usage:
**      string_trim(str)
**
**  Arguments:
**      str     a string of text
**
**  Returns:
**      the given string with whitespace stripped
**      from the beginning and end.
**
**  Notes:
**      Whitespace is defined as horizontal tab, newline,
**      vertical tab, form feed, carriage return, space
**
**  GMLscripts.com
*/
{
    var str,l,r,o;
    str = argument0;
    l = 1;
    r = string_length(str);
    repeat (r) {
        o = ord(string_char_at(str,l));
        if ((o > 8) && (o < 14) || (o == 32)) l += 1;
        else break;
    }
    repeat (r-l) {
        o = ord(string_char_at(str,r));
        if ((o > 8) && (o < 14) || (o == 32)) r -= 1;
        else break;
    }
    return string_copy(str,l,r-l+1);
}
