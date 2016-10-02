`timescale 1ns/1ns
module stepper2_0_tb;
    reg clk,reset;
    reg[1:0] control;
    wire warnbit;
    wire [3:0] curr_state;
    reg[3:0]  counter;
  
    stepper1 s1(.clk(clk), .control(control), .reset(reset), .warnbit(warnbit), .curr_state(curr_state));
              
    always
        #10 clk= ~clk;

    initial
    begin
        counter = 3'd0;
            clk = 1'b0;
            reset = 1'b0;
        /*
        for(counter = 3'd0; counter < 3'd7; counter = counter + 3'd1)
        begin
        control = 2'h2;
        $display(curr_state);
        end
        */
        control = 2'h2;
        #160

        control = 2'h0;
        #20
        control = 2'h1;

        #160

        reset = 1'b1;
        #29 
        reset =1'b0;
        #1
        $display("Test warning bit");
        control = 2'h3;
        #80
        control = 2'h0;
        #20
        control = 2'h1;
        #160
        control = 2'h0;
        #20
        $finish;
    end

    always@(posedge clk)
    begin
     $display("control signal = %d, reset = %b, warning bit = %b, current state = %d",
              control,reset,warnbit, curr_state);
    end

    always@(warnbit)
    begin
        if(warnbit == 1'b1)
        $display("Warning, control = 11");
        else
        $display("Control is no longer 11");
    end
endmodule
