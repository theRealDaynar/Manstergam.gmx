///heal_monster(monster,amount)
with(argument0)
{
    hp += argument1
    if hp > max_hp
        hp = max_hp
    var h_txt = instance_create(x + 100, y + 100,oDamageText);
    h_txt.txt = argument1
    h_txt.image_blend = make_color_rgb(50,255,50)
    h_txt.sprite_index = sHealthUp
    h_txt.alarm[0] = -1
    h_txt.image_speed /= 2
}