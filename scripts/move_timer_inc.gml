//counts down the timer until it reaches zero, at which point you can move again
if move_timer_count < move_timer_total_init
{
    move_timer_count += 1;
}
// TODO: MAKE TIMERS INTO A FUNCTION?
else
{
    var cell_next = move_collision(x + move_dir[0], y + move_dir[1]);
    var cant_move = cell_next.solid;
    
    if (cant_move == false)
    {
        oGame.map_update[x, y] = oGame.map[x, y];   // swaps the current cell on the active grid for its sister in the terrain grid
        x = cell_next.x;   // sets your position to the destination cell
        y = cell_next.y;   // but we still haven't actually moved you into the active grid yet!!
        oGame.map_update[x, y] = id;    //puts this object into its proper cell in the active grid

    }
    if (cell_next.sound_step != -1)
    {
        audio_play_sound(cell_next.sound_step, 1, false); // maybe we want this here? so everything makes noises?
    }
    //move_stopped_wall(1);
    move_timer = false;
    move_timer_total_init = 0;
    move_timer_count = 0;
    move_dir[0] = 0;
    move_dir[1] = 0;
    draw_offset_x = 0;
    draw_offset_y = 0;
    // put shift speed multipler here if shift is pressed! decrease move_timer_ma or it's equivalent
}
