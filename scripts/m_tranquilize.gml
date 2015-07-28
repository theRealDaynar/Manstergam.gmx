///m_tranquilize()
var action = 0;
var stam_cost = 7
if argument_count != 0
    action = argument[0]
switch(action)
{
case m_MTYPE:
    return mt_O
break;
case 1:
    return 0;
break;
case 2:
    return "Tranquilize"
break;
case 3:
    return "1/2 sleep build up on target."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    update_buffs(target,"sleep",.5)
    stam -= stam_cost
}
