if ( (keyboard_check(vk_shift)) and (run == true or global.debug == true) )
{
    // TODO: set move speed to 1 here.
    move_run_dir();
}
else
{
    move_step_dir();
}
