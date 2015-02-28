move_halt(move_timer_max);  //conceptually comes after actual movement, but needs to be here bc of breaks in swithc below

var nearest_object = instance_nearest(x, y, argument0);

if (floor(nearest_object.x) < x)
{
    pos_check[0] = x - move_distance;
}
if (floor(nearest_object.x) > x)
{
    pos_check[0] = x + move_distance;
}
if (floor(nearest_object.y) < y)
{
    pos_check[1] = y - move_distance;
}
if (floor(nearest_object.y) > y)
{
    pos_check[1] = y + move_distance;
}
