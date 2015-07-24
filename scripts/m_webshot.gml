///m_webshot(1 - targeting type, 2 - name, 3 - description)
var action = 0;
var stam_cost = 1
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
    return "Webshot"
break;
case 3:
    return "Deals 1 * attack damage to the selected target, and lowers their speed by 1."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    with(target)
    {
        dmg = other.atk;
        event_user(0)
        spd_mod --
    }
    stam -= stam_cost
}