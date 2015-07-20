var dir = irandom(4); // sets the direction of us to 1 of 4 directions
            // TODO: make this more direct, less variables            

switch(dir) // sets the position to checked based on our direction
{
case 0:
    move_dir[0] = -move_distance;
    break;
case 1:
    move_dir[0] = move_distance;
    break;
case 2:
    move_dir[1] = -move_distance;
    break;
case 3:
    move_dir[1] = move_distance;
    break;
}

var cant_move = move_collision(x + move_dir[0], y + move_dir[1]).solid;

if (cant_move == false)
{
    move_timer_start(move_timer_max, 1);
}
