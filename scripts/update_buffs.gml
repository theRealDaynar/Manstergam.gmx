///update_buffs(object,buff,amount)
var m = argument0.buffs
if !ds_exists(m,ds_type_map)
{
    argument0.buffs = ds_map_create()
    m = argument0.buffs
}
var multi = 1;
if ds_map_exists(m,"curse") and argument2 > 0
    multi += ds_map_find_value(m,"curse")
if ds_map_exists(m,argument1)
{
    if ds_map_find_value(m,argument1) > IMMUNE_TEMP
        ds_map_add(m,argument1,argument2 * multi + ds_map_find_value(m,argument1))
}
else
    ds_map_add(m,argument1,argument2 * multi)