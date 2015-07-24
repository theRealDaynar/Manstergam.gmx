/// Send player data to ALL attached clients

var count = ds_list_size(socketlist);
if( count>0 )
{
    global.player_buffer = player_buffer;
    
    // Reset buffer to start - Networking ALWAYS reads from the START of the buffer
    buffer_seek(player_buffer, buffer_seek_start, 0);
    
    buffer_write(player_buffer, buffer_u8, INIT_CMD );
    //random seed
    randomize()
    buffer_write(player_buffer, buffer_u8, irandom(255) );
    //dummy number
    buffer_write(global.player_buffer, buffer_u8, 1 );

    // All attached players
    with(oSSClient)
        for(var yy = 0; yy < 2; yy ++)
            for(var xx = 0; xx < 2; xx ++)
                buffer_write(global.player_buffer, buffer_u8, team[xx,yy] );
                
    var buffer_size = buffer_tell(player_buffer);
        
    // Now send all data... to all clients
    for(i=0;i<count;i++)
    {   
        // get the socket
        var sock = ds_list_find_value(socketlist,i);

        // update id
        buffer_seek(player_buffer, buffer_seek_start, 2);
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