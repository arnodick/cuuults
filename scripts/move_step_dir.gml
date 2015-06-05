if (key_arrows_check_pressed() == true)
{
    var x_pos = x, y_pos = y;
    
    switch(keyboard_key)
    {
    case vk_left:
        x_pos -= move_distance;
        break;
    case vk_right:
        x_pos += move_distance;
        break;
    case vk_up:
        y_pos -= move_distance;
        break;
    case vk_down:
        y_pos += move_distance;
        break;
    }
    
    var cell_next = move_collision(x_pos, y_pos);
    var cant_move = cell_next.solid;
    
    if (cant_move == false)
    {
        audio_play_sound(cell_next.sound_step, 1, false);
    }
    else
    {
        var shake_factor = 4;   // how widely screen should shake if bumping into solid object
        var shake_timer = 15; //how long screen shakes for/how long player can't move for
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
