if keyboard_check_pressed(vk_left)
{
    pos_check[0] -= move_distance;
    
    pos_3rd_last[0] = pos_2nd_last[0];
    pos_3rd_last[1] = pos_2nd_last[1];
    
    pos_2nd_last[0] = pos_last[0];
    pos_2nd_last[1] = pos_last[1];
    
    pos_last[0] = x;
    pos_last[1] = y;
}
else if keyboard_check_pressed(vk_right)
{
    pos_check[0] += move_distance;
    
    pos_3rd_last[0] = pos_2nd_last[0];
    pos_3rd_last[1] = pos_2nd_last[1];
    
    pos_2nd_last[0] = pos_last[0];
    pos_2nd_last[1] = pos_last[1];
    
    pos_last[0] = x;
    pos_last[1] = y;
}
else if keyboard_check_pressed(vk_up)
{
    pos_check[1] -= move_distance;
    
    pos_3rd_last[0] = pos_2nd_last[0];
    pos_3rd_last[1] = pos_2nd_last[1];
    
    pos_2nd_last[0] = pos_last[0];
    pos_2nd_last[1] = pos_last[1];
    
    pos_last[0] = x;
    pos_last[1] = y;
}
else if keyboard_check_pressed(vk_down)
{
    pos_check[1] += move_distance;
    
    pos_3rd_last[0] = pos_2nd_last[0];
    pos_3rd_last[1] = pos_2nd_last[1];
    
    pos_2nd_last[0] = pos_last[0];
    pos_2nd_last[1] = pos_last[1];
    
    pos_last[0] = x;
    pos_last[1] = y;
}
else
{
    step_stop();
}
