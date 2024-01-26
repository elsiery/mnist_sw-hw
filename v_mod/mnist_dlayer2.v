//////////////////////////////////////////////////////////////////////////////////
//
//Author: Elsie Rezinold Yedida
//////////////////////////////////////////////////////////////////////////////////



module mnist_dlayer2 (
	clk,
	rst_n,
	din,
	w0,
	w1,
	w2,
	w3,
	w4,
	w5,
	w6,
	w7,
	w8,
	w9,
    bias,
	cl0,
	cl1,
	cl2,
	cl3,
	cl4,
	cl5,
	cl6,
	cl7,
	cl8,
	cl9
);

input clk;
input rst_n;
input [639:0] din;

input [639:0] w0;
input [639:0] w1;
input [639:0] w2;
input [639:0] w3;
input [639:0] w4;
input [639:0] w5;
input [639:0] w6;
input [639:0] w7;
input [639:0] w8;
input [639:0] w9;
input [319:0] bias;
output [31:0] cl0;
output [31:0] cl1;
output [31:0] cl2;
output [31:0] cl3;
output [31:0] cl4;
output [31:0] cl5;
output [31:0] cl6;
output [31:0] cl7;
output [31:0] cl8;
output [31:0] cl9;




mnist_dlayer2_node u_node0 (
	clk,
	rst_n,
	din,
	w0,
    bias[31:0],
	cl0
);



mnist_dlayer2_node u_node1 (
	clk,
	rst_n,
	din,
	w1,
    bias[63:32],
	cl1
);


mnist_dlayer2_node u_node2 (
	clk,
	rst_n,
	din,
	w2,
    bias[95:64],
	cl2
);




mnist_dlayer2_node u_node3 (
	clk,
	rst_n,
	din,
	w3,
    bias[127:96],
	cl3
);




mnist_dlayer2_node u_node4 (
	clk,
	rst_n,
	din,
	w4,
    bias[159:128],
	cl4
);


mnist_dlayer2_node u_node5 (
	clk,
	rst_n,
	din,
	w5,
    bias[191:160],
	cl5
);
mnist_dlayer2_node u_node6 (
	clk,
	rst_n,
	din,
	w6,
    bias[223:192],
	cl6
);
mnist_dlayer2_node u_node7 (
	clk,
	rst_n,
	din,
	w7,
    bias[255:224],
	cl7
);
mnist_dlayer2_node u_node8 (
	clk,
	rst_n,
	din,
	w8,
    bias[287:256],
	cl8
);
mnist_dlayer2_node u_node9 (
	clk,
	rst_n,
	din,
	w9,
    bias[319:288],
	cl9
);


endmodule
