
move_dir[0] = -move_distance;
move_dir[1] = 0;

var cell_next = move_collision(x + move_dir[0], y + move_dir[1]);
var cant_move = cell_next.solid;
if (cant_move == true)
{
    move_stopped_wall(1);
}
else
{
    move_timer_start(move_timer_max, 1);
}
if (cell_next.sound_step != -1)
{
    audio_play_sound(cell_next.sound_step, 1, false); // maybe we want this here? so everything makes noises?
}
move_value = -1;
