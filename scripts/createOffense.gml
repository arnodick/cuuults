// Creates offense puck at iys beginning positions
var off = instance_create(argument0, argument1, oOffense);
// Assigns the offense object to either player 1 or player 2
off.player_num = argument2;
off.colour = argument3;
oGame.playerpoints[argument2] = 0;