/// Read incoming data to the server from a connected saocket
{  
    // get the buffer the data resides in
    var buff = ds_map_find_value(async_load, "buffer");
    
    // read ythe command 
    var cmd = buffer_read(buff, buffer_u8 );

    // Get the socket ID - this is the CLIENT socket ID. We can use this as a "key" for this client
    var sock = ds_map_find_value(async_load, "id");
    // Look up the client details
    var inst = ds_map_find_value(Clients, sock );

    if( cmd==INIT_CMD )    
    {
        for(var yy = 0; yy < 2; yy ++)
            for(var xx = 0; xx < 2; xx ++)
                inst.team[xx,yy] = buffer_read(buff,buffer_u8)
        if instance_number(oSSClient) >= 2
        {
            var inited = 1
            with(oSSClient)
                if team[0,0] = noone
                    inited = 0
            if inited
                StartGame()
        }
    }
    else if( cmd==MOVES_CMD )    
    {
        show_debug_message("MOVES RECIEVED")
        for(var yy = 0; yy < 2; yy ++)
            for(var xx = 0; xx < 2; xx ++)
            {
                var num_of_targets = buffer_read(buff,buffer_u8);
                show_debug_message("number_of targets: "+string(num_of_targets) )
                inst.target_que[xx,yy] = ds_queue_create()
                repeat(num_of_targets)
                {
                    var tgt = buffer_read(buff,buffer_u8);
                    ds_queue_enqueue(inst.target_que[xx,yy],tgt)
                    show_debug_message("Target: "+string(tgt) )
                }
                inst.moves[xx,yy] = buffer_read(buff,buffer_u8)
                show_debug_message("Move: "+string(inst.moves[xx,yy]) )
            }
        show_debug_message("End moves recieved")
        var rtg = 1
        with(oSSClient)
            if moves[0,0] = -4
                rtg = 0
        if rtg
        {
            StartTurn()
            with(oSSClient)
               for(var yy = 0; yy < 2; yy ++)
                    for(var xx = 0; xx < 2; xx ++)
                        moves[xx,yy] = -4
        }
        
    }
    else if( cmd==PING_CMD )
    {
        // keep alive - ignore it
    }
}