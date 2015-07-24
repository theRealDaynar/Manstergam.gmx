///m_hex()
var action = 0;
var stam_cost =8
if argument_count != 0
    action = argument[0]
switch(action)
{
case 1:
    return 0;
break;
case 2:
    return "Hex"
break;
case 3:
    return "Inflicts curse on target."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    target.hex_level ++
    stam -= stam_cost
}
