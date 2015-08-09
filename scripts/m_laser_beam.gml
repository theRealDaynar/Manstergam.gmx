///m_laser_beam()
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
    var ele = "arcane"
    if ds_exists(target.resistances,ds_type_map)
    {
        var arcane = 1
        var heat = 1
        if ds_map_exists(target.resistances,"heat")
            heat = target.resistances[? "heat"]
        if ds_map_exists(target.resistances,"arcane")
            arcane = target.resistances[? "arcane"]
        if heat > arcane
            ele = "heat"
    }
    ds_list_add(tags,ele,"pow")
    deal_damage(target,atk_pwr * pow * lvld,tags)
    stam -= stam_cost
}