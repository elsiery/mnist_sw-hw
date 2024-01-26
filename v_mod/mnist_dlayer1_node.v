
module mnist_dlayer1_node  (
clk,
rst_n,
valid,
a,
b,
bias,
c,
v_out
);
input clk;
input rst_n;
input [8191:0] a;
input [8191:0] b;
input [31:0] bias;
output [31:0] c;
input valid;
output v_out;
wire [31:0] pre_relu;

//Declaring the unit inputs and outputs
wire [4095:0] m0,n0 ;
wire [31:0] k0;
wire [4095:0] m1,n1 ;
wire [31:0] k1;
wire [31:0] s0_0;








reg [31:0] s0_0_d0;





wire [31:0] fs0;




assign m0 = a[4095:0];
assign n0 = b[4095:0];
assign m1 = a[8191:4096];
assign n1 = b[8191:4096];




//units declaration
mnist_dlayer1_node_unit u_unit0(
clk,
rst_n,
m0,
n0,
k0
);


mnist_dlayer1_node_unit u_unit1(
clk,
rst_n,
m1,
n1,
k1
);


//adder stages here on
//stage 0 adders







model_layer_node_unit_adder u_add0_0(
k0,
k1,
s0_0
);


always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		s0_0_d0 <=  0;
	else
		s0_0_d0 <=  s0_0;
end
assign fs0 = s0_0_d0;
reg [31:0] b_d1;
reg [31:0] b_d2;
reg [31:0] b_d3;
reg [31:0] b_d4;
reg [31:0] b_d5;
reg [31:0] b_d6;
reg [31:0] b_d7;

reg v_d1;
reg v_d2;
reg v_d3;
reg v_d4;
reg v_d5;
reg v_d6;
reg v_d7;

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
 		b_d1<=0;  
 		b_d2<=0;
 		b_d3<=0;
 		b_d4<=0;
 		b_d5<=0;
 		b_d6<=0;
		b_d7<=0;
        end else begin

 		b_d1<=bias;  
 		b_d2<=b_d1;
 		b_d3<=b_d2;
 		b_d4<=b_d3;
 		b_d5<=b_d4;
 		b_d6<=b_d5;
		b_d7<=b_d6;
	end
end



always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
 		v_d1<=0;  
 		v_d2<=0;
 		v_d3<=0;
 		v_d4<=0;
 		v_d5<=0;
 		v_d6<=0;
		v_d7<=0;
        end else begin

 		v_d1<=valid;  
 		v_d2<=v_d1;
 		v_d3<=v_d2;
 		v_d4<=v_d3;
 		v_d5<=v_d4;
 		v_d6<=v_d5;
		v_d7<=v_d6;
	end
end









model_layer_node_unit_adder u_add_bias  (
fs0,
b_d7,
pre_relu
);


model_layer_node_relu u_relu  (
pre_relu,
c
);

assign v_out = v_d7;
endmodule

