///m_avalanche()
var action = 0;
var stam_cost = 12
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
    return "Avalanche"
break;
case 3:
    return "Deals 1 * attack damage to the selected target."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    var tags = ds_list_create()
    ds_list_add(tags,"earth","str")
    deal_damage(target,atk_pwr * str * lvld,tags)
    stam -= stam_cost
}
