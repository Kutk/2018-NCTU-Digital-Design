module Lab1_gatelevel_UDP(F,A,B,C,D);
	output F;
	input A,B,C,D;
	wire w1,w2,a,d;
	
	not G1(a,A),G2(d,D);
	and G3(w1,A,B,C),G4(w2,a,C,d);
	or G5(F,w1,w2);
endmodule
  