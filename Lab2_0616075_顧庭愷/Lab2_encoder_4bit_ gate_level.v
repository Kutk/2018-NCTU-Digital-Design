module Lab2_encoder_4bit_gate_level (output [1:0] Aout, output V, input [3:0] D);
  wire [2:0]d;
  not 
      G1(d[2], D[2]),
      G2(d[1], D[1]),
      G3(d[0], D[0]); 
  wire t1, t2;
  and
      G4(t2, D[3], d[2]);
  or  
      G5(t1, D[2], D[3]),
      G6(t3, D[1], t2);
  and
      G7(Aout[1], t1, d[1], d[0]),
      G8(Aout[0], d[0], t3);
  or
      G9(V, D[0], D[1], D[2], D[3]);
endmodule
