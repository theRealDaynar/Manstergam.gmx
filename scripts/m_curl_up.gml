///m_curl_up()
var action = 0;
var stam_cost =4
if argument_count != 0
    action = argument[0]
switch(action)
{
case m_MTYPE:
return mt_B;
break;
case 1:
    return 2;
break;
case 2:
    return "Curl Up"
break;
case 3:
    return "Increase own defense."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    update_defense(id,1)
stam -= stam_cost
}
