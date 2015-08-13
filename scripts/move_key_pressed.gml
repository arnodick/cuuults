//var x_dir = 0, y_dir = 0;
if (keyboard_check_pressed(vk_left))
    argument0[0] = -move_distance;
else if (keyboard_check_pressed(vk_right))
    argument0[0] = move_distance;
else if (keyboard_check_pressed(vk_up))
    argument0[1] = -move_distance;
else if (keyboard_check_pressed(vk_down))
    argument0[1] = move_distance;
    
return argument0;
