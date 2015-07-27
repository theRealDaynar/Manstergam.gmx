///m_slumber()
var action = 0;
if argument_count != 0
    action = argument[0]
switch(action)
{
case m_MTYPE:
return mt_HEAL;
break;
case 1:
    return 2;
break;
case 2:
    return "Slumber"
break;
case 3:
    return "Put self to sleep, restore stamina."
break;
case m_EXECUTE:
    stam = max_stam
    update_buffs(target,"sleep",1)
    //sleep_level = 1
}