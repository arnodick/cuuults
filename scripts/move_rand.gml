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

move_collision(x + move_dir[0], y + move_dir[1]);

move_timer_start(move_timer_max, 1);  //conceptually comes after actual movement, but needs to be here bc of breaks in swithc below
