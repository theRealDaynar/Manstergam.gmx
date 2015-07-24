///m_slap()
var action = 0;
var atk_pwr = .5
if argument_count != 0
    action = argument[0]
switch(action)
{
case m_MTYPE:
    return -1 // I do wut I wunt
break;
case m_TTYPE:
    return 0;
break;
case 2:
    return "Slap"
break;
case 3:
    return "Deals 1 * attack damage to the selected target."
break;
case m_EXECUTE:
    with(target)
    {
        tags = ds_list_create()
        ds_list_add(tags,"str")
        dmg = atk_pwr * other.str;
        event_user(0)
    }
}