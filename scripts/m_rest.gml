///m_rest()
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
    return "Rest"
break;
case 3:
    return "Restore own health and stamina."
break;
case m_EXECUTE:
    stam += floor(max_stam/2)
    hp += floor(max_hp/10)
}
