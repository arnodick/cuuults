//sets the direction and speed (timer) for movement
//input 0 = x direction
//input 1 = y direction
//input 2 = move timer (how many game steps to pause for)
// TODO: use an acceleration value instead of multipler?

move_dir[0] = argument0;
move_dir[1] = argument1;
move_timer_total_init = argument2;
move_timer = true;
move_timer_count = 0;
