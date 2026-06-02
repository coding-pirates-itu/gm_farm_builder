/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 361069B8
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 0854D3B1
/// @DnDArgument : "font" "fnt_Money"
/// @DnDSaveInfo : "font" "fnt_Money"
draw_set_font(fnt_Money);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1C095162
/// @DnDArgument : "color" "Foreground"
draw_set_colour(Foreground & $ffffff);
var l1C095162_0=(Foreground >> 24);
draw_set_alpha(l1C095162_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 332C6202
/// @DnDArgument : "halign" "fa_right"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_right);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 24FD62B3
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "o_GameController.Money"
draw_text(x + 0, y + 0,  + string(o_GameController.Money));