//initializes: counter that restricts movement, distance moved per step
move_distance = 1;  // how far it moves per step. could this be something other than 1, or just use timer?
move_timer = false; // TODO: is the nec? could just check if move timer count is > 0
move_timer_count = 0;       // temp move timer, which resets all the time
move_timer_max = argument0; // how long you are paused for after taking a step. this is how fast you move