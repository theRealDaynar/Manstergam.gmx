///m_veil_gas()
var action = 0;
var stam_cost = 9
if argument_count != 0
    action = argument[0]
switch(action)
{
case 1:
    return 0;
break;
case 2:
    return "Veil Gas"
break;
case 3:
    return "Immunizes target monster."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    update_buffs(target,"immune",5)
    stam -= stam_cost
}
