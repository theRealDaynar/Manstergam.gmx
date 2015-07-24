/// Ping the server now and then so we know if we're still connected or not....
{
    // Move to start of buffer. Networking ALWAYS takes the data from the START of a buffer.
    buffer_seek(buff, buffer_seek_start, 0);

    // Write the command into the buffer.
    buffer_write(buff, buffer_u8, INIT_CMD );
    for(var yy = 0; yy < 2; yy ++)
        for(var xx = 0; xx < 2; xx ++)
            buffer_write(buff, buffer_u8, oSelectedTeam.team[xx,yy])
    
    // Send this to the server
    network_send_packet( client, buff, buffer_tell(buff) );

}