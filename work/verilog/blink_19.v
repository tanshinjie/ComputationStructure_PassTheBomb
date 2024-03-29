/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module blink_19 (
    input clk,
    input rst,
    output reg [2:0] blink
  );
  
  
  
  reg [24:0] M_counter_d, M_counter_q = 1'h0;
  
  always @* begin
    M_counter_d = M_counter_q;
    
    blink = M_counter_q[22+2-:3];
    M_counter_d = M_counter_q + 1'h1;
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_counter_q <= 1'h0;
    end else begin
      M_counter_q <= M_counter_d;
    end
  end
  
endmodule
