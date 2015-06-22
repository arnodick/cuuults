//function chooses a type of movement from input, then executes collision and relocation of instance
//argument0 = the type of movement
//argument1 = object to move towards, if applicable (if not, just put -1 or something)

if move_timer == false
{
    move_timer_start(move_timer_max, 1);
}
else
{
    move_timer_inc_proj();
}
