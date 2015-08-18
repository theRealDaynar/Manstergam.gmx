///m_holy_water()
var action = 0;
var stam_cost = 7
var atk_pwr = 7
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
    return "Laser Beam"
break;
case 3:
    return "High damage normal strength attack."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    tags = ds_list_create()
    var ele = "light"
    if ds_exists(target.resistances,ds_type_map)
    {
        var light = 1
        var water = 1
        if ds_map_exists(target.resistances,"water")
            water = target.resistances[? "water"]
        if ds_map_exists(target.resistances,"light")
            light = target.resistances[? "light"]
        if water > light
            ele = "water"
    }
    ds_list_add(tags,ele,"dex")
    deal_damage(target,atk_pwr * dex * lvld,tags)
    stam -= stam_cost
}