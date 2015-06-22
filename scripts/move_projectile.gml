//function chooses a type of movement from input, then executes collision and relocation of instance
//argument0 = the type of movement
//argument1 = object to move towards, if applicable (if not, just put -1 or something)

if move_timer == false
{
    switch(argument0)
    {
        case 3:
            move_bullet();
            break;
    }
}
else
{
    move_timer_inc_proj();
}
