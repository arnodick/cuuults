font[0] = rd;
font[1] = font2;
font_switch = false;

draw_set_font(font[0]);
draw_set_halign(fa_left);

room_width_max = 52;
room_height_max = 32;
draw_offset = 0;

view_width = 26;
view_height = 16;

/*
for (var a = 0; a < room_width_max; a++)
{
    for (var b = 0; b < room_height_max; b++)
    {
        draw_coords[a, b] = 0;
    }
}
*/
