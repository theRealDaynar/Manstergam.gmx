///m_solidify()
var action = 0;
if argument_count != 0
    action = argument[0]
switch(action)
{
case 1:
    return 2;
break;
case 2:
    return "Solidify"
break;
case 3:
    return "Spd - 2, def +"
break;
case m_EXECUTE:
    update_defense(id,1)
}