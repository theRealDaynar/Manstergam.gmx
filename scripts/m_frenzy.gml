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
    return "Triple target dark attack, increases in damage with each use."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    var tags = ds_list_create()
    ds_list_add(tags,"dark","str")
    deal_damage(target,(atk_pwr + floor(move_uses[selected_move]/3)) * dex * lvld,tags )
    stam -= stam_cost/3
}
