var x_dir = 0, y_dir = 0;

if (keyboard_check(vk_left))
{
    x_dir = -move_distance;
}
else if (keyboard_check(vk_right))
{
    x_dir = move_distance;
}
if (keyboard_check(vk_up))
{
    y_dir = -move_distance;
}
else if (keyboard_check(vk_down))
{
    y_dir = move_distance;
}

move_direction(x_dir, y_dir, move_speed);
