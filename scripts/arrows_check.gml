if (keyboard_key == vk_left or keyboard_key == vk_right or keyboard_key == vk_up or keyboard_key == vk_down)
{
    if keyboard_check(vk_left)
    {
        pos_check[0] -= speed_run;
    }
    else if keyboard_check(vk_right)
    {
        pos_check[0] += speed_run;
    }
    else if keyboard_check(vk_up)
    {
        pos_check[1] -= speed_run;
    }
    else if keyboard_check(vk_down)
    {
        pos_check[1] += speed_run;
    }
    take_step();
}
else
{
    move_timer_mult = 3;
    audio_sound_pitch(sndBloop, 1);
    step_count = 0;
}
