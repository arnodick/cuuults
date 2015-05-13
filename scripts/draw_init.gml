// just stuff to set up font switiching with a key press
font[0] = rd;
font[1] = font2;
font_switch = false;

// font = Road Drivin' (™) custom "font" + set font alignment left for some reason
draw_set_font(font[0]);
draw_set_halign(fa_left);
// gets rid of "smudginess" on sprites
texture_set_interpolation(false);

// room dimensions TODO: should this be in here?
room_width_max = 52;
room_height_max = 32;

// view dimensions
view_width = room_width_max;
view_height = room_height_max;
draw_offset = 0;
view_factor = 2;                        // the amount to divide the screen width and height by. SHOULDN'T BE ODD
view_switch =  false;                   // just a switch value to add to the factor, to easily half the screen


// SCREEN SHAKE SETTINGS
// YOU NEED THIS TO USE screen_shake functions!
shake_count_max_bump = 17;              // the amount of time to shake when WALKING into solid object
shake_count_max_crash = 60;             // the amount of time to shake when RUNNING into solid object 
//shake_count_max = shake_count_max_bump; // generic shake time maximum, in case nothing is set (NOTE: necessary?)
shake_count = 0;                        // the actual screen shake timer
shake_intensity = 0;                    // the range of distance the shake can move the screen drawing
shake = 0;                              // the actual amount of shake drawn on a specific step
shaking = false;                        // needs to be on for shaking to happen
