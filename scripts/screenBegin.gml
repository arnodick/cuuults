    // If the screen surface is destroyed (b/c of alt+enter for example) then:
    // Re-create the screen surface
if !surface_exists(screen)
{
    //screen = surface_create(display_get_gui_width(), display_get_gui_height());
    screen = surface_create(320, 240);
    view_surface_id[0] = screen;
}

    // If the screen surface does exist, then:
    // Clear the screen of last step's images, 

  //  surface_set_target(screen);
    // Removing draw_clear makes this into a painting game!
  //  draw_clear(0);
    //Don't know why any of this stuff was here
    //draw_set_blend_mode_ext(bm_src_alpha, bm_zero);
    //draw_surface_stretched(global.screen, view_xview[0], view_yview[0], view_wview[0]*screen_scale, view_hview[0]*screen_scale);
    //draw_set_blend_mode(bm_normal);
    //surface_reset_target();
