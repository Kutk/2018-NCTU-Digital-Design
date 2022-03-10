module  t_Lab2_full_sub;
   wire B, D;
   reg x, y, z;
    Lab2_full_sub M1(D, B, x, y, z);
   initial
    begin
	  x = 1'b0;y = 1'b0;z = 1'b0;
     #10  z = 1'b1;
     #10  y = 1'b1;z = 1'b0;
     #10  z = 1'b1;
     #10  x = 1'b1;y = 1'b0;z = 1'b0;
     #10  z = 1'b1;
     #10  y = 1'b1;z = 1'b0;
     #10  z = 1'b1;
    end
   initial #80 $finish;
   initial begin
    $display ("x y z B D");
    $monitor ("%b %b %b %b %b",x,y,z,B,D);
    end
endmodule

