///m_attack()
var action = 0;
var stam_cost = 2
if argument_count != 0
    action = argument[0]
switch(action)
{
case 1:
    return 0;
break;
case 2:
    return "COCKADOODLEDOO"
break;
case 3:
    return "Deals 1 * attack damage to the selected target."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    target.stam -= atk * 5;
    stam -= stam_cost
}