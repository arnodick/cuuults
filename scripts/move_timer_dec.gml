//counts down the timer until it reaches zero, at which point you can move again
if move_timer_count > 0
{
    move_timer_count -= 1;
}
else
{
    move_timer = false;
    
    var cell_next = move_collision(x + move_dir[0], y + move_dir[1]);
    var cant_move = cell_next.solid;
    
    if (cant_move == false)
    {
        audio_play_sound(cell_next.sound_step, 1, false);
    }
    else
    {
        move_stopped_wall(1);
    }
    // put shift speed multipler here if shift is pressed! decrease move_timer_ma or it's equivalent
}
