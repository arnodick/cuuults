var x_sector = oPlayer.x div argument0;
var y_sector = oPlayer.y div argument1;
var x_offset = 0;
var y_offset = 0;
if x_sector == 0
{
    x_offset = tile_size;
}
if y_sector == 0
{
    y_offset = tile_size;
}

view_xview[0] = x_offset + ( (x_sector) * (argument0 * tile_size) );
view_yview[0] = y_offset + ( (y_sector) * (argument1 * tile_size) );
view_wview[0] = (argument0 - 1) * tile_size; //room_width - tile_size;
view_hview[0] = (argument1 - 1) * tile_size; //room_height - tile_size;
