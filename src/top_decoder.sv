// =============================================================================
// Title        :   Top Decoder Binary 2s complement.
// Project      :   Decoder Binary 2s Complement
// File         :   top_decoder.sv
// Description  :   Module that converts complement 2 format to decimal.
// Date         :   September 30th 2021
// =============================================================================
// Authors      :   Gustavo Rueda
// =============================================================================

module top_decoder #(parameter DW_IN = 8, parameter NUMBER_WIDTH = 4, parameter SEGMENT_WIDTH = 7)
(
input logic [DW_IN-1:0]    number,
output                     sign,
output [SEGMENT_WIDTH-1:0] segments_hundreds,
output [SEGMENT_WIDTH-1:0] segments_tens,
output [SEGMENT_WIDTH-1:0] segments_units
);

logic             wr_sign;
logic [DW_IN-1:0] wr_hundreds;
logic [DW_IN-1:0] wr_tens;
logic [DW_IN-1:0] wr_units;
 
// Converter
converter_c2_to_decimal#(.DW(DW_IN))
c2_to_decimal(
	.complement2(number),
	.sign(wr_sign),
	.hundreds(wr_hundreds),
	.tens(wr_tens),
	.units(wr_units)
);

// Segments decoder
decoder_decimal_seven_segments
hundreds_decoder(
	.decimal_number(wr_hundreds[NUMBER_WIDTH-1:0]),
	.segments_configuration(segments_hundreds)
);

decoder_decimal_seven_segments
tens_decoder(
	.decimal_number(wr_tens[NUMBER_WIDTH-1:0]),
	.segments_configuration(segments_tens)
);

decoder_decimal_seven_segments
units_decoder(
	.decimal_number(wr_units[NUMBER_WIDTH-1:0]),
	.segments_configuration(segments_units)
);

assign sign = ~wr_sign;

endmodule
