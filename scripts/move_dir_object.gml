if move_timer == false
{
    var dir = 0;
    var nearest_object = instance_nearest(x, y, argument0);
    
    if (floor(nearest_object.x) < x)
    {
        dir = 0;
    }
    if (floor(nearest_object.x) > x)
    {
        dir = 1;
    }
    if (floor(nearest_object.y) < y)
    {
        dir = 2;
    }
    if (floor(nearest_object.y) > y)
    {
        dir = 3;
    }
    
    switch(dir)
    {
    case 0:
        pos_check[0] -= move_distance;
        move_halt(move_timer_max);
        break;
    case 1:
        pos_check[0] += move_distance;
        move_halt(move_timer_max);
        break;
    case 2:
        pos_check[1] -= move_distance;
        move_halt(move_timer_max);
        break;
    case 3:
        pos_check[1] += move_distance;
        move_halt(move_timer_max);
        break;
    }
    
    move_collision();
}
else
{
    move_stopped();
}
