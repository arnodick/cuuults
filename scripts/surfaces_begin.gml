// If the screen surface is destroyed (b/c of alt+enter for example) then:
// Re-create the screen surface
if !surface_exists(screen)
{
    screen = surface_create(view_wport[0], view_hport[0]);
}

// If the screen surface does exist, then:
// Clear the screen of last step's images, 
surface_set_target(screen);
draw_clear(0);  // Removing draw_clear makes this into a painting game!

//Don't know why any of this stuff was here
//draw_set_blend_mode_ext(bm_src_alpha, bm_inv_src_colour);
//draw_surface_stretched(global.screen, view_xview[0], view_yview[0], view_wview[0]*screen_scale, view_hview[0]*screen_scale);
//draw_set_blend_mode(bm_add);
