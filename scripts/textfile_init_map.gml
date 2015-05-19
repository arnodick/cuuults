var map_string = working_directory + "map_auto.txt"
var map_write = file_text_open_write(map_string);

for (var b = 0; b < argument1; b++)
{
    for (var a = 0; a < argument0; a++)
    {
        file_text_write_string(map_write, " 0");
    }
    file_text_writeln(map_write);
}
file_text_close(map_write);

return map_string;