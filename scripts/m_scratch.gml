///m_scratch()
var stam_cost =5
var action = 0;
var atk_pwr = 6
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
    return "Scratch"
break;
case 3:
    return "Deals strength based normal damage, 1/2 bleed build up."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    var tags = ds_list_create()
    ds_list_add(tags,"normal","str")
    deal_damage(target,atk_pwr * str * lvld,tags)
    update_buffs(target,"bleed",.5)
    stam -= stam_cost
}