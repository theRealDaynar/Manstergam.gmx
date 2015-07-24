///m_freeze()
var action = 0;
var stam_cost = 6;
if argument_count != 0
    action = argument[0]
switch(action)
{
case m_MTYPE:
    return mt_O
break;
case 1:
    return 0;
break;
case 2:
    return "Freeze"
break;
case 3:
    return "Power based cold damage."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    with(target)
    {
        tag = "ice"
        dmg = other.atk;
        event_user(0)
    }
    stam -= stam_cost
}
