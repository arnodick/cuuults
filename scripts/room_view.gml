// argument0 = view width
// argument1 = view height

// TODO: once wrapping movement is set up, GET RID OF THIS
// calculates quadrant of the map player is in
var x_sector = oPlayer.x div argument0;
var y_sector = oPlayer.y div argument1;
var x_offset = 0;
var y_offset = 0;

// if player is in far left quadrant, move screen right by 1 tile to accomodate empty border/exit cell
if x_sector == 0
{
    x_offset = tile_size;
}
// if player is in top quadrant, move screen down 1 tile to accomodate empty border/exit cell
if y_sector == 0
{
    y_offset = tile_size;
}

// shake code, preprocessed before drawing, to avoid putting a load of calcs on the draw event
if shaking == true                          
{
    if shake_count > 0                      // if there is still time to screen shake, then shake away!
    {
                                            // NOTE: make shake decrement with time? divide it by shake_count/shake_count_max?
        shake = random(shake_intensity);    // assigns the actual shake value to a random number within a shake range.
        shake_count -= 1;                   // decrement shake count
    }
    else                                    // if we're out of shake time, stop shaking, reset shake values
    {
        shake = 0;                          // sets the shake offset back to 0, so screen doesn't get stuck drawing off to one side
        shaking = false;                    // turns of shaking, gets us out of this shake field
        shake_intensity = 0;                // sets shake intensity back to 0. this is reset to something above 0 by player.
        shake_count = shake_count_max_bump; // resets the shake timer to a generic max.
    }
}

// setting the actual view
view_xview[0] = ( x_offset + ( (x_sector) * (argument0 * tile_size) ) ) + shake;
view_yview[0] = ( y_offset + ( (y_sector) * (argument1 * tile_size) ) );
view_wview[0] = (argument0 - 1) * tile_size; //room_width - tile_size;
view_hview[0] = (argument1 - 1) * tile_size; //room_height - tile_size;
