///m_whirl_wind2()
var action = 0;
var stam_cost = 15
if argument_count != 0
    action = argument[0]
switch(action)
{
case 1:
    return 0;
break;
case 2:
    return "Whirl Wind 2"
break;
case 3:
    return "Target team is rotated counter clockwise."
break;
case m_COST:return stam_cost;break;case m_EXECUTE:
    if target.team = 1
    {
        with(oBattleController)
        {
            var temp_id = team_1[1,0];
            team_1[1,0] = team_1[0,0]
            team_1[0,0] = team_1[0,1]
            team_1[0,1] = team_1[1,1]
            team_1[1,1] = temp_id
            for(var yy = 0; yy < 2; yy ++)
                for(var xx = 0; xx < 2; xx ++)
                {
                    if instance_exists(team_1[xx,yy])
                    {
                    team_1[xx,yy].xstart = padding + (padding + 200) * xx
                    team_1[xx,yy].ystart = padding/2 + (padding/2 + 200) * yy
                    }
                }
        }
    }
    else
    {
            with(oBattleController)
        {
            var temp_id = team_2[1,0];
            team_2[1,0] = team_2[0,0]
            team_2[0,0] = team_2[0,1]
            team_2[0,1] = team_2[1,1]
            team_2[1,1] = temp_id
            for(var yy = 0; yy < 2; yy ++)
                for(var xx = 0; xx < 2; xx ++)
                {
                    if instance_exists(team_2[xx,yy])
                    {
                    team_2[xx,yy].xstart = padding + (padding + 200) * (xx + 2)
                    team_2[xx,yy].ystart = padding/2 + (padding/2 + 200) * yy
                    }
                }
            
        }
    }  
    stam -= stam_cost
cd[selected_move] = 1
break;
}
