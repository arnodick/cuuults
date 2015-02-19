if arrows_check() == true
{
    if keyboard_check(vk_left)
    {
        pos_check[0] -= move_distance;
    }
    else if keyboard_check(vk_right)
    {
        pos_check[0] += move_distance;
    }
    else if keyboard_check(vk_up)
    {
        pos_check[1] -= move_distance;
    }
    else if keyboard_check(vk_down)
    {
        pos_check[1] += move_distance;
    }
    
    step_take();
}
else
{
    step_stop();
}