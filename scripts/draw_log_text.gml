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
//show_debug_message(str)
xx = argument0 - string_width(str)/2

str = argument2

draw_set_halign(fa_left)

    var pos = 999999
    var index = -1
    var temp_pos = 0
    for(var i = 0;i<ds_grid_width(WH);i++)
    {
        temp_pos = string_pos(WH[# i, 0],str)
        if temp_pos > 0 and temp_pos < pos
        {
            pos = temp_pos
            index = i
        }
    }
    temp_pos = string_pos("[c=",str)
    if temp_pos > 0 and temp_pos < pos
    {
        pos = temp_pos
        sub_str = ''
        for(var i = 1; i < pos; i++)
            sub_str += string_char_at(str,i)
        draw_text_color(xx,yy,sub_str,base_col,base_col,base_col,base_col,1)
        xx += string_width(sub_str)
        //show_debug_message(xx)
        str = string_delete(str,1,pos + 2)
        //show_debug_message(str)
        sub_str = ''
        pos = string_pos(']',str)
        for(var i = 1; i < pos; i++)
            sub_str += string_char_at(str,i)
        str = string_delete(str,1,pos)
        //show_debug_message(str)
        if sub_str = 'rainbow'
            tag_col = make_colour_hsv(current_time * 17 / 200 % 255,255,200)
        else
            tag_col = real(string_digits(sub_str))
        //get the sub text
        sub_str = ''
        pos = string_pos('[/c]',str)
        //if no end tag all the text will be colored
        if pos <= 0
            pos = string_length(str) + 1
        for(var i = 1; i < pos; i++)
            sub_str += string_char_at(str,i)
        str = string_delete(str,1,pos+3)
        //show_debug_message(str)
        draw_text_outline(xx,yy,sub_str,tag_col,c_black)
        xx += string_width(sub_str)
        var true_str = str;
        while(string_pos('[c=',str) != 0)
        {
            str_pos = string_pos('[c=',str)
            str = string_delete(str,str_pos,string_pos(']',str) - str_pos + 1)
            str_pos = string_pos('[/c]',str)
            str = string_delete(str,str_pos,4)
        }
        draw_log_text(xx + string_width(str)/2,yy,true_str,base_col)
    }
    else if index = -1
    {
        draw_text_color(xx,yy,str,base_col,base_col,base_col,base_col,1)
    }
    else
    {
        sub_str = ''
        for(var i = 1; i < pos; i++)
            sub_str += string_char_at(str,i)
        draw_log_text(xx + string_width(sub_str)/2,yy,sub_str,base_col)
        xx += string_width(sub_str)
        draw_text_outline(xx,yy,WH[# index, 0],WH[# index, 1],c_black)
        xx += string_width(WH[# index, 0])
        str = string_delete(str,1,pos - 1 + string_length(WH[# index, 0]))
        var true_str = str;
        while(string_pos('[c=',str) != 0)
        {
            str_pos = string_pos('[c=',str)
            str = string_delete(str,str_pos,string_pos(']',str) - str_pos + 1)
            str_pos = string_pos('[/c]',str)
            str = string_delete(str,str_pos,4)
        }
        draw_log_text(xx + string_width(str)/2,yy,true_str,base_col)
    }
draw_set_halign(fa_center)
/*
str = argument2

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