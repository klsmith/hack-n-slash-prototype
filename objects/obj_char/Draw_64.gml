draw_set_font(font_arial_black);
var help_text = "#Use [ and ] to control camera lookahead! (" 
    + string(global.lookahead_factor) + ")"
    + "#Use WASD or Arrows to move, Space to Roll."
    + "#R to restart, ESC to exit.",
    xx = 16,
    yy = 0,
    bb = 1;
draw_set_alpha(1);
draw_set_color(c_black);
draw_text(xx - bb, yy - bb, string_hash_to_newline(help_text));
draw_text(xx - bb, yy + bb, string_hash_to_newline(help_text));
draw_text(xx + bb, yy - bb, string_hash_to_newline(help_text));
draw_text(xx + bb, yy + bb, string_hash_to_newline(help_text));
draw_set_color(c_white);
draw_text(xx, yy, string_hash_to_newline(help_text));

