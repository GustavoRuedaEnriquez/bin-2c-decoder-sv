// =============================================================================
// Title        :   Testbench Decoder Binary 2s complement.
// Project      :   Decoder Binary 2s Complement
// File         :   tb_converter_c2_to_decimal.sv
// Description  :   Testbench for the decoder.
// Date         :   September 30th 2021
// =============================================================================
// Authors      :   Gustavo Rueda
// =============================================================================

module tb_converter_c2_to_decimal;

localparam IN_DW = 8;
localparam SEGMENT_WIDTH = 7;

//Inputs
logic [IN_DW-1:0] number;

//Outputs
logic                     sign;
logic [SEGMENT_WIDTH-1:0] hundreds;
logic [SEGMENT_WIDTH-1:0] tens;
logic [SEGMENT_WIDTH-1:0] units;

//Decoder module
top_decoder #(.DW_IN(IN_DW))
decoder
(
    .number(number),
    .sign(sign),
    .segments_hundreds(hundreds),
    .segments_tens(tens),
    .segments_units(units)
);

initial begin
    number = -8'sd128;
    repeat (255)
    #3 number = number + 1'd1;
    #10
    $stop;
end

endmodule
