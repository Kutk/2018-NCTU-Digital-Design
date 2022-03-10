module t_Lab3_Mealy;
  wire z1, z2;
  reg x, clock, reset;
  Lab3_Mealy_state_diagram M1(z1, x, clock ,reset);
  Lab3_Mealy_structural M2(z2, x, clock, reset);
  initial
    begin
     clock = 0;
     forever #5 clock = ~clock;
    end
  initial begin
      reset = 1'b0;
  #2  x = 1'b0;
  #3  reset = 1'b1;
  #6  x = 1'b1;
  #10 x = 1'b0;
  #20 x = 1'b1;
  #20 x = 1'b0;
  #20 x = 1'b1;
  #8  reset = 1'b0;
  
  end
  initial #100 $finish;
  initial begin
   $display ("Time     clock  reset  x  z1  z2");
   $monitor ("%03d      %b      %b      %b   %b  %b",$time, clock, reset, x, z1,z2);
    end
endmodule
