///m_tremor()
var action = 0;
var atk_pwr = 10;
var stam_cost = 15
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
    return "Tremor"
break;
case 3:
    return "Dexterity based water attack."
break;
case m_AREAREQ:
    return 1
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    area = 0
    untargetable = 0
    var tags = ds_list_create()
    ds_list_add(tags,"earth","str")
    deal_damage(target,atk_pwr * str * lvld,tags)
    stam -=stam_cost
}