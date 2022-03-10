module Lab2_ripple_borrow_4_bit_sub (output [3:0] Diff, output Bout, input [3:0] X, Y, input Bin);
  wire C1, C2, C3;
  Lab2_full_sub FS0(Diff[0], C1, X[0], Y[0], Bin),
		FS1(Diff[1], C2, X[1], Y[1], C1),
		FS2(Diff[2], C3, X[2], Y[2], C2),
		FS3(Diff[3], Bout, X[3], Y[3], C3);
endmodule
