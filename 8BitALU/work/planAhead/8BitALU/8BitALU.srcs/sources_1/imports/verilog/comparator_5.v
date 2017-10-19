/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module comparator_5 (
    input z,
    input n,
    input v,
    input [1:0] alufn,
    output reg [7:0] out,
    input error
  );
  
  
  
  always @* begin
    out = 1'h0;
    if (alufn == 2'h1) begin
      out = z;
    end
    if (alufn == 2'h2) begin
      out = n ^ v;
    end
    if (alufn == 2'h3) begin
      out = z | (n ^ v);
    end
    if (error) begin
      out = 8'hff;
    end
  end
endmodule
