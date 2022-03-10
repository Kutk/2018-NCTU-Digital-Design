module  Lab2_half_sub_behavior(output reg D, B, input x, y);
	always @(x or y or D or B)begin
	 if(x==y)begin
	  B = 1'b0;
	  D = 1'b0;
	 end
	 else begin
	  B = (!x);
	  D = 1'b1; 
	 end
        end
endmodule
