module model_layer_node_unit_adder (
    a,
    b,
    c
);

input [31:0] a;
input [31:0] b;
output [31:0] c;

wire s_a;
wire s_b;
wire s_c;
wire signed s_i;
wire s_ic;

wire [7:0] exp_a;
wire [7:0] exp_b;
wire [7:0] exp_c;


wire signed [8:0] diff_exp_ab;


wire [23:0] m_a;
wire [23:0] m_b;
wire [23:0] m_c;

wire [7:0] shift_a;
wire [7:0] shift_b;

wire [23:0] i_a;
wire [23:0] i_b;

wire add;
wire sub;

assign s_a = a[31];
assign s_b = b[31];

assign exp_a = a[30:23];
assign exp_b = b[30:23];
wire g1,r1,s1;
wire [23:0] s_i_1;
wire g2,r2,s2;
wire [23:0] s_i_2;
assign m_a = {1'b1,a[22:0]};
assign m_b = {1'b1,b[22:0]};

assign add = (s_a == s_b);
assign sub = (s_a != s_b);

assign shift_a = (exp_b > exp_a)? exp_b-exp_a : 0;
assign shift_b = (exp_a > exp_b)? exp_a-exp_b:0;
assign exp_c = (exp_a > exp_b) ? exp_a : exp_b;

assign {i_a,g1,r1,s_i_1} = shift_a ?  {m_a,1'b0,1'b0,24'd0} >> shift_a:{m_a,1'b0,1'b0,24'd0};
assign {i_b,g2,r2,s_i_2} = shift_b ?  {m_b,1'b0,1'b0,24'd0} >> shift_b:{m_b,1'b0,1'b0,24'd0};
assign s1 = |s_i_1;
assign s2 = |s_i_2;
wire g3,r3,s3;
assign {g3,r3,s3} = {g1,r1,s1} + {g2,r2,s2};

wire [24:0] add_num;
wire [22:0] final_sum;
wire [24:0] final_sum_n;
wire [7:0] final_sum_exp;
assign add_num = i_a + i_b;
assign final_sum_n = add_num[24]? add_num[23:1]:add_num[22:0];
wire gf,rf,sf;
assign {gf,rf,sf} = add_num[24] ? s3 ? {add_num[0],g3,s3} : {add_num[0],g3,r3} : {g3,r3,s3};
//wire rn = gf &(rf|sf);//(gf & rf) | (gf & final_sum_n[0]&!rf);
wire rp = gf &(rf|sf);
wire re = gf & ~(rf|sf) ? final_sum_n[0]? 1'b1 : 1'b0 : 1'b0;
//wire r1n = //(gf & rf) | (gf & add_num[0]&!rf);

assign final_sum = final_sum_n + rp+re; 
assign final_sum_exp = add_num[24] ? exp_c + 1'b1 : exp_c;
wire add_s = s_a;
wire [7:0] add_exp = final_sum_exp;
wire [22:0] add_m = final_sum;

wire [26:0] sub_num;
wire [26:0] mag1;
wire [26:0] mag2;
assign mag1 = {i_a,g1,r1,s1};
assign mag2 = {i_b,g2,r2,s2};
assign sub_num = mag1 > mag2 ? mag1 + ~mag2 + 1'b1 : mag2 + ~mag1 + 1'b1;

wire [23:0] real_sub = sub_num[26:3];
reg [22:0] final_diff_n;
reg [7:0] shift_diff;
wire np,ne;
reg lg,lr,ls;
assign np = lg &  (lr|ls);
assign ne = lg & ~(lr|ls) ? final_diff_n[0]? 1'b1 : 1'b0 : 1'b0;
wire [22:0] final_diff = final_diff_n + ne + np;
wire [7:0] diff_exp = exp_c - shift_diff;
wire diff_s = (a[31]^b[31])? mag1 > mag2 ? a[31] : b[31] : b[31];

assign c = (a[31]==b[31]) ? {a[31],add_exp,add_m} : {diff_s,diff_exp,final_diff};
always@(*) begin
    {final_diff_n,lg,lr,ls} = 26'd0;
    shift_diff = 8'd0;
    casex(real_sub)
        24'b1xxx_xxxx_xxxx_xxxx_xxxx_xxxx: begin
            {final_diff_n,lg,lr,ls} = {real_sub,sub_num[2],sub_num[1],sub_num[0]};
            shift_diff = 0;
        end
        24'b01xx_xxxx_xxxx_xxxx_xxxx_xxxx: begin
            {final_diff_n,lg,lr,ls} = {real_sub,sub_num[2],sub_num[1],sub_num[0]} << 1;
            shift_diff = 1;
        end
        23'b01x_xxxx_xxxx_xxxx_xxxx_xxxx: begin
            {final_diff_n,lg,lr,ls} = {real_sub,sub_num[2],sub_num[1],sub_num[0]} << 2;
            shift_diff = 8'd2;
        end
        23'b001_xxxx_xxxx_xxxx_xxxx_xxxx: begin
            {final_diff_n,lg,lr,ls} = {real_sub,sub_num[2],sub_num[1],sub_num[0]} << 3;
            shift_diff = 8'd3;
        end
        23'b000_1xxx_xxxx_xxxx_xxxx_xxxx: begin
            {final_diff_n,lg,lr,ls} = {real_sub,sub_num[2],sub_num[1],sub_num[0]} << 4;
            shift_diff = 8'd4;
        end
        23'b000_01xx_xxxx_xxxx_xxxx_xxxx: begin
            {final_diff_n,lg,lr,ls} = {real_sub,sub_num[2],sub_num[1],sub_num[0]} << 5;
            shift_diff = 8'd5;
        end
        23'b000_001x_xxxx_xxxx_xxxx_xxxx: begin
            {final_diff_n,lg,lr,ls} = {real_sub,sub_num[2],sub_num[1],sub_num[0]} << 6;
            shift_diff = 8'd6;
        end
        23'b000_0001_xxxx_xxxx_xxxx_xxxx: begin
            {final_diff_n,lg,lr,ls} = {real_sub,sub_num[2],sub_num[1],sub_num[0]} << 7;
            shift_diff = 8'd7;
        end
        23'b000_0000_1xxx_xxxx_xxxx_xxxx: begin
            {final_diff_n,lg,lr,ls} = {real_sub,sub_num[2],sub_num[1],sub_num[0]} << 8;
            shift_diff = 8'd8;
        end
        23'b000_0000_01xx_xxxx_xxxx_xxxx: begin
            {final_diff_n,lg,lr,ls} = {real_sub,sub_num[2],sub_num[1],sub_num[0]} << 9;
            shift_diff = 8'd9;
        end
        23'b000_0000_001x_xxxx_xxxx_xxxx: begin
            {final_diff_n,lg,lr,ls} = {real_sub,sub_num[2],sub_num[1],sub_num[0]} << 10;
            shift_diff = 8'd10;
        end
        23'b000_0000_0001_xxxx_xxxx_xxxx: begin
            {final_diff_n,lg,lr,ls} = {real_sub,sub_num[2],sub_num[1],sub_num[0]} << 11;
            shift_diff = 8'd11;
        end
        23'b000_0000_0000_1xxx_xxxx_xxxx: begin
            {final_diff_n,lg,lr,ls} = {real_sub,sub_num[2],sub_num[1],sub_num[0]} << 12;
            shift_diff = 8'd12;
        end
        23'b000_0000_0000_01xx_xxxx_xxxx: begin
            {final_diff_n,lg,lr,ls} = {real_sub,sub_num[2],sub_num[1],sub_num[0]} << 13;
            shift_diff = 8'd13;
        end
        23'b000_0000_0000_001x_xxxx_xxxx: begin
            {final_diff_n,lg,lr,ls} = {real_sub,sub_num[2],sub_num[1],sub_num[0]} << 14;
            shift_diff = 8'd14;
        end
        23'b000_0000_0000_0001_xxxx_xxxx: begin
            {final_diff_n,lg,lr,ls} = {real_sub,sub_num[2],sub_num[1],sub_num[0]} << 15;
            shift_diff = 8'd15;
        end
        23'b000_0000_0000_0000_1xxx_xxxx: begin
            {final_diff_n,lg,lr,ls} = {real_sub,sub_num[2],sub_num[1],sub_num[0]} << 16;
            shift_diff = 8'd16;
        end
        23'b000_0000_0000_0000_01xx_xxxx: begin
            {final_diff_n,lg,lr,ls} = {real_sub,sub_num[2],sub_num[1],sub_num[0]} << 17;
            shift_diff = 8'd17;
        end
        23'b000_0000_0000_0000_001x_xxxx: begin
            {final_diff_n,lg,lr,ls} = {real_sub,sub_num[2],sub_num[1],sub_num[0]} << 18;
            shift_diff = 8'd18;
        end
        23'b000_0000_0000_0000_0001_xxxx: begin
            {final_diff_n,lg,lr,ls} = {real_sub,sub_num[2],sub_num[1],sub_num[0]} << 19;
            shift_diff = 8'd19;
        end
        23'b000_0000_0000_0000_0000_1xxx: begin
            {final_diff_n,lg,lr,ls} = {real_sub,sub_num[2],sub_num[1],sub_num[0]} << 20;
            shift_diff = 8'd20;
        end
        23'b000_0000_0000_0000_0000_01xx: begin
            {final_diff_n,lg,lr,ls} = {real_sub,sub_num[2],sub_num[1],sub_num[0]} << 21;
            shift_diff = 8'd21;
        end
        23'b000_0000_0000_0000_0000_001x: begin
            {final_diff_n,lg,lr,ls} = {real_sub,sub_num[2],sub_num[1],sub_num[0]} << 22;
            shift_diff = 8'd22;
        end
        23'b000_0000_0000_0000_0000_0001: begin
            {final_diff_n,lg,lr,ls} = {real_sub,sub_num[2],sub_num[1],sub_num[0]} << 23;
            shift_diff = 8'd23;
        end
    endcase
end
        







endmodule
