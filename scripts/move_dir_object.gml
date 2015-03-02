move_halt(move_timer_max);  //conceptually comes after actual movement, but needs to be here bc of breaks in swithc below

var x_pos = x, y_pos = y, nearest_object = instance_nearest(x, y, argument0);

if (floor(nearest_object.x) < x)
{
    x_pos = x - move_distance;
}
if (floor(nearest_object.x) > x)
{
    x_pos = x + move_distance;
}
if (floor(nearest_object.y) < y)
{
    y_pos = y - move_distance;
}
if (floor(nearest_object.y) > y)
{
    y_pos = y + move_distance;
}
move_collision(x_pos, y_pos);
