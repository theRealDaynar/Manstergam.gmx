///m_quick_peck()
var action = 0;
var stam_cost = 5
if argument_count != 0
    action = argument[0]
switch(action)
{
case m_MTYPE:
    return mt_O
break;
case m_TTYPE:
    return 5;
break;
case m_NAME:
    return "Quick Peck"
break;
case m_DESC:
    return "Double target strength based wind damage."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    with(target)
    {
tags = ds_list_create()
        ds_list_add(tags,"wind","str")
        dmg = 5 * other.str;
        event_user(0)
    }
    stam -= stam_cost
}
