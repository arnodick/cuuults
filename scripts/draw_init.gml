window_set_fullscreen(false);   //making this false gives the game a gross startup flicker TODO: remove this when you don't need to create maps anymore, so its ugliness doesn't make it into final build
texture_set_interpolation(false);   // gets rid of "smudginess" on sprites

spr_width = sprite_get_width(spr_tiles);    // gets the width of the sprite resource
spr_middle = spr_width/2;
sprite_set_offset(spr_tiles, spr_middle, spr_middle); // the amount to offset drawing of sprites, so they are centred in the cell

tile_size = spr_width;  // the width and height of each tile (NOT nec same as sprite size, but it is or now)

// view dimensions
view_factor = 1;    // the number to power with switch. will be set by sector amount later.
view_switch =  3;   // the exponent. gets + or - by f2 and f3

// just stuff to set up font switiching with a key press
// TODO: make this happen with sprites too
font[0] = font_road_drivin;
font[1] = font_8bit;
font_switch = false;

// font = Road Drivin' (™) custom "font" + set font alignment left for some reason
draw_set_font(font[0]);
draw_set_halign(fa_left);

// SCREEN SHAKE SETTINGS
// YOU NEED THIS TO USE screen_shake functions!
shake_count_max_bump = 17;              // the amount of time to shake when WALKING into solid object
shake_count_max_crash = 60;             // the amount of time to shake when RUNNING into solid object 
//shake_count_max = shake_count_max_bump; // generic shake time maximum, in case nothing is set (NOTE: necessary?)
shake_count = 0;                        // the actual screen shake timer
shake_intensity = 0;                    // the range of distance the shake can move the screen drawing
shake = 0;                              // the actual amount of shake drawn on a specific step
shaking = false;                        // needs to be on for shaking to happen

screen_angle = 0;
screen_angle_inc = 0.5;
screen_offset = 0;
screen_offset_timer = 0;

// Creates a surface that the whole screen will be drawn on
screen = -1;

room_x_view = 0;
room_y_view = 0;

view_xview[0] = 0;
view_yview[0] = 0;
/*
// If the screen surface can't be created because surfaces are not supported by the graphics card, then:
// Destroy the oScreen object, reverting to the viewport method
if (screen == -1)
{
    instance_destroy();
}
*/
