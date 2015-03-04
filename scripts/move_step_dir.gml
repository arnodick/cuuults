var x_pos = x, y_pos = y;

if (key_arrows_check_pressed() == true)
{
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
    move_coll(x_pos, y_pos);
}
else
{
    move_stop();
}

/*
if keyboard_check_pressed(vk_left)
{
    x_pos -= move_distance;
    move_coll();
}
else if keyboard_check_pressed(vk_right)
{
    x_pos += move_distance;
    move_coll();
}
else if keyboard_check_pressed(vk_up)
{
    y_pos -= move_distance;
    move_coll();
}
else if keyboard_check_pressed(vk_down)
{
    y_pos += move_distance;
    move_coll();
}
else
{
    move_stop();
}
*/
