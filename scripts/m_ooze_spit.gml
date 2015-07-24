///m_ooze_spit(1 - targeting type, 2 - name, 3 - description)
var action = 0;
var stam_cost = 4
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
    return "Ooze Spit"
break;
case 3:
    return "Deals 1 * attack damage to the selected target, and lowers their speed by 1."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    with(target)
    {
tags = ds_list_create()
        ds_list_add(tags,"nature","dex","projectile")
        dmg = 7 * other.dex;
        event_user(0)
        spd_mod --
    }
    stam -= stam_cost
}