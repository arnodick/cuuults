// Creates a surface that the whole screen will be drawn on
screen = surface_create(room_width, room_height);

// If the screen surface can't be created because surfaces are not supported by the graphics card, then:
// Destroy the oScreen object, reverting to the viewport method
if screen = -1
{
    instance_destroy();
}
