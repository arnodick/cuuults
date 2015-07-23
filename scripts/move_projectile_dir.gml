if (keyboard_check(vk_left))
{
    move_dir[0] = -move_distance;
}
else if (keyboard_check(vk_right))
{
    move_dir[0] = move_distance;
}
if (keyboard_check(vk_up))
{
    move_dir[1] = -move_distance;
}
else if (keyboard_check(vk_down))
{
    move_dir[1] = move_distance;
}
//var cell_next = move_collision(x + move_dir[0], y + move_dir[1]);
//var cant_move = cell_next.solid;
move_timer_start(move_speed, 1);