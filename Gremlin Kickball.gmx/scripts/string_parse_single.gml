/*
**  Usage:
**      string_parse_single(str,token,N,ignore_null)
**
**  Arguments:
**      str         a string with a certain token seperating the
**                  desired substrings,  string
**      token       a string (usually a single variable) representing
**                  the character(s) that str is seperated by,  string
**      N           which substring to grab, starting with 1 = the first
**                  2 = the second, etc...
**      ignore_null whether or not to include empty strings if, for
**                  example, the token was repeated,  bool (true/false)
**                   
**  Returns:
**      -the Nth substring of str from parsing the string using token
**       as the separating string.
**      -returns the separator token if an error occored (i.e. there are not
**       enough substrings)
**
**  Example:
**      string_parse_single("cat|dog|house|bee", "|", 2, true);
**      returns "dog"
**
**  GMLscripts.com
*/
{
    var str, token, substr, ignore, N, tlen, temp, i;
    str = argument0;
    token = argument1;
    N = argument2;
    ignore = argument3;
    tlen = string_length( token);
    substr = "";
    i = 0;
    while( string_length( str) != 0 && i < N) {
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
    if( i != N)
        return "";
    else
        return substr;
}
