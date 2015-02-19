hor_wall = instance_create(argument0, argument1, oWall);
hor_wall.wall[0] = argument0;
hor_wall.wall[1] = argument1 - 1;
hor_wall.wall[2] = argument0 + room_width;
hor_wall.wall[3] = argument1;