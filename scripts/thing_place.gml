//thing_place(cell to place instance, object to place)
var x_pos = argument0.x;
var y_pos = argument0.y;
argument0.hp = 0;
oGame.map[x_pos, y_pos] = instance_create(x_pos, y_pos, argument1);
oGame.map_update[x_pos, y_pos] = oGame.map[x_pos, y_pos];