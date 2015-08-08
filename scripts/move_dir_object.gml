// TODO: rename this to move_at_object? or just generalize to move_coord and input x, y instead of object

if instance_exists(argument0)
// TODO: randomize this a bit? so that they don't beeline, give a bit of variation
// TODO: do we need floor here?
// TODO: for pathfdinding, check most direct square first, then next least, then last least. First one to be non-solid gets taken.
{
    var nearest_object = instance_nearest(x, y, argument0), obj_x = nearest_object.x, obj_y = nearest_object.y;
    var x_dir = 0, y_dir = 0;

    if (floor(obj_x) < x)
    {
        x_dir = -move_distance;
    }
    if (floor(obj_x) > x)
    {
        x_dir = move_distance;
    }
    if (floor(obj_y) < y)
    {
        y_dir = -move_distance;
    }
    if (floor(obj_y) > y)
    {
        y_dir = move_distance;
    }
}
var cant_move = move_collision(x + x_dir, y + y_dir).solid;
// TODO: MAKE THIS SCRIPT MORE ROBUST AT PATHFINDING!
//      if it can't go forward, try a bit to the left or right. if not that, then random?
//      current version a bit weird
if (cant_move == true)
{
    move_rand();
}
else
{
    move_direction(x_dir, y_dir, move_speed);
}
