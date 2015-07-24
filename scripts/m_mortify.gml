///m_mortify()
var action = 0;
var stam_cost = 15
if argument_count != 0
    action = argument[0]
switch(action)
{
case 1:
    return 0;
break;
case 2:
    return "Mortify"
break;
case 3:
    return "Frightens target."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    target.frighten_level++
    stam -=stam_cost
}
