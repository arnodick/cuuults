if keyboard_check(vk_shift) and run == true
{
    if key_arrows_check() == true
    {
        //move_pos_prev();
        move_run_dir();
        move_run_start();
        move_coll_run();
    }
    else
    {
        move_stop();
    }
}
else
{
    move_step_dir();
}
oGame.map_update[x, y] = global.player;
