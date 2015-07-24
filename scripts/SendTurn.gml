
    // Move to start of buffer. Networking ALWAYS takes the data from the START of a buffer.
    buffer_seek(buff, buffer_seek_start, 0);

    // Write the command into the buffer.
    buffer_write(buff, buffer_u8, MOVES_CMD );
    show_debug_message("Start sending moves")
    for(var yy = 0; yy < 2; yy ++)
        for(var xx = 0; xx < 2; xx ++)
        {
            //number of targets
            if instance_exists(oBattleController.team_1[xx,yy])
            {
            with(oBattleController.team_1[xx,yy])
            {
                var num_of_targets = 0
                if ds_exists(target_que,ds_type_queue)
                    num_of_targets = ds_queue_size(target_que)
                if num_of_targets <= 0 
                    num_of_targets = 0
                if num_of_targets <= 0 and instance_exists(target) and target.object_index = oBattleMonster
                    num_of_targets = 1
                buffer_write(other.buff, buffer_u8, num_of_targets)
                show_debug_message("Number of targets " + string(num_of_targets))
            //target
                if num_of_targets > 1
                {
                    while(!ds_queue_empty(target_que))
                    {
                        target = ds_queue_dequeue(target_que)
                        if !instance_exists(target) or target.object_index != oBattleMonster
                            target = oBattleMonster.id
                        for(var yyy = 0; yyy < 2; yyy ++)
                            for(var xxx = 0; xxx < 2; xxx ++)
                            {
                                if oBattleController.team_1[xxx,yyy] = target
                                {
                                    buffer_write(other.buff, buffer_u8, xxx + yyy * 2)
                                    show_debug_message("target: "+string(xxx + yyy * 2))
                                    break;
                                }
                                else if oBattleController.team_2[xxx,yyy] = target
                                {
                                    buffer_write(other.buff, buffer_u8, xxx + yyy * 2 + 4)
                                    show_debug_message("target: "+string(xxx + yyy * 2+4))
                                    break;
                                }
                            }
                    }
                    ds_queue_destroy(target_que)
                    target_que = noone
                }
                else if num_of_targets = 1
                {
                        if !instance_exists(target) or target.object_index != oBattleMonster
                            target = oBattleMonster.id
                        for(var yyy = 0; yyy < 2; yyy ++)
                            for(var xxx = 0; xxx < 2; xxx ++)
                            {
                                if oBattleController.team_1[xxx,yyy] = target
                                {
                                    buffer_write(other.buff, buffer_u8, xxx + yyy * 2)
                                    show_debug_message("target: "+string(xxx + yyy * 2))
                                    break;
                                }
                                else if oBattleController.team_2[xxx,yyy] = target
                                {
                                    buffer_write(other.buff, buffer_u8, xxx + yyy * 2 + 4)
                                    show_debug_message("target: "+string(xxx + yyy * 2+4))
                                    break;
                                }
                            }
                }
            //move
                buffer_write(other.buff, buffer_u8, selected_move)
                show_debug_message("move: "+string(selected_move))
            }
            }
            else
            {
                //write junk data for target/move if instance does not exist
                repeat(2)
                buffer_write(buff, buffer_u8, 0)
            }
        }
    
    // Send this to the server
    network_send_packet( client, buff, buffer_tell(buff) );