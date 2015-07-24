///m_frenzy()
var action = 0;
var atk_pwr = 3;
var stam_cost =10
if argument_count != 0
    action = argument[0]
switch(action)
{
case m_TTYPE:
    return 6;
break;
case m_NAME:
    return "Frenzy"
break;
case m_MTYPE:
    return mt_O
break;
case m_DESC:
    return "Deals 1 * attack damage to the selected target."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    with(target)
    {
        tags = ds_list_create()
        ds_list_add(tags,"dark","str")
        dmg = (atk_pwr + floor(other.move_uses[other.selected_move]/3)) * other.dex;
        event_user(0)
    }
    stam -= stam_cost/3
}