module JK_ff_AR(Q, NQ, J, K, Clk, rst);
  output Q, NQ;
  input J, K, Clk, rst;
  reg Q;
  assign NQ = ~Q;
  always@(posedge Clk, negedge rst) begin
    if(!rst) Q = 1'b0;
    else begin
     case({J,K})
    	2'b00: Q = Q;
    	2'b01: Q = 1'b0;
    	2'b10: Q = 1'b1;
    	2'b11: Q = ~Q;
     endcase
    end
   end
endmodule
