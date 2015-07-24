///m_soar()
var action = 0;
var stam_cost =5
if argument_count != 0
    action = argument[0]
switch(action)
{
case m_MTYPE:
    return mt_O
break;
case m_TTYPE:
    return 0;
break;
case m_NAME:
    return "Soar"
break;
case m_DESC:
    return "Invincible for one turn, attack on the next."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    if area = 0
    {
        area = 1
        ability_lock = 1
        stam -=stam_cost
        image_alpha = .5
    }else
    {
        ability_lock = 0
        image_alpha = 1
        area = 0
        with(target)
        {
            tags = ds_list_create()
            ds_list_add(tags,"wind","str")
            dmg = 7 * other.str;
            event_user(0)
        }
    }
}
