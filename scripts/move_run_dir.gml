if (key_arrows_check() == true)
{
    if keyboard_check(vk_left)
    {
        move_dir[0] = -move_distance;
    }
    else if keyboard_check(vk_right)
    {
        move_dir[0] = move_distance;
    }
    if keyboard_check(vk_up)
    {
        move_dir[1] = -move_distance;
    }
    else if keyboard_check(vk_down)
    {
        move_dir[1] = move_distance;
    }
    
    var x_dest = x + move_dir[0], y_dest = y + move_dir[1];
    var cell_next = move_collision(x_dest, y_dest);
    var cant_move = cell_next.solid;
        
    if (cell_next.sound_step != -1)
    {
        audio_play_sound(cell_next.sound_step, 1, false); // maybe we want this here? so everything makes noises?
    }
    
    if (cant_move == false)
    {
        if move_timer_mult > 1
        {
            move_timer_mult -= 1;
        }
        
        if step_count < 5
        {
            step_count += 1;
        }
        audio_sound_pitch(sndBloop, step_count);
        audio_play_sound(sndBloop, 1, false);
    }
    else
    {
        move_stopped_wall(cell_next, step_count+1);   // + 1i s minor hack to stop running into adjacent walls constantly
        /*
        if (step_count > 4)
        {
            var cell_hit = oGame.map_update[x_dest, y_dest]
            oGame.map[x_dest, y_dest] = instance_create(x_dest, y_dest, cell_hit.dead);
            oGame.map_update[x_dest, y_dest] = oGame.map[x_dest, y_dest]; // TODO: this code makes the game crash when you kill yourself for some reason?
            audio_play_sound(cell_hit.dead_sound, 1, false);
            with (cell_hit)
            {
                instance_destroy();
            }
        }
        */
    }
    
    move_timer_start(move_timer_max*2, move_timer_mult);
}
else
{
   move_stopped();
}
