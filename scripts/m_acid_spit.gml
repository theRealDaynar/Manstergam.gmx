///m_acid_spit()
var action = 0;
var stam_cost = 6
var atk_pwr = 5
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
    return "Acid Spit"
break;
case 3:
    return "Deals moderate dexterity based bio damage and lowers targets defenses."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    var tags = ds_list_create()
    ds_list_add(tags,"bio","dex","projectile")
    deal_damage(target,atk_pwr * dex * lvld,tags)
    update_defense(target,-1)
    stam -= stam_cost
}
