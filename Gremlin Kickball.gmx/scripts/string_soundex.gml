/*
**  Usage:
**      string_soundex(str)
**
**  Arguments:
**      str     a string of text
**
**  Returns:
**      the Soundex value of the given string
**
**  Notes:
**      Soundex returns similar values for words
**      which sound similar in spoken English.
**
**  GMLscripts.com
*/
{
    var str,len,tab,out,last,pos,char,val;
    str = string_upper(string_letters(argument0));
    len = string_length(str);
    if (len == 0) return "";
    tab = "01230120022455012623010202";
    out = string_char_at(str,1);
    last = out;
    for (pos=2; pos<=len; pos+=1) {
        char = string_char_at(str,pos);
        if (char == last) continue;
        last = char;
        val = string_char_at(tab,ord(char)-64);
        if (val == "0") continue;
        out += val;
    }
    out = string_copy(out+"000",1,4);
    return out;
}
