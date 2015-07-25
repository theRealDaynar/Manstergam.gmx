///m_explosive_apple()
var action = 0;
var stam_cost =12
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
    return "Explosive Apple"
break;
case 3:
    return "High damage dexterity nature attack. Cooldown."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    with(target)
    {
        tags = ds_list_create()
        ds_list_add(tags,"nature","dex","projectile")
        dmg = other.dex * 12;
        event_user(0)
    }
    cd[selected_move] = 3
    stam -= stam_cost
}