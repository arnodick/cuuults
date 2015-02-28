if move_timer == false
{
    
    var dir = irandom(4); // sets the direction of us to 1 of 4 directions
                        // TODO: make this more direct, less variables

    switch(dir) // sets the position to checked based on our direction
    {
    case 0:
        pos_check[0] = x - move_distance;
        move_halt(move_timer_max);
        break;
    case 1:
        pos_check[0] = x + move_distance;
        move_halt(move_timer_max);
        break;
    case 2:
        pos_check[1] = y - move_distance;
        move_halt(move_timer_max);
        break;
    case 3:
        pos_check[1] = y + move_distance;
        move_halt(move_timer_max);
        break;
    }
    
    move_collision();
}
else
{
    move_stopped();
}
