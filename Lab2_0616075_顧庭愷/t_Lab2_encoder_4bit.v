module  t_Lab2_encoder_4bit;
  wire [1:0]Aout;
  wire V;
  reg [3:0]D;
  Lab2_encoder_4bit_dataflow M1({Aout[1], Aout[0]}, V, {D[3], D[2], D[1], D[0]});
  initial
   begin
    D = 4'b0000;
    repeat(15)
    #10 D = D + 4'b0001;
   end
  initial #160 $finish;
  initial begin
   $display ("D    Aout  V");
   $monitor ("%b%b%b%b %b%b    %b",D[3],D[2],D[1],D[0],Aout[1],Aout[0],V);
    end
endmodule
