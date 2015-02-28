//function chooses a type of movement from input, then executes collision and relocation of instance
//argument0 = the type of movement
//argument1 = object to move towards, if applicable (if not, just put -1 or sometihng)
if move_timer == false
{
    switch(argument0)
    {
        case 0: // TO DO: keyboard controls
            break;
        case 1: // random movement
            move_rand();
            break;
        case 2: // move towards object
            move_dir_object(argument1);
            break;
    }
    move_collision();
}
else
{
    move_stopped();
}