///deal_damage(target, amount, tags)
var dmg = floor(argument1)
var tags = argument2
with(argument0)
{
if ds_map_exists(buffs,"sleep") and ds_map_find_value(buffs,"sleep") >= 1
    ds_map_delete(buffs,"sleep")
var crit = false;
if !ds_exists(tags,ds_type_list)
        tags = ds_list_create()
if (area != 0 or dodge_timer > 0) //or tag = "poison"
   dmg = 0
else
{
    var active_def = 0;
    if  - 1 != ds_list_find_index(tags,"str")
        active_def = def;
    else if - 1 != ds_list_find_index(tags,"dex")
        active_def = res;
    else if - 1 != ds_list_find_index(tags,"pow")
        active_def = aegis;
    if active_def < 1
        active_def = 1
    dmg = dmg/active_def + 1
    if ds_map_exists(buffs,"weakness")
        dmg *= 1 + buffs[? "weakness"]
    if ds_exists(resistances,ds_type_map)
        for(var i = 0; i < ds_list_size(tags);i++;)
            if ds_map_exists(resistances,ds_list_find_value(tags,i))
                dmg *= ds_map_find_value(resistances,ds_list_find_value(tags,i))
    if ds_map_exists(buffs,"fever") and buffs[? "fever"] >= 1
        dmg *= 1.2
    dmg *= 1 + random(.2) - .1 
    if random(20) > 19
    {
        dmg *= 1.6
        crit = true
    }
    dmg = floor(dmg)
    if dmg <= 0 
        dmg = 1
    hp -= dmg
    if deflect_percent > 0 and ds_list_find_index(tags,"poison") = -1 and ds_list_find_index(tags,"disease") = -1 and ds_list_find_index(tags,"deflect") = -1
    {
            var tags2 = ds_list_create()
            ds_list_add(tags2,"deflect")
            deal_damage(other.id,ceil(deflect_percent * dmg),tags2)
    }
}
var d_txt = instance_create(x + 100, y + 100,oDamageText);
d_txt.txt = dmg
d_txt.image_blend = c_red
d_txt.sprite_index = sBloodSplatter
d_txt.image_speed = 0
if !crit
    ds_list_insert(oBattleController.combat_log,0,"[c="+string(name_color)+"]"+name+"[/c]" + " takes " + string(dmg) + " damage." )
else
    ds_list_insert(oBattleController.combat_log,0,"[c="+string(name_color)+"]"+name+"[/c]" + " takes [c=rainbow]" + string(dmg) + " damage, CRITICAL HIT![/c]" )
if instance_exists(damage_bond) and damage_bond.id != id and -1 = ds_list_find_index(tags,"damage_bond")
    {
        var dbtags = ds_list_create()
        ds_list_add(dbtags,"damage_bond")
        deal_damage(damage_bond,dmg,dbtags)
    }
}
if ds_exists(tags,ds_type_list)
    ds_list_destroy(tags)
return dmg