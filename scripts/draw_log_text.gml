///draw_log_text(x,y,string,color)
var str, sub_str, tag_col,str_tag_col, xx, yy, base_col, total_width, str_pos, str_pos_final;
yy = argument1
str = argument2
base_col = argument3
while(string_pos('[c=',str) != 0)
{
    str_pos = string_pos('[c=',str)
    str = string_delete(str,str_pos,string_pos(']',str) - str_pos + 1)
    str_pos = string_pos('[/c]',str)
    str = string_delete(str,str_pos,4)
}
xx = argument0 - string_width(str)/2
str = argument2
draw_set_halign(fa_left)
//show_debug_message(str)
while(string_pos('[c=',str) != 0)
{
    //get the position of the tag
    str_pos = string_pos('[c=',str)
    sub_str = ''
    for(var i = 1; i < str_pos; i++)
        sub_str += string_char_at(str,i)
    draw_text_color(xx,yy,sub_str,base_col,base_col,base_col,base_col,1)
    str = string_delete(str,1,3 + string_length(sub_str))
    //show_debug_message(str)
    //get the tag color
    str_tag_col = ''
    str_pos_final = string_pos(']',str)
    for(var i = str_pos; i < str_pos_final; i++)
        str_tag_col += string_char_at(str,i)
    str = string_delete(str,str_pos,string_length(str_tag_col)+1)
    if str_tag_col = 'rainbow'
        tag_col = make_colour_hsv(current_time * 17 / 200 % 255,255,200)
    else
        tag_col = real(string_digits(str_tag_col))
    //show_debug_message(str_tag_col)
    //get the sub text
    sub_str = ''
    str_pos_final = string_pos('[/c]',str)
    for(var i = str_pos; i < str_pos_final; i++)
        sub_str += string_char_at(str,i)
    str = string_delete(str,str_pos,string_length(sub_str)+4)
    //show_debug_message(sub_str)
    //draw the first part of the text
    var o_col = c_black
    draw_text_color(xx-1,yy-1,sub_str,o_col,o_col,o_col,o_col,1)
    draw_text_color(xx-1,yy+1,sub_str,o_col,o_col,o_col,o_col,1)
    draw_text_color(xx+1,yy-1,sub_str,o_col,o_col,o_col,o_col,1)
    draw_text_color(xx+1,yy+1,sub_str,o_col,o_col,o_col,o_col,1)
    draw_text_color(xx,yy,sub_str,tag_col,tag_col,tag_col,tag_col,1)
    xx += string_width(sub_str)
    
    //draw uncolored text up to the next tag
    str_pos = string_pos('[c=',str)
    if str_pos != 0   
    {
        sub_str = ''
        for(var i = 1; i < str_pos; i++)
            sub_str += string_char_at(str,i)
        str = string_delete(str,1,str_pos - 1)
       // show_debug_message(sub_str)
        draw_text_color(xx,yy,sub_str,base_col,base_col,base_col,base_col,1)
        xx += string_width(sub_str)
    }
}
draw_text_color(xx,yy,str,base_col,base_col,base_col,base_col,1)
//show_debug_message(str)
draw_set_halign(fa_center)