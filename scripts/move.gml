//function chooses a type of movement from input, then executes collision and relocation of instance
//argument0 = the type of movement
//argument1 = object to move towards, if applicable (if not, just put -1 or something)
//TODO make this function take a variable amount of variables, so you only put a 2nd variable in when you are chasing an object
// TODO: make each move_type set a temp var to

if (move_timer == false)
{
    switch(argument0)
    {
        case move_types.key: // keyboard controls
            move_dir = move_key(move_dir);
            move_direction(move_dir[0], move_dir[1], move_speed);
            break;
        case move_types.rand: // random movement
            move_dir = move_rand(move_dir);
            move_direction(move_dir[0], move_dir[1], move_speed);
            break;
        case move_types.obj: // move towards object
            move_dir = move_dir_object(move_dir, argument1);
            break;
        //case 3:
            //move_direction();
        default:
            break;
    }
}
//else  // use this to give a more choppy movement, small pause at each cell
if (move_timer == true)
{
    move_collision();
}
