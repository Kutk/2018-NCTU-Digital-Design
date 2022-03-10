module Lab2_borrow_lookahead_sub (output [3:0] Diff, output Bout, input [3:0] X, Y, input Bin);
  wire [3:0]P, G, p, x, t;
  wire C1, C2, C3;
  not 
	G1 (x[0], X[0]),
	G2 (x[1], X[1]),
	G3 (x[2], X[2]), 
	G4 (x[3], X[3]);
  xor 
	G5 (P[0], X[0], Y[0]),
	G6 (P[1], X[1], Y[1]),
	G7 (P[2], X[2], Y[2]),
	G8 (P[3], X[3], Y[3]);
  and
	G9 (G[0], x[0], Y[0]),
	G10(G[1], x[1], Y[1]),
	G11(G[2], x[2], Y[2]),
	G12(G[3], x[3], Y[3]);
  not
	G13(p[0],P[0]),
	G14(p[1],P[1]),
	G15(p[2],P[2]),
	G16(p[3],P[3]);
  and
	G17(t[0], p[0], Bin);
  or
	G18(C1, t[0], G[0]);
  and
	G19(t[1], p[1], C1);
  or
	G20(C2, t[1], G[1]);
  and
	G21(t[2], p[2], C2);
  or
	G22(C3, t[2], G[2]);
  and
	G23(t[3], p[3], C3);
  or
	G24(Bout, t[3], G[3]);
  xor
	G25(Diff[0], P[0], Bin),
	G26(Diff[1], P[1], C1),
	G27(Diff[2], P[2], C2),
	G28(Diff[3], P[3], C3);
endmodule
  