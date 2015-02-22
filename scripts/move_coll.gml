var cell_next = oGame.map_update[pos_check[0], pos_check[1]];

if cell_next.solid == false
{
    oGame.map_update[x, y] = oGame.map[x, y];
    x = pos_check[0];
    y = pos_check[1];
    //oGame.map_update[x, y] = global.player;
}
else
{
    screen_shake(oGame.shake_count_max_bump, 4);
    move_timer = true;
    move_timer_count = oGame.shake_count_max_bump;
    audio_play_sound(sndBump, 1, false);
    step_count = 0;
}