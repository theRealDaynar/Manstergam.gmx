///m_break()
var action = 0;
var stam_cost =6
if argument_count != 0
    action = argument[0]
switch(action)
{
case 1:
    return 0;
break;
case 2:
    return "Break"
break;
case 3:
    return "Dark strength attack, returns all buffed stats to their natural states."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    with(target)
    {
        ds_map_destroy(buffs)
        buffs = ds_map_create()
        if spd_mod > 0
            spd_mod = 0
        if spd_mod_percent > 1
            spd_mod_percent = 1
        if def_mod > 0
            def_mod = 0
        if def_mod_percent > 1
            def_mod_percent = 1
    }
    stam -= stam_cost
}
