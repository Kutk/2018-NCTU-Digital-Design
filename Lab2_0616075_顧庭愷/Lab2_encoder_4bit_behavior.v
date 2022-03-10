module Lab2_encoder_4bit_behavior (output reg [1:0] Aout, output reg V, input [3:0] D);
  always@(V or Aout[1] or Aout[0] or D[3] or D[2] or D[1] or D[0])
   begin
    if(D[3]==1'b0&&D[2]==1'b0&&D[1]==1'b0&&D[0]==1'b0) begin
     Aout[1] = 1'bx;
     Aout[0] = 1'bx;
     V = 1'b0;
     end
    else begin
     V = 1'b1;
     Aout[1] = (D[2]||D[3])&&(!D[1])&&(!D[0]);
     Aout[0] = D[1]&&(!D[0])||D[3]&&(!D[2])&&(!D[0]);
     end
    end
endmodule


     