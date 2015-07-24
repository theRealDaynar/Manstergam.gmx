///m_deflect()
var action = 0;
var stam_cost = 3
if argument_count != 0
    action = argument[0]
switch(action)
{
case m_PRIORITY:
    return 2;
break;
case 1:
    return 4;
break;
case 2:
    return "Deflect"
break;
case 3:
    return "Deals 1 * attack damage to the selected target."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    deflect_percent ++
    stam -= stam_cost
break;
case m_END_ACTION:
    deflect_percent --
}