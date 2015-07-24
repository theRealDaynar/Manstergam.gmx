///m_scratch()
var stam_cost =5
var action = 0;
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
    return "Scratch"
break;
case 3:
    return "Deals 1 * attack damage to the selected target."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    with(target)
    {
tags = ds_list_create()
        ds_list_add(tags,"normal","str")
        bleed_level += .5 * (1 + hex_level)
        dmg = 6 * other.str;
        event_user(0)
    }
    stam -= stam_cost
}