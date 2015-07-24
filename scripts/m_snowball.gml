///m_snowball()
var action = 0;
var atk_pwr = 8;
var stam_cost = 6
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
    return "Snowball"
break;
case 3:
    return "Dexterity based cold attack."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    with(target)
    {
tags = ds_list_create()
ds_list_add(tags,"cold","dex","projectile")
        dmg = atk_pwr * other.dex;
        event_user(0)
    }
    stam -= stam_cost
}
