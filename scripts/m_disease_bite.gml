///m_poison_bite()
var action = 0;
var atk_pwr = 4;
var stam_cost =8
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
    return "Disease Bite"
break;
case 3:
    return "Bio strength attack, 1/2 disease build up."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    var tags = ds_list_create()
    ds_list_add(tags,"bio","str")
    deal_damage(target,atk_pwr * str * lvld,tags)
    update_buffs(target,"disease",.5)
    stam -= stam_cost
}
