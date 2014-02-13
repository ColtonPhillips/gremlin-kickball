/*
**  Usage:
**      string_random(str,count)
**
**  Arguments:
**      str         a set of characters, string
**      count       number of characters to return
**
**  Returns:
**      a string of random characters selected from
**      the given set and as long as the given count
**
**  Notes:
**      If the given set is an empty string, all 256
**      possible characters will be used as the set.
**
**  GMLscripts.com
*/
{
    var str,cnt,out,len;
    str = argument0;
    cnt = argument1;
    out = "";
    len = string_length(str);
    if (len > 0) {
        repeat (cnt) out += string_char_at(str,floor(random(len))+1);
    }else{
        repeat (cnt) out += chr(floor(random(256)));
    }
    return out;
}
