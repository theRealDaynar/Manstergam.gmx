///m_soporific_powder()
var action = 0;
var stam_cost =5
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
    return "Soporific Powder"
break;
case 3:
    return "fdssavasg"
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    with(target)
    {
        sleep_level += .5 * (1 + hex_level)
        dmg = other.atk;
        event_user(0)
    }
    stam -= stam_cost
}