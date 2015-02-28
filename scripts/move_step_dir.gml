
if (key_arrows_check_pressed() == true)
{
    switch(keyboard_key)
    {
    case vk_left:
        pos_check[0] -= move_distance;
        break;
    case vk_right:
        pos_check[0] += move_distance;
        break;
    case vk_up:
        pos_check[1] -= move_distance;
        break;
    case vk_down:
        pos_check[1] += move_distance;
        break;
    }
    move_coll();
}
else
{
    move_stop();
}

/*
if keyboard_check_pressed(vk_left)
{
    pos_check[0] -= move_distance;
    move_coll();
}
else if keyboard_check_pressed(vk_right)
{
    pos_check[0] += move_distance;
    move_coll();
}
else if keyboard_check_pressed(vk_up)
{
    pos_check[1] -= move_distance;
    move_coll();
}
else if keyboard_check_pressed(vk_down)
{
    pos_check[1] += move_distance;
    move_coll();
}
else
{
    move_stop();
}
*/