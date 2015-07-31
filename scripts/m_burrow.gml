///m_burrow()
var action = 0;
if argument_count != 0
    action = argument[0]
switch(action)
{
case m_MTYPE:
    return mt_O
break;
case m_TTYPE:
    return 0;
break;
case m_NAME:
    return "Soar"
break;
case m_DESC:
    return "Burrow beneath the ground."
break;
case m_AREAREQ:
if area = 1
    return 1
else
    return 0
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    if area = 0
    {
        area = 1
        untargetable = 1
    }else
    {
        area = 0
        untargetable = 0
    }
}
