///m_geokinesis()
var action = 0;
var stam_cost = 8;
var atk_pwr = 7;
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
    return "Geokinesis"
break;
case 3:
    return "Power based cold damage."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    var tags = ds_list_create()
    ds_list_add(tags,"earth","pow","snipe")
    deal_damage(target,atk_pwr * pow * lvld,tags)
    stam -= stam_cost
}