///m_shround_snipe()
var action = 0;
var atk_pwr = 7;
var stam_cost = 8;
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
    return "Shroud Snipe"
break;
case 3:
    return "Strength based dark damage, cannot miss."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    with(target)
    {
tags = ds_list_create()
        ds_list_add(tags,"dark","str","snipe")
        dmg = atk_pwr * other.str;
        event_user(0)
    }
    stam -= stam_cost 
}
