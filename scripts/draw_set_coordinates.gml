// loops until every cell of the map has been accounted for
for (var a = 0; a < argument0; a++)
{
    for (var b = 0; b < argument1; b++)
    {
        // sets a bunch of coordinates in the array that the draw event loops through
        // TODO: get rid of this by switching to surfaces. write to surface here with loops, then just draw a single surface in draw event.
        draw_x_coords[a] = ( (a + draw_offset) * tile_size );
        draw_y_coords[b] = ( (b + draw_offset) * tile_size );
    }
}
