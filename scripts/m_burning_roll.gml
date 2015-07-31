///m_burning_roll()
var action = 0;
var atk_pwr = 6;
var stam_cost = 11
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
    return "Burning Roll"
break;
case 3:
    return "Row targetted strength fire attack."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    var tags = ds_list_create()
    var tags2 = ds_list_create()
    ds_list_add(tags,"heat","str")
    ds_list_copy(tags2,tags)
    var dmg = atk_pwr * str * lvld;
    if team = 1
    {
        if target = oBattleController.team_2[0,0] or target = oBattleController.team_2[1,0]
        {
            if instance_exists(oBattleController.team_2[0,0])
                deal_damage(oBattleController.team_2[0,0],dmg,tags)
            if instance_exists(oBattleController.team_2[1,0])
                deal_damage(oBattleController.team_2[1,0],dmg,tags2)
        }
        else
        {
            if instance_exists(oBattleController.team_2[0,1])
                deal_damage(oBattleController.team_2[0,1],dmg,tags) 
            if instance_exists(oBattleController.team_2[1,1])
                deal_damage(oBattleController.team_2[1,1],dmg,tags2)
        }
    }
    else
    {
        if target = oBattleController.team_1[0,0] or target = oBattleController.team_1[1,0]
        {
            if instance_exists(oBattleController.team_1[0,0])
                deal_damage(oBattleController.team_1[0,0],dmg,tags)
            if instance_exists(oBattleController.team_1[1,0])
                deal_damage(oBattleController.team_1[1,0],dmg,tags2) 
        }
        else
        {
            if instance_exists(oBattleController.team_1[0,1])
                deal_damage(oBattleController.team_1[0,1],dmg,tags) 
            if instance_exists(oBattleController.team_1[1,1])
                deal_damage(oBattleController.team_1[1,1],dmg,tags2)
        }    
    }
    stam -= stam_cost
}