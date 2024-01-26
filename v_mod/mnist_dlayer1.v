/*`include "/home/elsiery/github_codes/ml_hw/v_mod/mnist/dlayer/node/unit/mnist_dlayer1_node_unit.v"
`include "/home/elsiery/github_codes/ml_hw/v_mod/mnist/dlayer/node/mnist_dlayer1_node.v"
`include "/home/elsiery/github_codes/ml_hw/v_mod/mnist/dlayer/node/model_layer_node_relu.v"
`include "/home/elsiery/github_codes/ml_hw/v_mod/mnist/dlayer/node/unit/model_layer_node_unit_multiplier.v"
`include "/home/elsiery/github_codes/ml_hw/v_mod/mnist/dlayer/node/unit/model_layer_node_unit_adder.v"
*/
module mnist_dlayer1(
	clk, 
    rst_n,
	valid,
    im,
    w,
    bias,
    dout
);
input [8191:0] im;
input [8191:0] w;
input clk;
input rst_n;
input valid;
input [31:0] bias;
output [639:0] dout;
wire [31:0] c;

reg [31:0] c_d1;
reg [31:0] c_d2;
reg [31:0] c_d3;
reg [31:0] c_d4;
reg [31:0] c_d5;
reg [31:0] c_d6;
reg [31:0] c_d7;
reg [31:0] c_d8;
reg [31:0] c_d9;
reg [31:0] c_d10;
reg [31:0] c_d11;
reg [31:0] c_d12;
reg [31:0] c_d13;
reg [31:0] c_d14;
reg [31:0] c_d15;
reg [31:0] c_d16;
reg [31:0] c_d17;
reg [31:0] c_d18;
reg [31:0] c_d19;
wire v_out;


reg v_d1;
reg v_d2;
reg v_d3;
reg v_d4;
reg v_d5;
reg v_d6;
reg v_d7;
reg v_d8;
reg v_d9;
reg v_d10;
reg v_d11;
reg v_d12;
reg v_d13;
reg v_d14;
reg v_d15;
reg v_d16;
reg v_d17;
reg v_d18;
reg v_d19;














mnist_dlayer1_node u_node (
	clk,
	rst_n,
	valid,
	im,
	w,
    bias,
	c,
	v_out
);

always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		c_d1 <= 32'd0;
	else
		c_d1 <= c;


end




always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		c_d2 <= 32'd0;
	else
		c_d2 <= c_d1;


end



always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		c_d3 <= 32'd0;
	else
		c_d3 <= c_d2;


end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		c_d4 <= 32'd0;
	else
		c_d4 <= c_d3;


end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		c_d5 <= 32'd0;
	else
		c_d5 <= c_d4;


end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		c_d6 <= 32'd0;
	else
		c_d6 <= c_d5;


end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		c_d7 <= 32'd0;
	else
		c_d7 <= c_d6;


end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		c_d8 <= 32'd0;
	else
		c_d8 <= c_d7;


end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		c_d9 <= 32'd0;
	else
		c_d9 <= c_d8;


end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		c_d10 <= 32'd0;
	else
		c_d10 <= c_d9;


end




always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		c_d11 <= 32'd0;
	else
		c_d11 <= c_d10;


end

always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		c_d12 <= 32'd0;
	else
		c_d12 <= c_d11;


end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		c_d13 <= 32'd0;
	else
		c_d13 <= c_d12;


end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		c_d14 <= 32'd0;
	else
		c_d14 <= c_d13;


end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		c_d15 <= 32'd0;
	else
		c_d15 <= c_d14;


end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		c_d16 <= 32'd0;
	else
		c_d16 <= c_d15;


end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		c_d17 <= 32'd0;
	else
		c_d17 <= c_d16;


end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		c_d18 <= 32'd0;
	else
		c_d18 <= c_d17;


end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		c_d19 <= 32'd0;
	else
		c_d19 <= c_d18;


end

always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		v_d1 <= 1'd0;
	else
		v_d1 <= v_out;


end




always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		v_d2 <= 1'd0;
	else
		v_d2 <= v_d1;


end



always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		v_d3 <= 1'd0;
	else
		v_d3 <= v_d2;


end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		v_d4 <= 1'd0;
	else
		v_d4 <= v_d3;


end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		v_d5 <= 1'd0;
	else
		v_d5 <= v_d4;


end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		v_d6 <= 1'd0;
	else
		v_d6 <= v_d5;


end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		v_d7 <= 1'd0;
	else
		v_d7 <= v_d6;


end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		v_d8 <= 1'd0;
	else
		v_d8 <= v_d7;


end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		v_d9 <= 1'd0;
	else
		v_d9 <= v_d8;


end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		v_d10 <= 1'd0;
	else
		v_d10 <= v_d9;


end




always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		v_d11 <= 1'd0;
	else
		v_d11 <= v_d10;


end

always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		v_d12 <= 1'd0;
	else
		v_d12 <= v_d11;


end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		v_d13 <= 1'd0;
	else
		v_d13 <= v_d12;


end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		v_d14 <= 1'd0;
	else
		v_d14 <= v_d13;


end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		v_d15 <= 1'd0;
	else
		v_d15 <= v_d14;


end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		v_d16 <= 1'd0;
	else
		v_d16 <= v_d15;


end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		v_d17 <= 1'd0;
	else
		v_d17 <= v_d16;


end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		v_d18 <= 1'd0;
	else
		v_d18 <= v_d17;


end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		v_d19 <= 1'd0;
	else
		v_d19 <= v_d18;


end

reg [639:0] dout_d1;
always@(posedge clk or negedge rst_n)
	if(~rst_n)
		dout_d1 <= 640'd0;
	else
		dout_d1 <= dout;

assign dout = v_d19 ? {c,c_d1,c_d2,c_d3,c_d4,c_d5,c_d6,c_d7,c_d8,c_d9,c_d10,c_d11,c_d12,c_d13,c_d14,c_d15,c_d16,c_d17,c_d18,c_d19}:dout_d1;




endmodule


