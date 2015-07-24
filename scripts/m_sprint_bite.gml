///m_sprint_bite()
var action = 0;
var atk_pwr = 7;
var stam_cost = 8
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
    return "Sprint bite"
break;
case 3:
    return "Deals 1 * attack damage to the selected target."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    with(target)
    {
        tags = ds_list_create()
ds_list_add(tags,"normal","str")
        dmg = atk_pwr * other.str;
        event_user(0)
    }
    if ds_map_exists(buffs,"Sprinting")
    {
        ds_map_delete(buffs,"Sprinting")
        spd_mod_percent --
    }
    stam -= stam_cost
break;
case m_IMI_ACTION:
    ds_map_add(buffs,"Sprinting",1)
    spd_mod_percent ++
}