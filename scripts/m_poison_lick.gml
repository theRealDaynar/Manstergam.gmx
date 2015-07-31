///m_poison_lick()
var action = 0;
var atk_pwr = 4;
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
    return "Poison bite"
break;
case 3:
    return "Deals low strength based bio damage, 1/2 poison build up."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    var tags = ds_list_create()
    ds_list_add(tags,"bio","dex")
    deal_damage(target,atk_pwr * str * lvld,tags)
    update_buffs(target,"poison",.5)
    stam -= stam_cost
}
