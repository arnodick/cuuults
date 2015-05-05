for (var a = 0; a < r_width; a++)           // loops until every cell of the map has been accounted for
{
    for (var b = 0; b < r_height; b++)
    {
        draw_cell[a, b] = map_update[a, b];        // capture the contents of cell a, b in a temp var
        draw_x_coords[a] = ( (a + draw_offset) * tile_size ) + shake;
        draw_y_coords[b] = ( (b + draw_offset) * tile_size );
    }
}
