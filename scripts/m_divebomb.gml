///m_divebomb()
var action = 0;
var stam_cost = 8
var atk_dmg = 6
if argument_count != 0
    action = argument[0]
switch(action)
{
case m_MTYPE:
    return mt_O
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    var tags = ds_list_create()
    ds_list_add(tags,"wind","str")
    deal_damage(target,atk_dmg * str * lvld,tags)
    stam -= stam_cost
break;
case 1:
    return 0;
break;
case 2:
    return "Divebomb"
break;
case 3:
    return "Strength wind attack."
break;
}