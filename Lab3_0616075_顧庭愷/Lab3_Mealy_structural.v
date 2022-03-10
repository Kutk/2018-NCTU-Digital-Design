module Lab3_Mealy_structural (output z, input x, clock, reset);
  wire JA, KA, JB, KB, A, NA, B, NB;
  assign JA = x^B;
  assign KA = !x;
  assign JB = x || (NA);
  assign KB = (!x) && (NA);
  assign z = (!x) && (NB);
  JK_ff_AR M_A(A, NA, JA, KA, clock, reset);
  JK_ff_AR M_B(B, NB, JB, KB, clock, reset);
endmodule
