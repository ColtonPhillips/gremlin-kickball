/*
**  Usage:
**      string_stagger_case(str,spaces,first)
**
**  Arguments:
**      str         string to modify
**      spaces      count spaces as letters, true or false
**      first       first letter capitalized, true or false
**
**  Returns:
**      the given string with the letters in staggered case, 
**      such as: "hElLo! hOw ArE yOu ToDaY?"
**
**  GMLscripts.com
*/
{
    var new,iii,len,old,j;
    new = argument0;
    iii = argument2;
    len = string_length(new);
    old = ''; 
    for (j=1; j<=len; j+=1) {
        if (string_char_at(new,j) == ' ' && argument1 == false) continue;
        if (iii) old = string_upper(string_char_at(new,j)); 
        else     old = string_lower(string_char_at(new,j)); 
        new = string_delete(new,j,1); 
        new = string_insert(old,new,j); 
        iii = !iii;
    }
    return new;
}
