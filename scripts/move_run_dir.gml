if (key_arrows_check() == true)
{
    var x_pos = x, y_pos = y;
    
    if keyboard_check(vk_left)
    {
        x_pos -= move_distance;
    }
    else if keyboard_check(vk_right)
    {
        x_pos += move_distance;
    }
    if keyboard_check(vk_up)
    {
        y_pos -= move_distance;
    }
    else if keyboard_check(vk_down)
    {
        y_pos += move_distance;
    }
    
    move_run_start();
    
    var cell_next = move_collision(x_pos, y_pos);
    var cant_move = cell_next.solid;
    
    if (cant_move == false)
    {
        if step_count < 5
        {
            step_count += 1;
        }
        audio_sound_pitch(sndBloop, step_count);
        audio_play_sound(sndBloop, 1, false);
    }
    else
    {
        var shake_factor = 4*step_count;   // how widely screen should shake if bumping into solid object
        var shake_timer = 15*step_count; //how long screen shakes for/how long player can't move for
        if (step_count > 4)
        {
            var cell_hit = oGame.map_update[x_pos, y_pos]
            oGame.map[x_pos, y_pos] = instance_create(x_pos, y_pos, cell_hit.dead);
            oGame.map_update[x_pos, y_pos] = oGame.map[x_pos, y_pos]; // TODO: this code makes the game crash when you kill yourself for some reason?
            audio_play_sound(cell_hit.dead_sound, 1, false);
            with (cell_hit)
            {
                instance_destroy();
            }
        }
        move_timer = true;
        move_timer_count = shake_timer;
        step_count = 0;
        screen_shake(shake_timer, shake_factor);
        audio_play_sound(sndBump, 1, false);
    }
}
else
{
    move_stop();
}
