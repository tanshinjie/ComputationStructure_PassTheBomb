/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module player_15 (
    input clk,
    input rst,
    input left,
    input opp,
    input right,
    output reg [2:0] buttonPress
  );
  
  
  
  wire [1-1:0] M_edge_detector_left_out;
  reg [1-1:0] M_edge_detector_left_in;
  edge_detector_12 edge_detector_left (
    .clk(clk),
    .in(M_edge_detector_left_in),
    .out(M_edge_detector_left_out)
  );
  wire [1-1:0] M_edge_detector_opp_out;
  reg [1-1:0] M_edge_detector_opp_in;
  edge_detector_12 edge_detector_opp (
    .clk(clk),
    .in(M_edge_detector_opp_in),
    .out(M_edge_detector_opp_out)
  );
  wire [1-1:0] M_edge_detector_right_out;
  reg [1-1:0] M_edge_detector_right_in;
  edge_detector_12 edge_detector_right (
    .clk(clk),
    .in(M_edge_detector_right_in),
    .out(M_edge_detector_right_out)
  );
  wire [1-1:0] M_button_conditioner_left_out;
  reg [1-1:0] M_button_conditioner_left_in;
  button_conditioner_11 button_conditioner_left (
    .clk(clk),
    .in(M_button_conditioner_left_in),
    .out(M_button_conditioner_left_out)
  );
  wire [1-1:0] M_button_conditioner_opp_out;
  reg [1-1:0] M_button_conditioner_opp_in;
  button_conditioner_11 button_conditioner_opp (
    .clk(clk),
    .in(M_button_conditioner_opp_in),
    .out(M_button_conditioner_opp_out)
  );
  wire [1-1:0] M_button_conditioner_right_out;
  reg [1-1:0] M_button_conditioner_right_in;
  button_conditioner_11 button_conditioner_right (
    .clk(clk),
    .in(M_button_conditioner_right_in),
    .out(M_button_conditioner_right_out)
  );
  
  always @* begin
    M_button_conditioner_left_in = left;
    M_button_conditioner_opp_in = opp;
    M_button_conditioner_right_in = right;
    M_edge_detector_left_in = M_button_conditioner_left_out;
    M_edge_detector_opp_in = M_button_conditioner_opp_out;
    M_edge_detector_right_in = M_button_conditioner_right_out;
    buttonPress = 3'h0;
    if (M_edge_detector_left_out == 1'h1) begin
      buttonPress = 3'h4;
    end
    if (M_edge_detector_opp_out == 1'h1) begin
      buttonPress = 3'h2;
    end
    if (M_edge_detector_right_out == 1'h1) begin
      buttonPress = 3'h1;
    end
  end
endmodule
