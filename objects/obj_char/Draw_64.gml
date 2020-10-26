draw_set_font(font_arial_black);
var help_text = "Use [ and ] to control camera lookahead! (" 
    + string(global.lookahead_factor) + ")"
    + "\nUse WASD or Arrows to move, Space to Roll."
    + "\nR to restart, ESC to exit.",
    xx = 16,
    yy = 16,
    bb = 1;
draw_set_alpha(1);
draw_set_color(c_black);
draw_text(xx - bb, yy - bb, string(help_text));
draw_text(xx - bb, yy + bb, string(help_text));
draw_text(xx + bb, yy - bb, string(help_text));
draw_text(xx + bb, yy + bb, string(help_text));
draw_set_color(c_white);
draw_text(xx, yy, string(help_text));

