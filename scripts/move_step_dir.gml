if (key_arrows_check_pressed() == true)
{
    switch(keyboard_key)
    {
    case vk_left:
        move_dir[0] = -move_distance;
        break;
    case vk_right:
        move_dir[0] = move_distance;
        break;
    case vk_up:
        move_dir[1] = -move_distance;
        break;
    case vk_down:
        move_dir[1] = move_distance;
        break;
    }
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
}
else
{
   move_stopped();
}
