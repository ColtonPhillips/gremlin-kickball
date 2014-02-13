/*
**  Usage:
**      string_parse_number(str,token,ignore_null)
**
**  Arguments:
**      str         a string with a certain token seperating the
**                  desired substrings,  string
**      token       a string (usually a single variable) representing
**                  the character(s) that str is seperated by,  string
**      ignore_null whether or not to include empty strings if, for
**                  example, the token was repeated,  bool (true/false)
**                   
**  Returns:
**      the number of substrings in str seperating them with token
**
**  Example:
**      string_parse_number("cat|dog|house|bee", "|", true);
**      returns 4
**
**  GMLscripts.com
*/
{
    var str, substr, token, ignore, N, tlen, temp, i;
    str = argument0;
    token = argument1;
    ignore = argument2;
    tlen = string_length( token);
    substr = "";
    i = 0;
    while( string_length( str) != 0) {
        temp = string_pos( token, str);
        if( temp) {
            if( temp != 1 || !ignore) {
                substr = string_copy(str, 1, temp - 1);
                i += 1;
            }
            str = string_copy( str, temp + tlen, string_length( str));
        }
        else {
            substr = str;
            i += 1;
            str = "";
        }
    }
    return i;
}
