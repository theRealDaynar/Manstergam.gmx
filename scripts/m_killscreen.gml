///m_killscreen()
var action = 0;
if argument_count != 0
    action = argument[0]
switch(action)
{
case m_PRIORITY:
    return 2;
break;
case 1:
    return 0;
break;
case 2:
    return "Killscreen"
break;
case 3:
    return "Sacrifice self to stun entire enemy team."
break;
case m_EXECUTE:
     with(oBattleController)
     {
        for(var i = 0; i < ds_list_size(turn_list);i++)
        {
            if ds_list_find_value(turn_list,i).team != other.team
            {
                ds_list_delete(turn_list,i)
                i--
            }
        }
     }
     instance_destroy()
     ds_list_insert(oBattleController.combat_log,0,name + " has killed himself and stunned the enemy team." )
}