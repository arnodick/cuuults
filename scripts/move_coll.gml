var cell_next = oGame.map_update[pos_check[0], pos_check[1]];

if cell_next.solid == false
{
    if step_count < 5
    {
        step_count += 1;
    }
    oGame.map_update[x, y] = oGame.map[x, y];
    x = pos_check[0];
    y = pos_check[1];
    oGame.map_update[x, y] = global.player;
}
else
{
    if keyboard_check(vk_shift) and run == true
    {
        screen_shake(oScreen.shake_count_max_crash, 4*step_count);
        move_timer = true;
        move_timer_count = oScreen.shake_count_max_crash;
        
        if step_count > 4
        {
            oGame.map_update[pos_check[0], pos_check[1]].hp = 0;
            oGame.map[pos_check[0], pos_check[1]] = instance_create(pos_check[0], pos_check[1], oGame.map_update[pos_check[0], pos_check[1]].dead);
            oGame.map_update[pos_check[0], pos_check[1]] = oGame.map[pos_check[0], pos_check[1]];
        }
    }
    else
    {
        screen_shake(oScreen.shake_count_max_bump, 4);
        move_timer = true;
        move_timer_count = oScreen.shake_count_max_bump;
    }
    audio_play_sound(sndBump, 1, false);
    step_count = 0;
}
