// argument0 = view width
// argument1 = view height

// calculates quadrant of the map player is in
if (instance_exists(oPlayer))
{
    x_sector = oPlayer.x div argument0;
    y_sector = oPlayer.y div argument1;
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

// sets what part of the room we are looing at
view_xview[0] = ( (x_sector) * (argument0 * tile_size) );
view_yview[0] = ( (y_sector) * (argument1 * tile_size) );
view_wview[0] = (argument0) * tile_size; 
view_hview[0] = (argument1) * tile_size; 

// pre-sets the draw coordinates, so less math in draw event
// TODO: GET RID OF THIS WITH SURFACES
//draw_set_coordinates(r_width, r_height);
