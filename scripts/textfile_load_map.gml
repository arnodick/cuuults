// loads a map array from a text file
// input 0: file name chosen by user

var map_string = argument0; // the name of the file to load. chosen by user.

// TODO: make this a function, just do nested loops!
// opens the chosen file for reading and calculates the amount of cells per row
var map_file = file_text_open_read(map_string);
var file_width = textfile_width(map_file);
file_text_close(map_file);

// opens the chosen file for reading and calculates the amount of rows
map_file = file_text_open_read(map_string);
var file_height = textfile_length(map_file);
file_text_close(map_file);

// set room and array dimensions according to map file dimensions
room_dimensions(tile_size, file_width, file_height);

map_file = file_text_open_read(map_string); // open the text file one more time, for actual loading.

// TODO: write last room to a file here?

// destroys all the oThings in the room
with(oThing)
{
    if (object_index != oPlayer)
    {
        instance_destroy();
    }
}

// loops through each cell of the map file, assigning the values to the map array
for (var b = 0; b < r_height; b++)
{
    for (var a = 0; a < r_width; a++)
    {
        var cell = (file_text_read_real(map_file) + terrain_start); // grabs the integer value of each cell in the map file
        // restricts incorrect values from being input into map array from text file
        if ( (cell < terrain_start) or (cell > terrain_end) )
        {
            cell = terrain_start + 1;
        }
        // set the map array to an instance created from the value grabbed from the text file
        map[a, b] = instance_create(a, b, cell);
    }
}
file_text_close(map_file);  // close the file to stop baddy things

map_update = map;   // copy map to map_update
