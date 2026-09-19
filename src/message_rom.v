/*
 * Copyright (c) 2024-2025 James Ross
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

// Maps a repeating position [0,MSG_LEN) to a glyph code (see glyphs_rom.v),
// spelling out "DE LA SALLE UNIVERSITY" followed by two trailing spaces
// so there's a visible gap before the message repeats.
module message_rom(
    input  wire [5:0] pos,
    output reg  [5:0] glyph
);
    always @(*) begin
        case (pos)
            6'd0:  glyph = 6'd3;  // D
            6'd1:  glyph = 6'd4;  // E
            6'd2:  glyph = 6'd26; // (space)
            6'd3:  glyph = 6'd11; // L
            6'd4:  glyph = 6'd0;  // A
            6'd5:  glyph = 6'd26; // (space)
            6'd6:  glyph = 6'd18; // S
            6'd7:  glyph = 6'd0;  // A
            6'd8:  glyph = 6'd11; // L
            6'd9:  glyph = 6'd11; // L
            6'd10: glyph = 6'd4;  // E
            6'd11: glyph = 6'd26; // (space)
            6'd12: glyph = 6'd20; // U
            6'd13: glyph = 6'd13; // N
            6'd14: glyph = 6'd8;  // I
            6'd15: glyph = 6'd21; // V
            6'd16: glyph = 6'd4;  // E
            6'd17: glyph = 6'd17; // R
            6'd18: glyph = 6'd18; // S
            6'd19: glyph = 6'd8;  // I
            6'd20: glyph = 6'd19; // T
            6'd21: glyph = 6'd24; // Y
            6'd22: glyph = 6'd26; // (space)
            6'd23: glyph = 6'd26; // (space)
            default: glyph = 6'd26;
        endcase
    end
endmodule
