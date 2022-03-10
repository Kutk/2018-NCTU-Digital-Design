module Lab2_half_sub_gate_level(output D, B, input x, y);
	wire com_x;
	not (com_x,x);
	and (B,com_x,y);
	xor (D,x,y);
endmodule 