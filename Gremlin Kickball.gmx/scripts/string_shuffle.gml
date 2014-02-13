/*
**  Usage:
**      string_shuffle(str)
**
**  Arguments:
**      str         a set of characters, string
**
**  Returns:
**      the given string with characters shuffled
**
**  GMLscripts.com
*/
{
    var str,out,len,i;
    str = argument0;
    out = "";
    do {
        len = string_length(str);
        i = floor(random(len))+1;
        out += string_char_at(str,i);
        str = string_delete(str,i,1);
    } until (len <= 1);
    return out;
}
