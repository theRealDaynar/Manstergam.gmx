///m_chain_whack()
var action = 0;
var atk_pwr = 8;
var stam_cost = 8;
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
    return "Chain Whack"
break;
case 3:
    return "Strength earth attack."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    var tags = ds_list_create()
    ds_list_add(tags,"earth","str")
    deal_damage(target,atk_pwr * str * lvld,tags)
    var tags = ds_list_create()
    ds_list_add(tags,"earth","str")
    deal_damage(id,atk_pwr / 2 * dex * lvld,tags)
    stam -=stam_cost
}