// =============================================================================
// Title        :   Decoder for decimals on a seven segments display.
// Project      :   Decoder Binary 2s Complement
// File         :   decoder_decimal_seven_segments.sv
// Description  :   Module that implements the decimal representation on a seven
//                  segments display.
// Date         :   September 30th 2021
// =============================================================================
// Authors      :   Gustavo Rueda
// =============================================================================

module decoder_decimal_seven_segments#(parameter DW = 4, parameter SEGMENTS = 7)
(
input  [DW-1:0]       decimal_number,
output [SEGMENTS-1:0] segments_configuration
);

assign segments_configuration =           //  6543210
					(decimal_number == 4'd0) ? (7'b1000000):
					(decimal_number == 4'd1) ? (7'b1111001):
					(decimal_number == 4'd2) ? (7'b0100100):
					(decimal_number == 4'd3) ? (7'b0110000):
					(decimal_number == 4'd4) ? (7'b0011001):
					(decimal_number == 4'd5) ? (7'b0010010):
					(decimal_number == 4'd6) ? (7'b0000010):
					(decimal_number == 4'd7) ? (7'b1111000):
					(decimal_number == 4'd8) ? (7'b0000000):
					(decimal_number == 4'd9) ? (7'b0010000):
					(7'b1111111);



endmodule
