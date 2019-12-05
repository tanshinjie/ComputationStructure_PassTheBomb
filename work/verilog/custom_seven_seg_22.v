/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module custom_seven_seg_22 (
    input [3:0] char,
    output reg [6:0] segs
  );
  
  
  
  always @* begin
    
    case (char)
      1'h0: begin
        segs = 7'h3f;
      end
      1'h1: begin
        segs = 7'h0a;
      end
      2'h2: begin
        segs = 7'h73;
      end
      2'h3: begin
        segs = 7'h6b;
      end
      3'h4: begin
        segs = 7'h4e;
      end
      3'h5: begin
        segs = 7'h6d;
      end
      3'h6: begin
        segs = 7'h7d;
      end
      3'h7: begin
        segs = 7'h0f;
      end
      4'h8: begin
        segs = 7'h7f;
      end
      4'h9: begin
        segs = 7'h4f;
      end
      default: begin
        segs = 7'h00;
      end
    endcase
  end
endmodule