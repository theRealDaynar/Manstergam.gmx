///m_fever_scratch()
var action = 0;
var atk_pwr = 5;
var stam_cost =7;
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
    return "Fever Scratch"
break;
case 3:
    return "Deals minor strength bio damage, 1/2 fever build up."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    var tags = ds_list_create()
    ds_list_add(tags,"bio","str")
    deal_damage(target,atk_pwr * str * lvld,tags)
    update_buffs(target,"fever",.2)
    stam -= stam_cost
}