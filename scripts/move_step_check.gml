
if keyboard_check_pressed(vk_left)
{
    pos_prev();
    pos_check[0] -= move_distance;
    move_coll();

}
else if keyboard_check_pressed(vk_right)
{
    pos_prev();
    pos_check[0] += move_distance;
    move_coll();

}
else if keyboard_check_pressed(vk_up)
{
    pos_prev();
    pos_check[1] -= move_distance;
    move_coll();

}
else if keyboard_check_pressed(vk_down)
{
    pos_prev();
    pos_check[1] += move_distance;
    move_coll();

}
else
{
    step_stop();
}
