///m_dement()
var action = 0;
var stam_cost = 8
var atk_pwr = 4;
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
    return "Dement"
break;
case 3:
    return "Low damage power dark attack. 1/2 frighten build up."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    var tags = ds_list_create()
    ds_list_add(tags,"dark","pow")
    deal_damage(target,atk_pwr * pow * lvld,tags)
    update_buffs(target,"fear",.5)
    stam -= stam_cost
}