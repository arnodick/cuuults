// loads a map array from a text file
// input 0: file name chosen by user
// input 1: amount of sectors

var map_string = working_directory + argument0 + "_00.txt"; // the name of the file to load.
var sectors = argument1; // the amount of sectors in the map

while (file_exists("map_0" + string(map_count) + ".txt"))
{
    map_count++;
}

view_factor = sectors/4; // TODO: use map count instead of 4 here?

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
room_dimensions(tile_size, file_width*sectors, file_height*sectors);


// destroys all the oThings in the room
with(oThing)
{
    if ((object_index != oPlayer) and (object_index != oSpace))
    {
        instance_destroy();
    }
}

for (var d = 0; d < sectors; d++)
{
    for (var c = 0; c < sectors; c++)
    {
        map_file = file_text_open_read(working_directory + "map_0" + string(irandom(map_count - 1)) + ".txt"); // open the text file one more time, for actual loading.
        // TODO: write last room to a file here?
        // loops through each cell of the map file, assigning the values to the map array
        var bottom_side = 0 + (file_height*d);
        var top_side = bottom_side + file_height;
        var left_side = 0 + (file_width*c);
        var right_side = left_side + file_width;
        for (var b = bottom_side; b < top_side; b++)
        {
            for (var a = left_side; a < right_side; a++)
            {
                var cell = (file_text_read_real(map_file) + terrain_start); // grabs the integer value of each cell in the map file
                // restricts incorrect values from being input into map array from text file
                if ( (cell < terrain_start) or (cell > terrain_end) )
                {
                    cell = terrain_start + 1;
                }
                // set the map array to an instance created from the value grabbed from the text file
                if (cell == terrain_start)
                {
                    map[a, b] = space;
                }
                else
                {
                    map[a, b] = instance_create(a, b, cell);
                }
            }
        }
        file_text_close(map_file);  // close the file to stop baddy things
    }
}

map_update = map;   // copy map to map_update
