///m_dodge()
var stam_cost = 4
var action = 0;
if argument_count != 0
    action = argument[0]
switch(action)
{
case m_PRIORITY:
    return 2;
break;
case m_MTYPE:
return mt_B;
break;
case m_TTYPE:
    return 4;
break;
case m_NAME:
    return "Dodge"
break;
case m_DESC:
    return "All attacks miss you this turn."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    dodge_timer = 2
cd[selected_move] = 1
stam -= stam_cost
}