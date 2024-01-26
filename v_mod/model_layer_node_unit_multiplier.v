/////////////////////////////////////////////////////////////////////////////////////////////////
//
//
//File_name: model_layer_node_unit_multiplier.v
//Author: Elsie Rezinold Y
//
//
//
//
//
//
//
//
//
//

module model_layer_node_unit_multiplier(
    a,
    b,
    c
);

input [31:0] a;
input [31:0] b;
output [31:0] c;
wire s_a;
wire s_b;
wire [7:0] exp_a;
wire [7:0] exp_b;
wire [22:0] m_a;
wire [22:0] m_b;
wire overflow,underflow;
wire s_r;
wire signed  [9:0] exp_r;
//wire [22:0] m_r;
wire [47:0] m_r;
wire [47:0] i_r;
wire [22:0] n_r; 
wire zero = ((exp_a == 8'd0) && (m_a==23'd0)) | ((exp_b==8'd0)&&(m_b==23'd0));
assign s_a = a[31];
assign exp_a = a[30:23];
assign m_a=a[22:0];
assign s_b = b[31];
assign exp_b = b[30:23];
assign m_b=b[22:0];

assign s_r = s_a^s_b;
assign exp_r = exp_a + exp_b - 8'd127+shift_by;
assign overflow = &exp_r[7:0] | exp_r[8];
assign underflow = (exp_r == 0) | (exp_r[9]);
assign m_r = {1'b1,m_a} * {1'b1,m_b};
assign shift_by = m_r[47]? 1'b1 : 1'b0;
assign i_r = m_r[47] ? m_r : m_r << 1;
assign n_r = i_r[46:24] + (i_r[23] & (|i_r[22:0]));
assign c = zero ? 0 : overflow ? {s_r,8'hff,23'd0} : underflow ? {s_r,8'd0,23'd0} : {s_r,exp_r[7:0],n_r};

endmodule
