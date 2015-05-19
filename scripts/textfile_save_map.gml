// converts a map array into a text file.
// input 0: chosen file name
// input 1: the map. the array to be converted into text values and saved

var map_write = file_text_open_write(argument0);   // readies file for writing
var map_array = argument1;  // the map. the array to be converted into text values and saved

for (var b = 0; b < r_height; b++)
{
    for (var a = 0; a < r_width; a++)
    {
        with (map_array[a, b])
        {
            var index_string = " "; // just some code to give text fiel more readable spacing
            if (object_index < 10)
            {
                index_string = index_string + " ";
            }
            // the number string to be written in each specific cell.
            // the string = each instance's object index
            index_string = index_string + string(object_index);
        }
        file_text_write_string( map_write, index_string );  // writes the string of the object index to the text file
    }
    file_text_writeln(map_write);   // skeps to next line of file at end of row
}
file_text_close(map_write); // when done close file, otherwise bad stuff happen?
