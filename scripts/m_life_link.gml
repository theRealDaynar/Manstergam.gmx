///m_life_link()
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
    return "Life Link"
break;
case 3:
    return "Lifelinks target monster. All damage received by this monster will also be dealt to the lifelinked monster."
break;
case m_EXECUTE:
    damage_bond = target
    cd[selected_move] = 100
}