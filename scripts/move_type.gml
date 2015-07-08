//function chooses a type of movement from input, then executes collision and relocation of instance
//argument0 = the type of movement
//argument1 = object to move towards, if applicable (if not, just put -1 or something)

//TODO make this function take a variable amount of variables, so you only put a 2nd variable in when you are chasing an object
if move_timer == false
{
    switch(argument0)
    {
        case 0: // keyboard controls
            move_key();
            break;
        case 1: // random movement
            move_rand();
            break;
        case 2: // move towards object
            move_dir_object(argument1);
            break;
        default:
            break;
    }
}
else
{
    var timer_on = move_timer_inc();
    if (timer_on == false)
    {
        move_timer = false;
        move_timer_count = 0;
        move_timer_total_init = 0;
        move_dir[0] = 0;
        move_dir[1] = 0;
    }
}
