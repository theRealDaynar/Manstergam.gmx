///m_crab_apple()
var action = 0;
if argument_count != 0
    action = argument[0]
switch(action)
{
case 1:
    return 0;
break;
case 2:
    return "Crab Apple"
break;
case 3:
    return "Stam + atk * 2.5 target"
break;
case m_EXECUTE:
    with(target)
        stam += ceil(atk * 2.5)
    var s_txt = instance_create(target.x + 100, target.y + 100,oDamageText);
    s_txt.txt = ceil(atk * 2.5)
    s_txt.image_blend = c_yellow
}