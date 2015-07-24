///m_heal()
var action = 0;
var stam_cost = 2
if argument_count != 0
    action = argument[0]
switch(action)
{
case m_MTYPE:
    return mt_HEAL
break;
case 1:
    return 0;
break;
case 2:
    return "Heal"
break;
case 3:
    return "Heals 2 * attack damage to the selected target."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    var heal = atk * 2;
    heal_monster(target,heal);
    stam -= stam_cost
}