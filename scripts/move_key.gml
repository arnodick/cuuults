// TODO: make it so that pressing up or down while pressing left or right doesn't stick the carry dir in the sideways position.
if (keyboard_check(vk_left))
{
    argument0[0] = -move_distance;
    argument0[1] = 0;
}
else if (keyboard_check(vk_right))
{
    argument0[0] = move_distance;
    argument0[1] = 0;
}
else if (keyboard_check(vk_up))
{
    argument0[1] = -move_distance;
    argument0[0] = 0;
}
else if (keyboard_check(vk_down))
{
    argument0[1] = move_distance;
    argument0[0] = 0;
}
else
{
    argument0[0] = 0;
    argument0[1] = 0;
}
    
return argument0;
