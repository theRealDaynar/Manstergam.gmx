///update_buffs(object,buff,amount)
var m = argument0.buffs
if !ds_exists(m,ds_type_map)
{
    argument0.buffs = ds_map_create()
    m = argument0.buffs
}
if argument1 = "immune"
{
    if ds_map_exists(m,argument1)
    {
        if ds_map_find_value(m,argument1) > IMMUNE_TEMP
            ds_map_add(m,argument1,argument2 + ds_map_find_value(m,argument1))
    }
    else
    {
        ds_map_add(m,argument1,argument2)
    if ds_map_exists(m,"curse") and ds_map_find_value(m,"curse") > IMMUNE_TEMP
        ds_map_delete(m,"curse")
    if ds_map_exists(m,"fear") and ds_map_find_value(m,"fear") > IMMUNE_TEMP
        ds_map_delete(m,"fear")
    if ds_map_exists(m,"poison") and ds_map_find_value(m,"poison") > IMMUNE_TEMP
        ds_map_delete(m,"poison")
    if ds_map_exists(m,"bleed") and ds_map_find_value(m,"bleed") > IMMUNE_TEMP
        ds_map_delete(m,"bleed")
    if ds_map_exists(m,"sleep") and ds_map_find_value(m,"sleep") > IMMUNE_TEMP
        ds_map_delete(m,"sleep")
    }
}
else if !ds_exists(m,"immune")
{
var multi = 1;
if ds_map_exists(m,"curse") and argument2 > 0
    multi += ds_map_find_value(m,"curse")
if ds_map_exists(m,argument1)
{
    
    if ds_map_find_value(m,argument1) > IMMUNE_TEMP
    {
        var new_value = argument2 * multi + ds_map_find_value(m,argument1)
        ds_map_delete(m,argument1)
        ds_map_add(m,argument1,new_value)
    }
    else
        ds_list_insert(oBattleController.combat_log,0,"[c="+string(argument0.name_color)+"]" + argument0.name + "is immune.")
    show_debug_message(name + " " + argument1 + " " + string(argument2) + " " + string(m[? argument1]))
}
else
    ds_map_add(m,argument1,argument2 * multi)
}
else
    ds_list_insert(oBattleController.combat_log,0,"[c="+string(argument0.name_color)+"]" + argument0.name + "is immune.")
