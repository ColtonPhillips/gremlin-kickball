/*
**  Usage:
**      string_wordwrap(str,num,break,cut)
**
**  Arguments:
**      str     a string of text
**      num     maximum number of characters before a break
**      break   characters to insert into text
**      cut     if TRUE, words longer than maximum will be split
**
**  Returns:
**      the given string with the given break characters
**      inserted between words at the given interval
**
**  GMLscripts.com
*/
{
    var str,num,brk,cut,out,i,j;
    str = argument0;
    num = argument1;
    brk = argument2;
    cut = argument3;
    out = "";
    if (num < 1) num = 76;
    if (is_real(brk)) brk = "#";
    while (string_length(str)) {
        for (i = num + 1; i > 0; i -= 1) {
            if (string_char_at(str,i) == " ") break;
        }
        if (i == 0) {
            if (cut) {
                j = num;
                i = j;
            }else{
                i = string_pos(" ",str);
                if (i == 0) {
                    j = string_length(str);
                    i = j;
                }else{
                    j = i;
                    i -= 1;
                }
            }
        }else{
            j = i;
            i -= 1;
        }
        out += string_copy(str,1,i) + brk;
        str = string_delete(str,1,j);
    }
    out = string_copy(out,1,string_length(out) - string_length(brk));
    return out;
}
