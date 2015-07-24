///m_life_hack()
var action = 0;
var atk_pwr = 7;
var stam_cost =6;
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
    return "Life_Hack"
break;
case 3:
    return "Power based dark attack."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    with(target)
    {
tags = ds_list_create()
        ds_list_add(tags,"dark","pow","snipe")
        dmg = atk_pwr * other.pow;
        event_user(0)
    }
    stam -= stam_cost
}
