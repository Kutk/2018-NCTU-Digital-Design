module Lab2_full_sub(output D, B, input x, y, z);
   wire C1, C2, C3;
   Lab2_half_sub_gate_level HS1(C1, C2, x, y);
   Lab2_half_sub_gate_level HS2(D, C3, C1, z);
   or G1(B, C2, C3);
endmodule
