var timer_on = true;

//counts down the timer until it reaches zero, at which point you can move again
if (move_timer_count < move_timer_total_init)
{
    move_timer_count += 1;
    timer_on = true; // timer IS still going
    
    // hacky thing to get animation to work properly with collision detection at halfway through step
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
    
    if (move_timer_count == (move_timer_total_init/2))
    {
        var cell_next = move_collision(x + move_dir[0], y + move_dir[1]);
        var cant_move = cell_next.solid;
        
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
            //x = cell_next.x;   // sets your position to the destination cell
            //y = cell_next.y;   // but we still haven't actually moved you into the active grid yet!!
            oGame.map_update[x, y] = id;    //puts this object into its proper cell in the active grid
            
            if (cell_next.sound_step != -1)
            {
                audio_play_sound(cell_next.sound_step, 1, false); // maybe we want this here? so everything makes noises?
            }
        }
        else
        {
            draw_offset_x = 0;
            draw_offset_y = 0;
            timer_on = true; // timer IS still going
            stopped_wall = true;
            if (cell_next.sound_step != -1)
            {
                audio_play_sound(cell_next.sound_step, 1, false); // maybe we want this here? so everything makes noises?
            }
            move_stopped();
        }
    }
}
else
{
    draw_offset_x = 0;
    draw_offset_y = 0;
    timer_on = false; // timer is NOT still going
}
draw_x_coords = ( x * tile_size ) + ( draw_offset_x ) + (spr_middle);
draw_y_coords = ( y * tile_size ) + ( draw_offset_y ) + (spr_middle);
return timer_on;
