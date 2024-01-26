`timescale 1ns/1ps

module mnist_test;

reg clk;
reg rst_n;
reg valid;
reg [8191:0] in[0:9999];
reg [8191:0] im;
reg [8191:0] w1_1;
reg [8191:0] wi1;
reg [8191:0] w1_2;
reg [8191:0] w1_3;
reg [8191:0] w1_4;
reg [8191:0] w1_5;
reg [8191:0] w1_6;
reg [8191:0] w1_7;
reg [8191:0] w1_8;
reg [8191:0] w1_9;
reg [8191:0] w1_10;
reg [8191:0] w1_11;
reg [8191:0] w1_12;
reg [8191:0] w1_13;
reg [8191:0] w1_14;
reg [8191:0] w1_15;
reg [8191:0] w1_16;
reg [8191:0] w1_17;
reg [8191:0] w1_18;
reg [8191:0] w1_19;
reg [8191:0] w1_20;

reg [639:0] w2_1;
reg [639:0] w2_2;
reg [639:0] w2_3;
reg [639:0] w2_4;
reg [639:0] w2_5;
reg [639:0] w2_6;
reg [639:0] w2_7;
reg [639:0] w2_8;
reg [639:0] w2_9;
reg [639:0] w2_10;

reg [639:0] wi2_1;
reg [639:0] wi2_2;
reg [639:0] wi2_3;
reg [639:0] wi2_4;
reg [639:0] wi2_5;
reg [639:0] wi2_6;
reg [639:0] wi2_7;
reg [639:0] wi2_8;
reg [639:0] wi2_9;
reg [639:0] wi2_10;
reg [639:0] b1;
reg [319:0] b2;

reg [31:0] bi1;
reg [319:0] bi2;

wire [31:0] cl1;
wire [31:0] cl2;
wire [31:0] cl3;
wire [31:0] cl4;
wire [31:0] cl5;
wire [31:0] cl6;
wire [31:0] cl7;
wire [31:0] cl8;
wire [31:0] cl9;
wire [31:0] cl10;
reg [31:0] test_vector [0:99999];


integer i,k,pass,fail;


mnist dut (
	clk
	,rst_n
	,valid
	,im
	,wi1
	,bi1   
	,wi2_1
	,wi2_2
	,wi2_3
	,wi2_4
	,wi2_5
	,wi2_6
	,wi2_7
	,wi2_8
	,wi2_9
	,wi2_10
	,bi2
	,cl1
	,cl2
	,cl3
	,cl4
	,cl5
	,cl6
	,cl7
	,cl8
	,cl9
	,cl10
);



`include "layer1_weights_regression.v"
`include "layer2_weights_regression.v"
`include "layer1_bias_regression.v"
`include "layer2_bias_regression.v"
`include "in_inputs10000.v"
always #5 clk = ~clk;

initial  
	begin 
		$readmemh("layer2_output_regression_inputs10000", test_vector);
	end
initial begin
   	//$dumpfile("../../dumps/dump_nn_regression_inputs10000.vcd");
   	//$dumpvars();
end 
initial begin
	#10;
	initialize;
	#200;
    k = 0;
    pass = 0;
    fail=0;
    for (i=0;i<10000;i=i+1) begin
	    input_feed(in[i]);
	    #65;
	    #65;
        k = 10*i;
	    if((cl1[31:12] == test_vector[k+0][31:12])&&
	    (cl2[31:12] == test_vector[k+1][31:12])&&
	    (cl3[31:12] == test_vector[k+2][31:12])&&
	    (cl4[31:12] == test_vector[k+3][31:12])&&
	    (cl5[31:12] == test_vector[k+4][31:12])&&
	    (cl6[31:12] == test_vector[k+5][31:12])&&
	    (cl7[31:12] == test_vector[k+6][31:12])&&
	    (cl8[31:12] == test_vector[k+7][31:12])&&
	    (cl9[31:12] == test_vector[k+8][31:12])&&
	    (cl10[31:12] == test_vector[k+9][31:12])) begin
		    $display("Test %d case passed",i);
            pass = pass+1;
	    end
        else begin
            fail = fail+1;
        end
        #10;
        
    end

    $display("pass = %d, fail=%d",pass,fail);












	$finish;
end
task input_feed;
input [8191:0] in;
begin
	valid = 1'b1;
	im = in;
	weight_feed;
end
endtask

task initialize;
begin
	clk=0;
	rst_n = 1;
    wi1   = 0;
    im    = 0; 
    bi1   = 0;
	valid = 0;

	wi2_1  = 0; 
	wi2_2  = 0; 
	wi2_3  = 0; 
	wi2_4  = 0; 
	wi2_5  = 0; 
	wi2_6  = 0; 
	wi2_7  = 0; 
	wi2_8  = 0; 
	wi2_9  = 0; 
	wi2_10 = 0;
	bi2    = 0 ;




	#10;
	rst_n = 0;
	#10;
	rst_n = 1;
end
endtask
task weight_feed;
begin
	wi1 = w1_1;
	bi1 = b1[31:0];


	wi2_1  = w2_1; 
	wi2_2  = w2_2; 
	wi2_3  = w2_3; 
	wi2_4  = w2_4; 
	wi2_5  = w2_5; 
	wi2_6  = w2_6; 
	wi2_7  = w2_7; 
	wi2_8  = w2_8; 
	wi2_9  = w2_9; 
	wi2_10 = w2_10;
	bi2    = b2   ;







    #10;
	//230
	valid=1'b0;
	wi1 = w1_2;
	bi1 = b1[63:32];
    #10;
	//240
	wi1 = w1_3;
	bi1 = b1[95:64];
	#10;
	//250
	wi1 = w1_4;
	bi1 = b1[127:96];
	#10;
	//260
	wi1 = w1_5;
	bi1 = b1[159:128];
	#10;
	//270
	wi1 = w1_6;
	bi1 = b1[191:160];
	#10;
	//280
	wi1 = w1_7;
	bi1 = b1[223:192];
	#10;
	//290
	wi1 = w1_8;
	bi1 = b1[255:224];
	#10;
	//300
	wi1 = w1_9;
	bi1 = b1[287:256];
	#10;
	//310
	wi1 = w1_10;
	bi1 = b1[319:288];

	#10;
	//320
	wi1 = w1_11;
	bi1 = b1[351:320];
	#10;
	//330
	wi1 = w1_12;
	bi1 = b1[383:352];
	#10;
	//340
	wi1 = w1_13;
	bi1 = b1[415:384];
	#10;
	//350
	wi1 = w1_14;
	bi1 = b1[447:416];
	#10;
	//360
	wi1 = w1_15;
	bi1 = b1[479:448];
	#10;
	//370
	wi1 = w1_16;
	bi1 = b1[511:480];
	#10;
	//380
	wi1 = w1_17;
	bi1 = b1[543:512];
	#10;
	//390
	wi1 = w1_18;
	bi1 = b1[575:544];
	#10;
	//400
	wi1 = w1_19;
	bi1 = b1[607:576];
	#10;
	//410
	wi1 = w1_20;
	bi1 = b1[639:608];
end
endtask





endmodule
