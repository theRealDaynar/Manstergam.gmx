///m_cognito_blast()
var stam_cost = 7;
var atk_pwr = 8;
var action = 0;
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
    return "Cognito-Blast"
break;
case 3:
    return "Arcane power attack. Cannot miss."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    with(target)
    {
        tags = ds_list_create()
        ds_list_add(tags,"arcane","pow","snipe")
        dmg = atk_pwr * other.pow;
        event_user(0)
    }
    stam -= stam_cost
}
