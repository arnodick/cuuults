var file_width = 0;
//get the amount of numbers per line
while (!file_text_eoln(argument0)) //loops through file as long as last line hasn't been reached
{
    file_width += 1; //increments file length count for each line
    file_text_read_real(argument0); //skips to next line
}
file_text_close(argument0); //closes the text file
return file_width; //returns the amount of lines in the text file