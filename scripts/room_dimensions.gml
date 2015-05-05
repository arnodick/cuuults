// MAX SIZE: x 52, y 32

tile_size = argument0;             // the size of each cell on the screen. (mess with this to get weird overlapping effects)

room_width = tile_size * argument1;
room_height = tile_size *  argument2;

r_width = room_width / tile_size;   // the width/height of each room array is just the width/height of the actual room divided by the size of the cells
r_height = room_height / tile_size;

map[r_width, r_height] = 0;         // the somewhat static map of the level
map_update[r_width, r_height] = 0;  // the array of instances that will actually be drawn (NOTE: should this be in a screen object at the end of the list?)

view_xview[0] = tile_size;
view_yview[0] = tile_size;
view_wview[0] = room_width - (tile_size * 1);
view_hview[0] = room_height - (tile_size * 1);
