//initializes: counter that restricts movement, distance moved per step
move_timer_max_init = argument0;
move_distance = argument1;  // how far it moves per step. could this be something other than 1, or just use timer?
move_timer = false; // TODO: is the nec? could just check if move timer count is > 0
move_timer_count = 0;       // this gets incremented until it reaches move_timer_total_init
move_timer_max = move_timer_max_init; // how long you are paused for after taking a step. this is how fast you move

//variables for running. will be used when move animation implemented.
run = true;
move_time_mult_init = 3;
move_time_mult = move_time_mult_init;
move_timer_total_init = 0; // the move timer X move timer multiplier. THIS is what gets counted up to every time you take a step.
step_count = 0;

move_dir[0] = 0;
move_dir[1] = 0;

// constants for move_type input
//basically just nmemonic so you don't have to remember 0 = key movement, 1 = rand, etc
mt_key = 0;
mt_rand = 1;
mt_obj = 2;
mt_proj = 3;

stopped_wall = false;
