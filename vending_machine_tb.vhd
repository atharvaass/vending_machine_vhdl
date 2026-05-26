`timescale 1ns / 1ps

module project_3_tb;

    reg clk, reset, cancel;
    reg [1:0] coin, sel;
    
    wire PrA, PrB, PrC, change;
    
    always #5 clk = ~clk;
    
    project_3 uut (
       .clk(clk),
       .reset(reset),
       .cancel(cancel),
       .coin(coin),
       .sel(sel),
       .PrA (PrA),
       .PrB(PrB),
       .PrC(PrC),
       .change(change)
    );
     
     initial begin
     
        clk =0;
        reset = 1;
        cancel = 0;
        coin = 2'b00;
        sel = 2'b00;
        
        #20 reset = 0;
        
        #10 coin = 2'b01;
        #10 sel = 2'b00;
        #10 coin = 2'b00;
        #20;
        
        #10 coin = 2'b10;
        #10 sel = 2'b01;
        #20;
        
        #10 coin = 2'b01;
        #10 coin = 2'b01;
        #10 sel = 2'b00;
        #20;
        
        #10 coin = 2'b10;
        #10 coin = 2'b10;
        #10 sel = 2'b10;
        #20;
        
        #10 coin = 2'b10;
        #10 cancel = 1;
        #10 cancel = 0;
        #20;
        
        
        #50 $finish;
  end  
  endmodule
