///m_trap()
var action = 0;
var stam_cost = 1;
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
    return "Trap"
break;
case 3:
    return "Deals 1 * attack damage to the selected target."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    with(target)
    {
            target_lock = other.id
            untargetable = 1
            target_lock_level = 1
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
    damage_bond = target
    cd[selected_move] = 999
    stam --
}