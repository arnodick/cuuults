global.gamepadCount = gamepad_get_device_count();
global.gamepads[global.gamepadCount] = false;
global.dead_zone = 0.35;
for (var i = 0; i < global.gamepadCount; i++;)
{
    if gamepad_is_connected(i)
    {
        global.gamepads[i] = true;
    }
    else
    {
        global.gamepads[i] = false;
    }
    if gamepad_is_connected(i)
    {
        gamepad_set_axis_deadzone(i, global.dead_zone);
    }
}