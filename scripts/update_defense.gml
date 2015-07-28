///update_defense(instance, amount)
argument0.def_mod += argument1 * global.level

ds_list_insert(oBattleController.combat_log,0,name +" "+ string(argument1)+" defense")
d_txt = instance_create(argument0.x + 100, argument0.y + 100,oDamageText);
d_txt.sprite_index = sDefUp
d_txt.alarm[0] = -1
d_txt.txt = string(argument1 * global.level)
d_txt.image_blend = c_black
