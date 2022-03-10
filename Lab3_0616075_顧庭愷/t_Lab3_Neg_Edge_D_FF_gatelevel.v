module t_Lab3_Neg_Edge_D_FF_gatelevel;
  wire Q, NQ;
  reg D, clock;
  Lab3_Neg_Edge_D_FF_gatelevel M1(Q, NQ, D, clock);
  initial 
   begin
    clock = 1'b1;
   end
  always #20 clock = ~clock;
  initial
    begin
     D = 1'b0;
    #15  D = 1'b1;
    #20  D = 1'b0;
    #30  D = 1'b1;
    #23  D = 1'b0;
    #37  D = 1'b1;
    #5   D = 1'b0;
    end
  initial #150 $finish;
  initial begin
   $display ("Time     clock  D  Q  NQ");
   $monitor ("%03d      %b      %b  %b  %b",$time, clock, D, Q, NQ);
    end
endmodule