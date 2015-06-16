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
    move_timer_start(move_timer_max, 1);
}
else
{
   move_stopped();
}
