///m_root()
var action = 0;
var stam_cost = 15
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
    return "Root"
break;
case 3:
    return "Target team is rotated clockwise."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    with(oBattleController)
        update_buffs(id,"root",1)
    stam -= stam_cost
break;
}
