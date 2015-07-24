///m_flay()
var action = 0;
var stam_cost =12
if argument_count != 0
    action = argument[0]
switch(action)
{
case m_MTYPE:
return mt_B
break;
case 1:
    return 0;
break;
case 2:
    return "Flay"
break;
case 3:
    return "Inflicts bleeding on target."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    target.bleed_level += (1 + hex_level)
    stam -= stam_cost
}
