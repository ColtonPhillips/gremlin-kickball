/*
**  Usage:
**      string_rpad(str,length,padstr)
**
**  Arguments:
**      str         a string of text
**      length      the desired length of the string
**      padstr      character(s) to use for padding
**
**  Returns:
**      the given string padded on the right to the
**      given length with the given padding string
**
**  Example:
**      string_lpad("1234",7,"00") ==> "1234000"
**
**  GMLscripts.com
*/
{
    var str,len,pad,padsize,padding,out;
    str = argument0;
    len = argument1;
    pad = argument2;
    padsize = string_length(pad);
    padding = max(0,len - string_length(str));
    out  = str;
    out += string_repeat(pad,padding div padsize);
    out += string_copy(pad,1,padding mod padsize);
    out  = string_copy(out,1,len);
    return out;
}
