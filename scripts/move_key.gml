var cell_current = oGame.map_update[x, y];

if move_timer == false
{
    if keyboard_check(vk_shift) and run == true
    {
        if arrows_check() == true
        {
            pos_prev();
            move_run_check();
            run_start();
            move_coll();
        }
        else
        {
            step_stop();
        }
    }
    else
    {
        move_step_check();
    }
    
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
