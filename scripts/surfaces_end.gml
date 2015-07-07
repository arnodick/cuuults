// sets the drawing target back to the screen (rather than drawing to the surface)
surface_reset_target();

shader_set(shader_channel_f);
// Draws the screen surface, which has had all the objects' images written to it during normal draw event
draw_surface(screen, 0 + shake, 0); // TODO: make x and y positions variables, calculate with shake earlier
//draw_surface_stretched(screen, 0 + shake, 0, 640, 480);
shader_reset();
