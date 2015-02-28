
if keyboard_check_pressed(vk_left)
{
    //move_pos_prev();
    pos_check[0] -= move_distance;
    move_coll();

}
else if keyboard_check_pressed(vk_right)
{
    //move_pos_prev();
    pos_check[0] += move_distance;
    move_coll();

}
else if keyboard_check_pressed(vk_up)
{
    //move_pos_prev();
    pos_check[1] -= move_distance;
    move_coll();

}
else if keyboard_check_pressed(vk_down)
{
    //move_pos_prev();
    pos_check[1] += move_distance;
    move_coll();

}
else
{
    move_stop();
}

