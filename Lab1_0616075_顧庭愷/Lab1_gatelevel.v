module Lab1_gatelevel(F,A,B,C,D);
	output F;
	input A,B,C,D;
	wire w1,w2,w3,w4,w5,a,d;
	not G4(a,A),G3(d,D);
	and G1(w1,A,B),G2(w2,C,d),G5(w3,B,D);
	or G6(w4,w1,w2),G7(w5,a,w3);
	and G8(F,w4,w5);
endmodule
