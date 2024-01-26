//////////////////////////////////////////////////////////////////////////////////
//
//Author: Elsie Rezinold Yedida
//////////////////////////////////////////////////////////////////////////////////


module mnist_dlayer2_node_unit  (
clk,
rst_n,
a,
b,
c
);
input clk;
input rst_n;
input [319:0] a;
input [319:0] b;

output [31:0] c;
//Declaring the multiplier inputs and outputs
wire [31:0] m0,n0,k0 ;
wire [31:0] m1,n1,k1 ;
wire [31:0] m2,n2,k2 ;
wire [31:0] m3,n3,k3 ;
wire [31:0] m4,n4,k4 ;
wire [31:0] m5,n5,k5 ;
wire [31:0] m6,n6,k6 ;
wire [31:0] m7,n7,k7 ;
wire [31:0] m8,n8,k8 ;
wire [31:0] m9,n9,k9 ;








reg [31:0] k0_d0;
reg [31:0] k1_d0;
reg [31:0] k2_d0;
reg [31:0] k3_d0;
reg [31:0] k4_d0;
reg [31:0] k5_d0;
reg [31:0] k6_d0;
reg [31:0] k7_d0;
reg [31:0] k8_d0;
reg [31:0] k9_d0;
wire [31:0] s3_0;
wire [31:0] s3_1;
wire [31:0] s3_2;
wire [31:0] s3_3;
wire [31:0] s3_4;








wire [31:0] s3_0_d0;
wire [31:0] s3_1_d0;
wire [31:0] s3_2_d0;
wire [31:0] s3_3_d0;
wire [31:0] s3_4_d0;
wire [31:0] s2_0;
wire [31:0] s2_1;








wire [31:0] s2_0_d0;
wire [31:0] s2_1_d0;
wire [31:0] s3_4_d1;
wire [31:0] s1_0;








wire [31:0] s3_4_d2;
wire [31:0] s1_0_d0;
wire [31:0] fs0;





assign m0 = a[31:0];
assign n0 = b[31:0];
assign m1 = a[63:32];
assign n1 = b[63:32];
assign m2 = a[95:64];
assign n2 = b[95:64];
assign m3 = a[127:96];
assign n3 = b[127:96];
assign m4 = a[159:128];
assign n4 = b[159:128];
assign m5 = a[191:160];
assign n5 = b[191:160];
assign m6 = a[223:192];
assign n6 = b[223:192];
assign m7 = a[255:224];
assign n7 = b[255:224];
assign m8 = a[287:256];
assign n8 = b[287:256];
assign m9 = a[319:288];
assign n9 = b[319:288];




//Multipliers declaration
model_layer_node_unit_multiplier u_mult0(
m0,
n0,
k0
);


model_layer_node_unit_multiplier u_mult1(
m1,
n1,
k1
);


model_layer_node_unit_multiplier u_mult2(
m2,
n2,
k2
);


model_layer_node_unit_multiplier u_mult3(
m3,
n3,
k3
);


model_layer_node_unit_multiplier u_mult4(
m4,
n4,
k4
);


model_layer_node_unit_multiplier u_mult5(
m5,
n5,
k5
);


model_layer_node_unit_multiplier u_mult6(
m6,
n6,
k6
);


model_layer_node_unit_multiplier u_mult7(
m7,
n7,
k7
);


model_layer_node_unit_multiplier u_mult8(
m8,
n8,
k8
);


model_layer_node_unit_multiplier u_mult9(
m9,
n9,
k9
);


always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k0_d0 <=  0;
	else
		k0_d0 <=  k0;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k1_d0 <=  0;
	else
		k1_d0 <=  k1;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k2_d0 <=  0;
	else
		k2_d0 <=  k2;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k3_d0 <=  0;
	else
		k3_d0 <=  k3;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k4_d0 <=  0;
	else
		k4_d0 <=  k4;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k5_d0 <=  0;
	else
		k5_d0 <=  k5;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k6_d0 <=  0;
	else
		k6_d0 <=  k6;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k7_d0 <=  0;
	else
		k7_d0 <=  k7;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k8_d0 <=  0;
	else
		k8_d0 <=  k8;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k9_d0 <=  0;
	else
		k9_d0 <=  k9;
end
//adder stages here on
//stage 3 adders







model_layer_node_unit_adder u_add3_0(
k0_d0,
k1_d0,
s3_0
);


model_layer_node_unit_adder u_add3_1(
k2_d0,
k3_d0,
s3_1
);


model_layer_node_unit_adder u_add3_2(
k4_d0,
k5_d0,
s3_2
);


model_layer_node_unit_adder u_add3_3(
k6_d0,
k7_d0,
s3_3
);


model_layer_node_unit_adder u_add3_4(
k8_d0,
k9_d0,
s3_4
);


assign s3_0_d0 =  s3_0;
assign s3_1_d0 =  s3_1;
assign s3_2_d0 =  s3_2;
assign s3_3_d0 =  s3_3;
assign s3_4_d0 =  s3_4;
//stage 2 adders







model_layer_node_unit_adder u_add2_0(
s3_0_d0,
s3_1_d0,
s2_0
);


model_layer_node_unit_adder u_add2_1(
s3_2_d0,
s3_3_d0,
s2_1
);


assign s2_0_d0 =  s2_0;
assign s2_1_d0 =  s2_1;
assign s3_4_d1 =  s3_4_d0;
//stage 1 adders







model_layer_node_unit_adder u_add1_0(
s2_0_d0,
s2_1_d0,
s1_0
);


assign s3_4_d2 =  s3_4_d1;
assign s1_0_d0 =  s1_0;
model_layer_node_unit_adder u_add_final0 (
s3_4_d2,
s1_0_d0,
fs0
);

assign c=fs0;

endmodule

