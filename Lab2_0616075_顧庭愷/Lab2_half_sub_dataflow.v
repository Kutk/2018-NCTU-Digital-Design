module Lab2_half_sub_dataflow(output D, B, input x, y);
	assign B = (!x)&&y,
	       D = (x&&(!y))||((!x)&&y);
endmodule 