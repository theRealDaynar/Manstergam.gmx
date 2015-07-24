///m_regenerate()
var action = 0;
var stam_cost = 4
if argument_count != 0
    action = argument[0]
switch(action)
{
case m_MTYPE:
    return mt_HEAL
break;
case 1:
    return 2;
break;
case 2:
    return "Regenerate"
break;
case 3:
    return "Dexterity based self heal."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    var heal = dex * 2;
    heal_monster(id,heal);
    stam -= stam_cost
}
