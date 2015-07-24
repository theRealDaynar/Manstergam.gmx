///m_blind()
var action = 0;
var stam_cost = 8;
if argument_count != 0
    action = argument[0]
switch(action)
{
case m_PRIORITY:
    return 3;
break;
case 1:
    return 0;
break;
case 2:
    return "Blind"
break;
case 3:
    return "Stops target from attacking."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
     with(oBattleController)
     {
        var target_index = ds_list_find_index(turn_list,other.target)
        ds_list_delete(turn_list,target_index)
     }
     cd[selected_move] = 2
     stam -= stam_cost
}