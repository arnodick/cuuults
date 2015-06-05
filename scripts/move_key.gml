if ( (keyboard_check(vk_shift)) and (run == true or global.debug == true) )
{
    move_run_dir();
}
else
{
    move_step_dir();
}
oGame.map_update[x, y] = id;    //puts this object into its proper cell in the active grid
