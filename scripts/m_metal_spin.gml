///m_metal_spin()
var action = 0;
var stam_cost = 12
var atk_pwr = 3
if argument_count != 0
    action = argument[0]
switch(action)
{
case m_MTYPE:
    return mt_O
break;
case 1:
    return 4;
break;
case 2:
    return "Metal Spin"
break;
case 3:
    return "Deals 1 * attack damage to the selected target."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    var lvlda = lvld
    with(oBattleMonster)
        if round(team) != round(other.team)
        {
            var tags = ds_list_create()
            ds_list_add(tags,"normal","str",)
            deal_damage(id,atk_pwr * other.str * lvlda,tags)
        }
    stam -= stam_cost
    cd[selected_move] = 3
}