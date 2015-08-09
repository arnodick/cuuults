if (carry == true)
{
    if (stopped_wall == true)
    {
        check_carry_drop();
    }
    else if (move_timer = false)
    {
    if keyboard_check_pressed(ord('X'))
    {
        if (instance_exists(carrying))
        {
        with (carrying)
        {
            //move_type = 3;
            move_speed = 10;
            move_distance = 1;
            
            solid = true;
            sound_step = sndBump;
            move_direction(-1, 0, move_speed);
            move_type = move_type_init;
        }
        }
        //move_type = 3;
        //move_dir[0] = 1;
        carry = false;
        carrying = 0;   // will this cause problems? make me carry something, like whatever the 1st instance is?
        move_speed = move_speed_init;
        move_direction(1, 0, move_speed);
    }
    }
}
else
{
    if (keyboard_check_pressed(ord('X')))
    {
        if (check_pos(x-1,y).carryable == true) // BUG TODO: this crashes game if at edge fo screen (have to warp detection)
        {
            carry = true;
            carrying = oGame.map_update[x-1,y];
            move_speed = move_speed_init*2;
            if (instance_exists(carrying))
            {
                with(carrying)
                {
                    move_type = move_types.key;
                    move_speed = oPlayer.move_speed;
                    move_distance = 1;
                    solid = false;
                    sound_step = -1;
                }
            }
        }
    }
}
