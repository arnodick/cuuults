var i;
for (i = 0; i < instance_number(oOffense); i += 1)
{
   var off = instance_find(oOffense, i);
   off.speed = 0;
   off.x = oGame.off_pos[off.player_num, 0];
   off.y = oGame.off_pos[off.player_num, 1];
   off.control = false;
   off.slap = false;
   //off.controltimer = oGame.countdowntimer;
}
//oGame.countdown = true;