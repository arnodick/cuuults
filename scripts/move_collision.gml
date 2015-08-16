stopped_wall = false; 

//counts up the timer until it reaches movement speed, at which point you can move again
if (move_timer_count < move_timer_total_init)
{
    move_timer_count += 1;
    // hacky thing to get animation to work properly with collision detection at halfway through move timer
    if (move_timer_count < (move_timer_total_init/2))
    {
        draw_offset_x = (move_dir[0] * ((move_timer_count/move_timer_total_init)*tile_size));
        draw_offset_y = (move_dir[1] * ((move_timer_count/move_timer_total_init)*tile_size));
    }
    else
    {
        draw_offset_x = (move_dir[0] * ((move_timer_count/move_timer_total_init)*tile_size)) - move_dir[0] * tile_size;
        draw_offset_y = (move_dir[1] * ((move_timer_count/move_timer_total_init)*tile_size)) - move_dir[1] * tile_size;
    }
    
    // checks next cell for collision once timer is half up
    if (move_timer_count == (move_timer_total_init/2))
    {
        var cell_next = check_pos(x + move_dir[0], y + move_dir[1]);
        var cant_move = cell_next.solid;
        
        // if you can move, then move into the next cell
        if (cant_move == false)
        {
            oGame.map_update[x, y] = oGame.map[x, y];   // swaps the current cell on the active grid for its sister in the terrain grid
            
            x += move_dir[0];
            y += move_dir[1];
            if (x >= (oGame.r_width))
            {
                x = 0;
            }
            else if (x < 0)
            {
                x = (oGame.r_width - 1);
            }
            
            if (y >= oGame.r_height)
            {
                y = 0;
            }
            else if (y < 0)
            {
                y = (oGame.r_height - 1);
            }
            oGame.map_update[x, y] = id;    //puts this object into its proper cell in the active grid
            
            if (cell_next.sound_step != -1)
            {
                audio_play_sound_at(cell_next.sound_step, x, y, 0, 10, 12, 1, false, 1);
                //audio_play_sound(cell_next.sound_step, 1, false); // maybe we want this here? so everything makes noises?
            }
            with (cell_next)
            {
                alarm[9] = 1;
                /*
                if (instance_exists(oGrass))
                {
                if (cell_next.object_index == oGrass)
                {
                    alarm[9] = 1;
                }
                }
                */
            }
        }
        else
        {
            stopped_wall = true;
            if (cell_next.sound_step != -1)
            {
                audio_play_sound_at(cell_next.sound_step, x, y, 0, 10, 12, 1, false, 1);
                //audio_play_sound(cell_next.sound_step, 1, false); // maybe we want this here? so everything makes noises?
            }
            //cell_current = oGame.map[x, y];
            move_stopped();
        }
    }
}
else
{  
    move_timer = false; // timer is NOT still going
    move_timer_count = 0;
    move_timer_total_init = 0;
    move_stopped();
    
}
draw_x_coords = ( x * tile_size ) + ( draw_offset_x ) + (spr_middle) + (anim_offset_x) + (animate_walk * move_dir[0]);
draw_y_coords = ( y * tile_size ) + ( draw_offset_y ) + (spr_middle) + (anim_offset_y) - (animate_walk);

if (move_dir[0] != 0)
{
    x_scale = move_dir[0];
}
