var map_string = argument0;
var map_write = file_text_open_write(map_string);
var map_array = argument1;

for (var b = 0; b < 32/*array_height_2d(map_array)*/; b++)
{
    for (var a = 0; a < 52/*array_length_2d(map_array, b)*/; a++)
    {
        with (map_array[a, b])
        var ind = " " + string(object_index);
        file_text_write_string( map_write, ind );
    }
    file_text_writeln(map_write);
}
file_text_close(map_write);

return map_string;
