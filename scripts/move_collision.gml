
// TODO: comment and change this to check_pos
var x_dest = argument0;
var y_dest = argument1;

// wraps moving object to other side of map if it steps out of bounds
if (x_dest >= (oGame.r_width))
{
    x_dest = 0;
}
else if (x_dest < 0)
{
    x_dest = (oGame.r_width - 1);
}

if (y_dest >= oGame.r_height)
{
    y_dest = 0;
}
else if (y_dest < 0)
{
    y_dest = (oGame.r_height - 1);
}
var cell_next = oGame.map_update[x_dest, y_dest];
return cell_next;
