///m_hypnosis()
var stam_cost = 14;
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
    return "Hypnosis"
break;
case 3:
    return "Forces target to use planned move on the opposite team."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    //show_debug_message(target)
    if ds_exists(target.target_que,ds_type_queue)
    {
        var new_target_que = ds_queue_create()
        while(!ds_queue_empty(target.target_que))
        {
            target.target = ds_queue_dequeue(target.target_que)
            if instance_exists(target.target)
            {
            if target.target.team = 1
                for(var xx = 0;xx < 2;xx++)
                    for(var yy = 0; yy < 2;yy++)
                        if target.target = oBattleController.team_1[xx,yy]
                        {
                            if instance_exists(oBattleController.team_2[xx,yy])
                                target.target = oBattleController.team_2[xx,yy]
                            break;
                        }
            else
                for(var xx = 0;xx < 2;xx++)
                    for(var yy = 0; yy < 2;yy++)
                        if target.target = oBattleController.team_2[xx,yy]
                        {
                            if instance_exists(oBattleController.team_1[xx,yy])
                                target.target = oBattleController.team_1[xx,yy]
                            break;
                        }  
                if instance_exists(target.target) and target.target!= 0
                    ds_queue_enqueue(new_target_que,target.target)
                else
                    ds_queue_enqueue(new_target_que,target.id)
            }
        }
        ds_queue_destroy(target.target_que)
        target.target_que = new_target_que
    }
    else if instance_exists(target.target)
    {
    //show_debug_message(target.target)
    if target.target.team = 1
        for(var yy = 0; yy < 2;yy++)
            for(var xx = 0;xx < 2;xx++)
            {
                //show_debug_message(string(xx+yy*2))
                if target.target = oBattleController.team_1[xx,yy]
                {
                    if instance_exists(oBattleController.team_2[xx,yy])
                        target.target = oBattleController.team_2[xx,yy]
                    break;
                }
            }
    else
        for(var xx = 0;xx < 2;xx++)
            for(var yy = 0; yy < 2;yy++)
                if target.target = oBattleController.team_2[xx,yy]
                {
                    if instance_exists(oBattleController.team_1[xx,yy])
                        target.target = oBattleController.team_1[xx,yy]
                    break;
                }    
    }
    //show_debug_message(target.target)
     cd[selected_move] = 3
     stam -= stam_cost
}
