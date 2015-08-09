///m_attack()
var action = 0;
var stam_cost =10
var atk_pwr = 10
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
    return "Body Slam"
break;
case 3:
    return "High damage normal strength attack."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    tags = ds_list_create()
    ds_list_add(tags,"normal","str")
    deal_damage(target,atk_pwr * str * lvld,tags)
    stam -= stam_cost
}