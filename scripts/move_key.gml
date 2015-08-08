if (key_arrows_check() == true)
{
    var x_dir = 0, y_dir = 0;
    switch(keyboard_key)
    {
    case vk_left:
        x_dir = -move_distance;
        break;
    case vk_right:
        x_dir = move_distance;
        break;
    case vk_up:
        y_dir = -move_distance;
        break;
    case vk_down:
        y_dir = move_distance;
        break;
    }
    move_direction(x_dir, y_dir, move_speed);
}
