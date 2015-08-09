//initializes: counter that restricts movement, distance moved per step
// argument 0: move type
// argument 1: move speed
// arugment 2: move distance
move_type_init = argument0; // the initial type of movement. IE: keyboard controlled, random, etc.
move_type = move_type_init;
move_speed_init = argument1; // how long you are paused for after taking a step. this is how fast you move
move_speed = move_speed_init;
move_distance = argument2;  // how many spaces you move per step
move_timer = false; // TODO: is the nec? could just check if move timer count is > 0
move_timer_count = 0; // this gets incremented until it reaches move_timer_total_init

//variables for running. will be used when move animation implemented.

//TODO: don't need multiplier any more
run = true;
move_time_mult_init = 3;
move_time_mult = move_time_mult_init;
move_timer_total_init = 0; // the move timer X move timer multiplier. THIS is what gets counted up to every time you take a step.
step_count = 0;

move_dir[0] = 0;
move_dir[1] = 0;

stopped_wall = false;
