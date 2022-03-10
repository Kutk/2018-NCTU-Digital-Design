module  Lab3_Neg_Edge_D_FF_gatelevel(output Q, NQ, input D, clock);
  wire w1, w2, S, R;
  nor #2 G1(w1, R, w2),
         G2(R, clock, w1),
	 G3(S, clock, w2, R),
	 G4(w2, S ,D);
  Lab3_SR_Latch_gatelevel SR(Q, NQ, S, R);
endmodule
