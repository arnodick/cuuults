if ( (keyboard_check(vk_shift)) and (run == true or global.debug == true) )
{
    move_run_dir();
}
else
{
    move_step_dir();
}
oGame.map_update[x, y] = global.player;
