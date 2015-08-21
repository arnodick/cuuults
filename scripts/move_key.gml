//var x_dir = 0, y_dir = 0;
if (keyboard_check(vk_left))
    argument0[0] = -move_distance;
else if (keyboard_check(vk_right))
    argument0[0] = move_distance;
else if (keyboard_check(vk_up))
    argument0[1] = -move_distance;
else if (keyboard_check(vk_down))
    argument0[1] = move_distance;
else
{
    argument0[0] = 0;
    argument0[1] = 0;
}
    
return argument0;
