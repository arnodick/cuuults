if keyboard_check_pressed(vk_left)
{
    pos_check[0] -= speed_run;
}
else if keyboard_check_pressed(vk_right)
{
    pos_check[0] += speed_run;
}
else if keyboard_check_pressed(vk_up)
{
    pos_check[1] -= speed_run;
}
else if keyboard_check_pressed(vk_down)
{
    pos_check[1] += speed_run;
}
else
{
    step_stop();
}