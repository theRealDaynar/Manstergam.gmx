///m_lure()
var action = 0;
var stam_cost =6
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
    return "Lure"
break;
case 3:
    return "All moves used by the opposite team will target the user this turn."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    with(oBattleMonster)
        if round(team) != round(other.team)
        {
            target = other.id;
            if ds_exists(target_que,ds_type_queue)
            {
                var rpt = ds_queue_size(target_que)
                ds_queue_destroy(target_que)
                target_que = ds_queue_create()
                repeat(rpt)
                    ds_queue_enqueue(target_que,other.id)
            }
        }
    def_mod_percent += .5
    stam -=stam_cost
cd[selected_move] = 2
break;
case m_END_ACTION:
    def_mod_percent -= .5
}
