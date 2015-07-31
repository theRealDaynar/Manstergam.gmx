///m_ooze_spit(1 - targeting type, 2 - name, 3 - description)
var action = 0;
var stam_cost = 4
var atk_pwr = 7
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
    return "Deals dexterity based bio damage to target and lowers their speed."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    var tags = ds_list_create()
        ds_list_add(tags,"nature","dex","projectile")
    deal_damage(target,atk_pwr * dex * lvld,tags)
    target.spd_mod --
    stam -= stam_cost
}