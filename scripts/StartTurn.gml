/// Send player data to ALL attached clients
show_debug_message("Start sending players turns")
var count = ds_list_size(socketlist);
if( count>0 )
{
    global.player_buffer = player_buffer;
    
    // Reset buffer to start - Networking ALWAYS reads from the START of the buffer
    buffer_seek(player_buffer, buffer_seek_start, 0);
    
    buffer_write(player_buffer, buffer_u8, MOVES_CMD );
    
    //dummy number
    buffer_write(global.player_buffer, buffer_u8, 1 );
    randomize()
    buffer_write(global.player_buffer, buffer_u8, irandom(255) );
    // All attached players
    with(oSSClient)
        for(var yy = 0; yy < 2; yy ++)
            for(var xx = 0; xx < 2; xx ++)
            {
                if ds_exists(target_que[xx,yy],ds_type_queue)
                {
                    var num_of_targets = ds_queue_size(target_que[xx,yy])
                    if num_of_targets = 0
                    {
                    buffer_write(global.player_buffer, buffer_u8, 1 );
                    buffer_write(global.player_buffer, buffer_u8, 0 );
                    show_debug_message("default num o targets and target 1-0")                    
                    }
                    else
                    {
                    //num of targets
                    buffer_write(global.player_buffer, buffer_u8, num_of_targets );
                    show_debug_message("Number of targets: "+string(num_of_targets))
                    //targets
                    repeat(num_of_targets)
                    {
                        var tgt = ds_queue_dequeue(target_que[xx,yy])
                        buffer_write(global.player_buffer, buffer_u8, tgt );
                        show_debug_message("Target: "+ string(tgt))
                    }
                    }
                    ds_queue_destroy(target_que[xx,yy])
                    target_que[xx,yy] = noone
                }
                else
                {
                    buffer_write(global.player_buffer, buffer_u8, 1 );
                    buffer_write(global.player_buffer, buffer_u8, 0 );
                    show_debug_message("default num o targets and target 1-0")
                }
                //move
                buffer_write(global.player_buffer, buffer_u8, moves[xx,yy] );
                show_debug_message("Move: "+string(moves[xx,yy]))
            }
                
    var buffer_size = buffer_tell(player_buffer);
        
    // Now send all data... to all clients
    for(i=0;i<count;i++)
    {   
        // get the socket
        var sock = ds_list_find_value(socketlist,i);

        // update id
        buffer_seek(player_buffer, buffer_seek_start, 1);
        var inst = ds_map_find_value( Clients, sock);
        if inst.id != oSSClient.id
        {
            buffer_write(global.player_buffer, buffer_u8, 2 );
        }
        else
        {buffer_write(global.player_buffer, buffer_u8, 1 );}
        // Send data to client
        network_send_packet( sock,player_buffer, buffer_size );
    }
}