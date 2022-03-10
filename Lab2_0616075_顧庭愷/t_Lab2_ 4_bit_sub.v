module t_Lab2_4_bit_sub;
  wire [3:0]Diff;
  wire Bout;
  reg [3:0]x, y;
  reg Bin;
  Lab2_borrow_lookahead_sub M1({Diff[3], Diff[2], Diff[1], Diff[0]}, Bout, {x[3], x[2], x[1], x[0]}, {y[3], y[2], y[1], y[0]}, Bin);
  initial 
   begin
    x = 4'b1100;
    y = 4'b0101;
    Bin = 1'b1;
   #20  x = 4'b1101;
	y = 4'b0110;
	Bin = 1'b0;
   #20  x = 4'b0101;
	y = 4'b1101;
   #20  x = 4'b0110;
	Bin = 1'b1;
   #20  x = 4'b1001;
	y = 4'b1001;
	Bin = 1'b0;
   #20  x = 4'b0101;
	y = 4'b0101;
	Bin = 1'b1;
   end
  initial #120 $finish;
  initial begin
   $display ("x    y    Bin Diff Bout");
   $monitor ("%b%b%b%b %b%b%b%b %b   %b%b%b%b %b",x[3],x[2],x[1],x[0],y[3],y[2],y[1],y[0],Bin,Diff[3],Diff[2],Diff[1],Diff[0],Bout);
    end
endmodule
