//if (keyboard_key == vk_left or keyboard_key == vk_right or keyboard_key == vk_up or keyboard_key == vk_down)
if (keyboard_check(vk_left) or keyboard_check(vk_right) or keyboard_check(vk_up) or keyboard_check(vk_down))
{
    return true;
}
else
{
    return false;
}
