var x_dir = 0, y_dir = 0;
var dir = irandom(3); // sets the direction of us to 1 of 4 directions
            // TODO: make this more direct, less variables            

switch(dir) // sets the position to checked based on our direction
{
case 0:
    x_dir = -move_distance;
    break;
case 1:
    x_dir = move_distance;
    break;
case 2:
    y_dir = -move_distance;
    break;
case 3:
    y_dir = move_distance;
    break;
}

var cant_move = check_pos(x + x_dir, y + y_dir).solid;

argument0[0] = x_dir;
argument0[1] = y_dir;

return argument0;

/*
if (cant_move == false)
{
    move_direction(x_dir, y_dir, move_speed);
}
*/
