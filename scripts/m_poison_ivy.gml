///m_poison_ivy()
var action = 0;
var stam_cost = 6
var atk_pwr = 8;
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
    return "Poison Ivy"
break;
case 3:
    return "Dexterity based nature attack."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
        var tags = ds_list_create()
        ds_list_add(tags,"dex","nature")
    deal_damage(target,atk_pwr * dex * lvld,tags)
    stam -= stam_cost
}
