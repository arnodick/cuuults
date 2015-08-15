if (carry == true)
{
    if (stopped_wall == true)
    {
        check_carry_drop();
    }
    else if (move_timer = false)
    {
    if (keyboard_check_pressed(vk_shift))
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
            move_direction(x - oPlayer.x, y - oPlayer.y, move_speed);   //TODO: use carry_dir here instead?
            move_type = move_type_init;
        }
        }
        //move_type = 3;
        //carry_dir[0] = 1;
        move_speed = move_speed_init;
        move_direction(x - carrying.x, y - carrying.y, move_speed);
        carry = false;
        carrying = 0;   // will this cause problems? make me carry something, like whatever the 1st instance is?
        carry_dir[0] = 0;
        carry_dir[1] = 0;
        //anim_offset_x = 0;
    }
    }
}
else
{
    if (keyboard_check(vk_shift))
    {
        if key_arrows_check_pressed()
        {
        carry_dir = move_key_pressed(carry_dir);
        var cell_checked = check_pos(x + carry_dir[0], y + carry_dir[1]);
        if (cell_checked.carryable == true)
        {
            carry = true;
            carrying = cell_checked;
            move_speed = move_speed_init*2;
            //anim_offset_x = -(tile_size/2);
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
}
