// Creates defense paddles and offense puck at their beginning positions
var def = instance_create(argument0, argument1, oDefense);
var off = instance_create(argument2, argument3, oOffense);
// Assigns the defense and offense objects to either player 1 or player 2
def.player_num = argument4;
off.player_num = argument4;
off.colour = argument5;