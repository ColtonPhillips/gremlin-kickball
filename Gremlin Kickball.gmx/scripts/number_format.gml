/*
**  Usage:
**      number_format(n,dec,pnt,sep)
**
**  Arguments:
**      n       a real number
**      dec     number of decimal places (optional)
**      pnt     character to use to mark decimals (optional)
**      sep     character to use to separate thousands (optional)
**
**  Returns:
**      a string representing the given number rounded to the given
**      number of decimal places and with the given characters used
**      for the decimal point and thousands seperator.
**
**  GMLscripts.com
*/
{
    var n,dec,pnt,sep,out,pos,i;
    n = argument0;
    dec = argument1;
    pnt = argument2;
    sep = argument3;
    if (!is_string(pnt)) pnt = ".";
    if (!is_string(sep)) sep = ",";
    out = string_format(abs(n),0,dec);
    pos = string_pos(".",out);
    if (pos == 0) pos = string_length(out)+1;
    else out = string_replace(out,".",pnt);
    for (i=pos-3; i>1; i-=3) out = string_insert(sep,out,i);
    if (n < 0) out = "-" + out;
    return out;
}
