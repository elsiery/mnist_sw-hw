

module mnist_dlayer2_node  (
clk,
rst_n,
a,
b,
bias,
c
);
input clk;
input rst_n;
input [639:0] a;
input [639:0] b;
input [31:0] bias;
output [31:0] c;

wire [31:0] pre_relu;

//Declaring the unit inputs and outputs
wire [319:0] m0,n0 ;
wire [31:0] k0;
wire [319:0] m1,n1 ;
wire [31:0] k1;
wire [31:0] s0_0;








reg [31:0] s0_0_d0;





wire [31:0] fs0;




assign m0 = a[319:0];
assign n0 = b[319:0];
assign m1 = a[639:320];
assign n1 = b[639:320];




//units declaration
mnist_dlayer2_node_unit u_unit0(
clk,
rst_n,
m0,
n0,
k0
);


mnist_dlayer2_node_unit u_unit1(
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

model_layer_node_unit_adder u_add_bias  (
fs0,
bias,
pre_relu
);


assign c=pre_relu;
endmodule

