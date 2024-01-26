`include "mnist_dlayer1.v"
`include "mnist_dlayer2.v"
`include "mnist_dlayer2_node.v"
`include "mnist_dlayer1_node.v"
`include "mnist_dlayer1_node_unit.v"
`include "mnist_dlayer2_node_unit.v"
`include "model_layer_node_relu.v"
`include "model_layer_node_unit_multiplier.v"
`include "model_layer_node_unit_adder.v"




module mnist (
	clk,
	rst_n,
	valid,
	im,
	w1_0,
    b1,
	w2_0,
	w2_1,
	w2_2,
	w2_3,
	w2_4,
	w2_5,
	w2_6,
	w2_7,
	w2_8,
	w2_9,
    b2,
	o0,
	o1,
	o2,
	o3,
	o4,
	o5,
	o6,
	o7,
	o8,
	o9
);

input clk;
input rst_n;
input valid;
input [8191:0]	im;
input [8191:0]	w1_0;
input [639:0]	w2_0;
input [639:0]	w2_1;
input [639:0]	w2_2;
input [639:0]	w2_3;
input [639:0]	w2_4;
input [639:0]	w2_5;
input [639:0]	w2_6;
input [639:0]	w2_7;
input [639:0]	w2_8;
input [639:0]	w2_9;
input [31:0] b1;
input [319:0] b2;


output [31:0]	o0;
output [31:0]	o1;
output [31:0]	o2;
output [31:0]	o3;
output [31:0]	o4;
output [31:0]	o5;
output [31:0]	o6;
output [31:0]	o7;
output [31:0]	o8;
output [31:0]	o9;



wire [639:0] din1;




mnist_dlayer1 u_dlayer1(
	clk,
	rst_n,
	valid,
	im,
	w1_0,
    b1,
	din1
);

mnist_dlayer2 u_dlayer2(
	clk,
	rst_n,
	din1,
    w2_0,
    w2_1,
    w2_2,
    w2_3,
    w2_4,
    w2_5,
    w2_6,
    w2_7,
    w2_8,
    w2_9,
    b2,
	o0,
	o1,
	o2,
	o3,
	o4,
	o5,
	o6,
	o7,
	o8,
	o9
);


endmodule
