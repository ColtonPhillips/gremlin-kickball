/*
**  Usage:
**      ds_list_flip(dsid)
**
**  Arguments:
**      dsid        ds_list to have its elements 
**                  rearranged in reverse order
**
**  Returns:
**      nothing
**
**  GMLscripts.com
*/
{
    var dsid,i;
    dsid = argument0; 
    for(i=ds_list_size(dsid);i>=0;i-=1) {
        ds_list_add(dsid,ds_list_find_value(dsid,i));
        ds_list_delete(dsid,i);
    }
}
