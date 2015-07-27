///m_swoon()
var action = 0;
var stam_cost = 1
if argument_count != 0
    action = argument[0]
switch(action)
{
case 1:
    return 0;
break;
case 2:
    return "Swoon"
break;
case 3:
    return "Infatuates target."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    target.atk --
    stam -= stam_cost
}