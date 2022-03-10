module t_Lab2_half_sub;
   wire B, D;
   reg x, y;
    Lab2_half_sub_behavior M1(D, B, x, y);
   initial
    begin
         x = 1'b0;y = 1'b0;
     #10       y = 1'b1;
     #10 x = 1'b1;y = 1'b0;
     #10       y = 1'b1;
    end
   initial #50 $finish;
endmodule

  