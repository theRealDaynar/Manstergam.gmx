///m_natures_call()
var action = 0;
var stam_cost = 20
if argument_count != 0
    action = argument[0]
switch(action)
{
case m_MTYPE:
    return mt_HEAL
break;
case 1:
    return 4;
break;
case 2:
    return "Nature's Call"
break;
case 3:
    return "Heals 2 * attack damage to the selected target."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    var lvlda = lvld
    with(oBattleMonster)
        if round(team) = round(other.team)
        {
            heal_monster(id,other.pow * lvlda)
        }
    stam -= stam_cost
    cd[selected_move] = 5
}
