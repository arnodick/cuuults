// the size of each cell on the screen. (mess with this to get weird overlapping effects)

// sets the width and height of the room array
r_width = argument1;
r_height = argument2;

// the somewhat static map of the level and instances that will actually be drawn (NOTE: should this be in a screen object at the end of the list?)
// TODO: change map names to map_terrain and map_objects
map[r_width, r_height] = 0;
map_update[r_width, r_height] = 0;

// the height and width of the gamemaker room, so that the actual screen will be wide enough
room_width = argument0 * argument1;
room_height = argument0 *  argument2;
