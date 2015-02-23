//var cell_current = oGame.map_update[x, y];

if move_timer == false
{
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
}
else
{
    if move_timer_count > 0
    {
        move_timer_count -= 1;
    }
    else
    {
        move_timer = false;
        // put shift speed multipler here if shift is pressed! decrease move_timer_ma or it's equivalent
    }
}
