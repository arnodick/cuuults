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
    audio_sound_pitch(sndBloop, step_count);
    audio_play_sound(sndBloop, 1, false);
    //oGame.map_update[x, y] = global.player;
}
else
{
    screen_shake(oGame.shake_count_max_crash, 4*step_count);
    move_timer = true;
    move_timer_count = oGame.shake_count_max_crash;
    if step_count > 4
    {
        oGame.map_update[pos_check[0], pos_check[1]].hp = 0;
        oGame.map[pos_check[0], pos_check[1]] = instance_create(pos_check[0], pos_check[1], oGame.map_update[pos_check[0], pos_check[1]].dead);
        oGame.map_update[pos_check[0], pos_check[1]] = oGame.map[pos_check[0], pos_check[1]];
    }
    audio_play_sound(sndBump, 1, false);
    step_count = 0;
}