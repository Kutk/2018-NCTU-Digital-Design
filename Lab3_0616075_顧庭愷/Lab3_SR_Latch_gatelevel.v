module Lab3_SR_Latch_gatelevel(output Q, NQ, input S, R);
  //wire w1, w2;
  nor   #2  G1(Q, R, NQ),
            G2(NQ, S, Q);
endmodule
