///m_sandstorm()
var action = 0;
var stam_cost = 16;
if argument_count != 0
    action = argument[0]
switch(action)
{
case m_PRIORITY:
    return 1;
break;
case 1:
    return 4;
break;
case 2:
    return "Powder Rain"
break;
case 3:
    return "Sets weather to powder rain. After 6 turns all monsters fall asleep."
break;
case m_COST:return stam_cost;break;case m_EXECUTE: 
     
     instance_create(0,0,oSandstorm) 
     cd[selected_move] = 6
     stam -= stam_cost
}