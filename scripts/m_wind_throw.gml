///m_wind_throw()
var action = 0;
var atk_pwr = 7
var stam_cost = 12
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
    return "Wind Throw"
break;
case 3:
    return "Highly varied power based wind attack."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
        var tags = ds_list_create()
        ds_list_add(tags,"wind","pow","projectile")
     deal_damage(target,atk_pwr * pow * lvld * (.3 + random(1.4)),tags)
    stam -= stam_cost
}