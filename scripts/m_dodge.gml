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
    return "Fly into the air for a turn then deal damage."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    dodge_timer = 2
stam -= stam_cost
}