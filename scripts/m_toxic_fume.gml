///m_toxic_fume()
var action = 0;
var stam_cost = 10
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
    return "Toxic Fume"
break;
case 3:
    return "Poisons."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    update_buffs(target,"poison",1)
    stam -= stam_cost
}
