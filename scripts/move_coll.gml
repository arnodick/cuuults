var cell_next = oGame.map_update[pos_check[0], pos_check[1]];

if cell_next.solid == false
{
    oGame.map_update[x, y] = oGame.map[x, y];
    x = pos_check[0];
    y = pos_check[1];
}
else
{
    screen_shake(oGame.shake_count_max_bump, 4);
    audio_play_sound(sndBump, 1, false);
    //TODO: make these inputs into the movement function, so anything can make noise, shake on impact
    move_timer = true;
    move_timer_count = oGame.shake_count_max_bump;
    step_count = 0;
}