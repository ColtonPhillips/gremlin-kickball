/*
**  Usage:
**      string_split(str,num,break)
**
**  Arguments:
**      str     a string of text
**      num     number of characters before a break
**      break   characters to insert into text
**
**  Returns:
**      the given string with the given break characters
**      inserted at the given interval
**
**  GMLscripts.com
*/
{
    var str,num,brk,len,i;
    str = argument0;
    num = argument1;
    brk = argument2;
    if (num < 1) num = 76;
    if (is_real(brk)) brk = "#";
    len = string_length(str);
    for (i=len-((len-1) mod num); i>num; i-=num) {
        str = string_insert(brk,str,i);
    }
    return str;
}
