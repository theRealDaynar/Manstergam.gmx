///m_scream()
var action = 0;
var stam_cost=5
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
    return "Scream"
break;
case 3:
    return "Deals low dexterity based normal damage to entire targetted team."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    with(oBattleMonster)
        if round(team) != round(other.team)
        {
tags = ds_list_create()
ds_list_add(tags,"normal","dex",)
            dmg = 3 * other.dex;
            event_user(0)
        }
    stam -= stam_cost
}
