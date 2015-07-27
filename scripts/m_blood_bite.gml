///m_blood_bite()
var action = 0;
var atk_pwr = 6;
var stam_cost =7
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
    return "Blood Bite"
break;
case 3:
    return "Dexterity based attack, heals based on damage dealt."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    var tags = ds_list_create()
    ds_list_add(tags,"bio","dex")
    var dmg = deal_damage(target,atk_pwr * dex * lvld,tags)
    var heal_multi = 1;
    if ds_map_find_value(buffs,"bleed") >= 1
        heal_multi ++
    heal_monster(id,ceil(dmg * .5 * heal_multi))
    stam -= stam_cost
}
