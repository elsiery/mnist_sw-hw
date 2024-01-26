//////////////////////////////////////////////////////////////////////////////////
//
//Author: Elsie Rezinold Yedida
//////////////////////////////////////////////////////////////////////////////////

module mnist_dlayer1_node_unit  (
clk,
rst_n,
a,
b,
c
);
input clk;
input rst_n;
input [4095:0] a;
input [4095:0] b;

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
wire [31:0] m10,n10,k10 ;
wire [31:0] m11,n11,k11 ;
wire [31:0] m12,n12,k12 ;
wire [31:0] m13,n13,k13 ;
wire [31:0] m14,n14,k14 ;
wire [31:0] m15,n15,k15 ;
wire [31:0] m16,n16,k16 ;
wire [31:0] m17,n17,k17 ;
wire [31:0] m18,n18,k18 ;
wire [31:0] m19,n19,k19 ;
wire [31:0] m20,n20,k20 ;
wire [31:0] m21,n21,k21 ;
wire [31:0] m22,n22,k22 ;
wire [31:0] m23,n23,k23 ;
wire [31:0] m24,n24,k24 ;
wire [31:0] m25,n25,k25 ;
wire [31:0] m26,n26,k26 ;
wire [31:0] m27,n27,k27 ;
wire [31:0] m28,n28,k28 ;
wire [31:0] m29,n29,k29 ;
wire [31:0] m30,n30,k30 ;
wire [31:0] m31,n31,k31 ;
wire [31:0] m32,n32,k32 ;
wire [31:0] m33,n33,k33 ;
wire [31:0] m34,n34,k34 ;
wire [31:0] m35,n35,k35 ;
wire [31:0] m36,n36,k36 ;
wire [31:0] m37,n37,k37 ;
wire [31:0] m38,n38,k38 ;
wire [31:0] m39,n39,k39 ;
wire [31:0] m40,n40,k40 ;
wire [31:0] m41,n41,k41 ;
wire [31:0] m42,n42,k42 ;
wire [31:0] m43,n43,k43 ;
wire [31:0] m44,n44,k44 ;
wire [31:0] m45,n45,k45 ;
wire [31:0] m46,n46,k46 ;
wire [31:0] m47,n47,k47 ;
wire [31:0] m48,n48,k48 ;
wire [31:0] m49,n49,k49 ;
wire [31:0] m50,n50,k50 ;
wire [31:0] m51,n51,k51 ;
wire [31:0] m52,n52,k52 ;
wire [31:0] m53,n53,k53 ;
wire [31:0] m54,n54,k54 ;
wire [31:0] m55,n55,k55 ;
wire [31:0] m56,n56,k56 ;
wire [31:0] m57,n57,k57 ;
wire [31:0] m58,n58,k58 ;
wire [31:0] m59,n59,k59 ;
wire [31:0] m60,n60,k60 ;
wire [31:0] m61,n61,k61 ;
wire [31:0] m62,n62,k62 ;
wire [31:0] m63,n63,k63 ;
wire [31:0] m64,n64,k64 ;
wire [31:0] m65,n65,k65 ;
wire [31:0] m66,n66,k66 ;
wire [31:0] m67,n67,k67 ;
wire [31:0] m68,n68,k68 ;
wire [31:0] m69,n69,k69 ;
wire [31:0] m70,n70,k70 ;
wire [31:0] m71,n71,k71 ;
wire [31:0] m72,n72,k72 ;
wire [31:0] m73,n73,k73 ;
wire [31:0] m74,n74,k74 ;
wire [31:0] m75,n75,k75 ;
wire [31:0] m76,n76,k76 ;
wire [31:0] m77,n77,k77 ;
wire [31:0] m78,n78,k78 ;
wire [31:0] m79,n79,k79 ;
wire [31:0] m80,n80,k80 ;
wire [31:0] m81,n81,k81 ;
wire [31:0] m82,n82,k82 ;
wire [31:0] m83,n83,k83 ;
wire [31:0] m84,n84,k84 ;
wire [31:0] m85,n85,k85 ;
wire [31:0] m86,n86,k86 ;
wire [31:0] m87,n87,k87 ;
wire [31:0] m88,n88,k88 ;
wire [31:0] m89,n89,k89 ;
wire [31:0] m90,n90,k90 ;
wire [31:0] m91,n91,k91 ;
wire [31:0] m92,n92,k92 ;
wire [31:0] m93,n93,k93 ;
wire [31:0] m94,n94,k94 ;
wire [31:0] m95,n95,k95 ;
wire [31:0] m96,n96,k96 ;
wire [31:0] m97,n97,k97 ;
wire [31:0] m98,n98,k98 ;
wire [31:0] m99,n99,k99 ;
wire [31:0] m100,n100,k100 ;
wire [31:0] m101,n101,k101 ;
wire [31:0] m102,n102,k102 ;
wire [31:0] m103,n103,k103 ;
wire [31:0] m104,n104,k104 ;
wire [31:0] m105,n105,k105 ;
wire [31:0] m106,n106,k106 ;
wire [31:0] m107,n107,k107 ;
wire [31:0] m108,n108,k108 ;
wire [31:0] m109,n109,k109 ;
wire [31:0] m110,n110,k110 ;
wire [31:0] m111,n111,k111 ;
wire [31:0] m112,n112,k112 ;
wire [31:0] m113,n113,k113 ;
wire [31:0] m114,n114,k114 ;
wire [31:0] m115,n115,k115 ;
wire [31:0] m116,n116,k116 ;
wire [31:0] m117,n117,k117 ;
wire [31:0] m118,n118,k118 ;
wire [31:0] m119,n119,k119 ;
wire [31:0] m120,n120,k120 ;
wire [31:0] m121,n121,k121 ;
wire [31:0] m122,n122,k122 ;
wire [31:0] m123,n123,k123 ;
wire [31:0] m124,n124,k124 ;
wire [31:0] m125,n125,k125 ;
wire [31:0] m126,n126,k126 ;
wire [31:0] m127,n127,k127 ;








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
reg [31:0] k10_d0;
reg [31:0] k11_d0;
reg [31:0] k12_d0;
reg [31:0] k13_d0;
reg [31:0] k14_d0;
reg [31:0] k15_d0;
reg [31:0] k16_d0;
reg [31:0] k17_d0;
reg [31:0] k18_d0;
reg [31:0] k19_d0;
reg [31:0] k20_d0;
reg [31:0] k21_d0;
reg [31:0] k22_d0;
reg [31:0] k23_d0;
reg [31:0] k24_d0;
reg [31:0] k25_d0;
reg [31:0] k26_d0;
reg [31:0] k27_d0;
reg [31:0] k28_d0;
reg [31:0] k29_d0;
reg [31:0] k30_d0;
reg [31:0] k31_d0;
reg [31:0] k32_d0;
reg [31:0] k33_d0;
reg [31:0] k34_d0;
reg [31:0] k35_d0;
reg [31:0] k36_d0;
reg [31:0] k37_d0;
reg [31:0] k38_d0;
reg [31:0] k39_d0;
reg [31:0] k40_d0;
reg [31:0] k41_d0;
reg [31:0] k42_d0;
reg [31:0] k43_d0;
reg [31:0] k44_d0;
reg [31:0] k45_d0;
reg [31:0] k46_d0;
reg [31:0] k47_d0;
reg [31:0] k48_d0;
reg [31:0] k49_d0;
reg [31:0] k50_d0;
reg [31:0] k51_d0;
reg [31:0] k52_d0;
reg [31:0] k53_d0;
reg [31:0] k54_d0;
reg [31:0] k55_d0;
reg [31:0] k56_d0;
reg [31:0] k57_d0;
reg [31:0] k58_d0;
reg [31:0] k59_d0;
reg [31:0] k60_d0;
reg [31:0] k61_d0;
reg [31:0] k62_d0;
reg [31:0] k63_d0;
reg [31:0] k64_d0;
reg [31:0] k65_d0;
reg [31:0] k66_d0;
reg [31:0] k67_d0;
reg [31:0] k68_d0;
reg [31:0] k69_d0;
reg [31:0] k70_d0;
reg [31:0] k71_d0;
reg [31:0] k72_d0;
reg [31:0] k73_d0;
reg [31:0] k74_d0;
reg [31:0] k75_d0;
reg [31:0] k76_d0;
reg [31:0] k77_d0;
reg [31:0] k78_d0;
reg [31:0] k79_d0;
reg [31:0] k80_d0;
reg [31:0] k81_d0;
reg [31:0] k82_d0;
reg [31:0] k83_d0;
reg [31:0] k84_d0;
reg [31:0] k85_d0;
reg [31:0] k86_d0;
reg [31:0] k87_d0;
reg [31:0] k88_d0;
reg [31:0] k89_d0;
reg [31:0] k90_d0;
reg [31:0] k91_d0;
reg [31:0] k92_d0;
reg [31:0] k93_d0;
reg [31:0] k94_d0;
reg [31:0] k95_d0;
reg [31:0] k96_d0;
reg [31:0] k97_d0;
reg [31:0] k98_d0;
reg [31:0] k99_d0;
reg [31:0] k100_d0;
reg [31:0] k101_d0;
reg [31:0] k102_d0;
reg [31:0] k103_d0;
reg [31:0] k104_d0;
reg [31:0] k105_d0;
reg [31:0] k106_d0;
reg [31:0] k107_d0;
reg [31:0] k108_d0;
reg [31:0] k109_d0;
reg [31:0] k110_d0;
reg [31:0] k111_d0;
reg [31:0] k112_d0;
reg [31:0] k113_d0;
reg [31:0] k114_d0;
reg [31:0] k115_d0;
reg [31:0] k116_d0;
reg [31:0] k117_d0;
reg [31:0] k118_d0;
reg [31:0] k119_d0;
reg [31:0] k120_d0;
reg [31:0] k121_d0;
reg [31:0] k122_d0;
reg [31:0] k123_d0;
reg [31:0] k124_d0;
reg [31:0] k125_d0;
reg [31:0] k126_d0;
reg [31:0] k127_d0;
wire [31:0] s6_0;
wire [31:0] s6_1;
wire [31:0] s6_2;
wire [31:0] s6_3;
wire [31:0] s6_4;
wire [31:0] s6_5;
wire [31:0] s6_6;
wire [31:0] s6_7;
wire [31:0] s6_8;
wire [31:0] s6_9;
wire [31:0] s6_10;
wire [31:0] s6_11;
wire [31:0] s6_12;
wire [31:0] s6_13;
wire [31:0] s6_14;
wire [31:0] s6_15;
wire [31:0] s6_16;
wire [31:0] s6_17;
wire [31:0] s6_18;
wire [31:0] s6_19;
wire [31:0] s6_20;
wire [31:0] s6_21;
wire [31:0] s6_22;
wire [31:0] s6_23;
wire [31:0] s6_24;
wire [31:0] s6_25;
wire [31:0] s6_26;
wire [31:0] s6_27;
wire [31:0] s6_28;
wire [31:0] s6_29;
wire [31:0] s6_30;
wire [31:0] s6_31;
wire [31:0] s6_32;
wire [31:0] s6_33;
wire [31:0] s6_34;
wire [31:0] s6_35;
wire [31:0] s6_36;
wire [31:0] s6_37;
wire [31:0] s6_38;
wire [31:0] s6_39;
wire [31:0] s6_40;
wire [31:0] s6_41;
wire [31:0] s6_42;
wire [31:0] s6_43;
wire [31:0] s6_44;
wire [31:0] s6_45;
wire [31:0] s6_46;
wire [31:0] s6_47;
wire [31:0] s6_48;
wire [31:0] s6_49;
wire [31:0] s6_50;
wire [31:0] s6_51;
wire [31:0] s6_52;
wire [31:0] s6_53;
wire [31:0] s6_54;
wire [31:0] s6_55;
wire [31:0] s6_56;
wire [31:0] s6_57;
wire [31:0] s6_58;
wire [31:0] s6_59;
wire [31:0] s6_60;
wire [31:0] s6_61;
wire [31:0] s6_62;
wire [31:0] s6_63;








wire [31:0] s6_0_d0;
wire [31:0] s6_1_d0;
wire [31:0] s6_2_d0;
wire [31:0] s6_3_d0;
wire [31:0] s6_4_d0;
wire [31:0] s6_5_d0;
wire [31:0] s6_6_d0;
wire [31:0] s6_7_d0;
wire [31:0] s6_8_d0;
wire [31:0] s6_9_d0;
wire [31:0] s6_10_d0;
wire [31:0] s6_11_d0;
wire [31:0] s6_12_d0;
wire [31:0] s6_13_d0;
wire [31:0] s6_14_d0;
wire [31:0] s6_15_d0;
wire [31:0] s6_16_d0;
wire [31:0] s6_17_d0;
wire [31:0] s6_18_d0;
wire [31:0] s6_19_d0;
wire [31:0] s6_20_d0;
wire [31:0] s6_21_d0;
wire [31:0] s6_22_d0;
wire [31:0] s6_23_d0;
wire [31:0] s6_24_d0;
wire [31:0] s6_25_d0;
wire [31:0] s6_26_d0;
wire [31:0] s6_27_d0;
wire [31:0] s6_28_d0;
wire [31:0] s6_29_d0;
wire [31:0] s6_30_d0;
wire [31:0] s6_31_d0;
wire [31:0] s6_32_d0;
wire [31:0] s6_33_d0;
wire [31:0] s6_34_d0;
wire [31:0] s6_35_d0;
wire [31:0] s6_36_d0;
wire [31:0] s6_37_d0;
wire [31:0] s6_38_d0;
wire [31:0] s6_39_d0;
wire [31:0] s6_40_d0;
wire [31:0] s6_41_d0;
wire [31:0] s6_42_d0;
wire [31:0] s6_43_d0;
wire [31:0] s6_44_d0;
wire [31:0] s6_45_d0;
wire [31:0] s6_46_d0;
wire [31:0] s6_47_d0;
wire [31:0] s6_48_d0;
wire [31:0] s6_49_d0;
wire [31:0] s6_50_d0;
wire [31:0] s6_51_d0;
wire [31:0] s6_52_d0;
wire [31:0] s6_53_d0;
wire [31:0] s6_54_d0;
wire [31:0] s6_55_d0;
wire [31:0] s6_56_d0;
wire [31:0] s6_57_d0;
wire [31:0] s6_58_d0;
wire [31:0] s6_59_d0;
wire [31:0] s6_60_d0;
wire [31:0] s6_61_d0;
wire [31:0] s6_62_d0;
wire [31:0] s6_63_d0;
wire [31:0] s5_0;
wire [31:0] s5_1;
wire [31:0] s5_2;
wire [31:0] s5_3;
wire [31:0] s5_4;
wire [31:0] s5_5;
wire [31:0] s5_6;
wire [31:0] s5_7;
wire [31:0] s5_8;
wire [31:0] s5_9;
wire [31:0] s5_10;
wire [31:0] s5_11;
wire [31:0] s5_12;
wire [31:0] s5_13;
wire [31:0] s5_14;
wire [31:0] s5_15;
wire [31:0] s5_16;
wire [31:0] s5_17;
wire [31:0] s5_18;
wire [31:0] s5_19;
wire [31:0] s5_20;
wire [31:0] s5_21;
wire [31:0] s5_22;
wire [31:0] s5_23;
wire [31:0] s5_24;
wire [31:0] s5_25;
wire [31:0] s5_26;
wire [31:0] s5_27;
wire [31:0] s5_28;
wire [31:0] s5_29;
wire [31:0] s5_30;
wire [31:0] s5_31;








wire [31:0] s5_0_d0;
wire [31:0] s5_1_d0;
wire [31:0] s5_2_d0;
wire [31:0] s5_3_d0;
wire [31:0] s5_4_d0;
wire [31:0] s5_5_d0;
wire [31:0] s5_6_d0;
wire [31:0] s5_7_d0;
wire [31:0] s5_8_d0;
wire [31:0] s5_9_d0;
wire [31:0] s5_10_d0;
wire [31:0] s5_11_d0;
wire [31:0] s5_12_d0;
wire [31:0] s5_13_d0;
wire [31:0] s5_14_d0;
wire [31:0] s5_15_d0;
wire [31:0] s5_16_d0;
wire [31:0] s5_17_d0;
wire [31:0] s5_18_d0;
wire [31:0] s5_19_d0;
wire [31:0] s5_20_d0;
wire [31:0] s5_21_d0;
wire [31:0] s5_22_d0;
wire [31:0] s5_23_d0;
wire [31:0] s5_24_d0;
wire [31:0] s5_25_d0;
wire [31:0] s5_26_d0;
wire [31:0] s5_27_d0;
wire [31:0] s5_28_d0;
wire [31:0] s5_29_d0;
wire [31:0] s5_30_d0;
wire [31:0] s5_31_d0;
wire [31:0] s4_0;
wire [31:0] s4_1;
wire [31:0] s4_2;
wire [31:0] s4_3;
wire [31:0] s4_4;
wire [31:0] s4_5;
wire [31:0] s4_6;
wire [31:0] s4_7;
wire [31:0] s4_8;
wire [31:0] s4_9;
wire [31:0] s4_10;
wire [31:0] s4_11;
wire [31:0] s4_12;
wire [31:0] s4_13;
wire [31:0] s4_14;
wire [31:0] s4_15;








wire [31:0] s4_0_d0;
wire [31:0] s4_1_d0;
wire [31:0] s4_2_d0;
wire [31:0] s4_3_d0;
wire [31:0] s4_4_d0;
wire [31:0] s4_5_d0;
wire [31:0] s4_6_d0;
wire [31:0] s4_7_d0;
wire [31:0] s4_8_d0;
wire [31:0] s4_9_d0;
wire [31:0] s4_10_d0;
wire [31:0] s4_11_d0;
wire [31:0] s4_12_d0;
wire [31:0] s4_13_d0;
wire [31:0] s4_14_d0;
wire [31:0] s4_15_d0;
wire [31:0] s3_0;
wire [31:0] s3_1;
wire [31:0] s3_2;
wire [31:0] s3_3;
wire [31:0] s3_4;
wire [31:0] s3_5;
wire [31:0] s3_6;
wire [31:0] s3_7;








reg [31:0] s3_0_d0;
reg [31:0] s3_1_d0;
reg [31:0] s3_2_d0;
reg [31:0] s3_3_d0;
reg [31:0] s3_4_d0;
reg [31:0] s3_5_d0;
reg [31:0] s3_6_d0;
reg [31:0] s3_7_d0;
wire [31:0] s2_0;
wire [31:0] s2_1;
wire [31:0] s2_2;
wire [31:0] s2_3;








reg [31:0] s2_0_d0;
reg [31:0] s2_1_d0;
reg [31:0] s2_2_d0;
reg [31:0] s2_3_d0;
wire [31:0] s1_0;
wire [31:0] s1_1;








reg [31:0] s1_0_d0;
reg [31:0] s1_1_d0;
wire [31:0] s0_0;








reg [31:0] s0_0_d0;





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
assign m10 = a[351:320];
assign n10 = b[351:320];
assign m11 = a[383:352];
assign n11 = b[383:352];
assign m12 = a[415:384];
assign n12 = b[415:384];
assign m13 = a[447:416];
assign n13 = b[447:416];
assign m14 = a[479:448];
assign n14 = b[479:448];
assign m15 = a[511:480];
assign n15 = b[511:480];
assign m16 = a[543:512];
assign n16 = b[543:512];
assign m17 = a[575:544];
assign n17 = b[575:544];
assign m18 = a[607:576];
assign n18 = b[607:576];
assign m19 = a[639:608];
assign n19 = b[639:608];
assign m20 = a[671:640];
assign n20 = b[671:640];
assign m21 = a[703:672];
assign n21 = b[703:672];
assign m22 = a[735:704];
assign n22 = b[735:704];
assign m23 = a[767:736];
assign n23 = b[767:736];
assign m24 = a[799:768];
assign n24 = b[799:768];
assign m25 = a[831:800];
assign n25 = b[831:800];
assign m26 = a[863:832];
assign n26 = b[863:832];
assign m27 = a[895:864];
assign n27 = b[895:864];
assign m28 = a[927:896];
assign n28 = b[927:896];
assign m29 = a[959:928];
assign n29 = b[959:928];
assign m30 = a[991:960];
assign n30 = b[991:960];
assign m31 = a[1023:992];
assign n31 = b[1023:992];
assign m32 = a[1055:1024];
assign n32 = b[1055:1024];
assign m33 = a[1087:1056];
assign n33 = b[1087:1056];
assign m34 = a[1119:1088];
assign n34 = b[1119:1088];
assign m35 = a[1151:1120];
assign n35 = b[1151:1120];
assign m36 = a[1183:1152];
assign n36 = b[1183:1152];
assign m37 = a[1215:1184];
assign n37 = b[1215:1184];
assign m38 = a[1247:1216];
assign n38 = b[1247:1216];
assign m39 = a[1279:1248];
assign n39 = b[1279:1248];
assign m40 = a[1311:1280];
assign n40 = b[1311:1280];
assign m41 = a[1343:1312];
assign n41 = b[1343:1312];
assign m42 = a[1375:1344];
assign n42 = b[1375:1344];
assign m43 = a[1407:1376];
assign n43 = b[1407:1376];
assign m44 = a[1439:1408];
assign n44 = b[1439:1408];
assign m45 = a[1471:1440];
assign n45 = b[1471:1440];
assign m46 = a[1503:1472];
assign n46 = b[1503:1472];
assign m47 = a[1535:1504];
assign n47 = b[1535:1504];
assign m48 = a[1567:1536];
assign n48 = b[1567:1536];
assign m49 = a[1599:1568];
assign n49 = b[1599:1568];
assign m50 = a[1631:1600];
assign n50 = b[1631:1600];
assign m51 = a[1663:1632];
assign n51 = b[1663:1632];
assign m52 = a[1695:1664];
assign n52 = b[1695:1664];
assign m53 = a[1727:1696];
assign n53 = b[1727:1696];
assign m54 = a[1759:1728];
assign n54 = b[1759:1728];
assign m55 = a[1791:1760];
assign n55 = b[1791:1760];
assign m56 = a[1823:1792];
assign n56 = b[1823:1792];
assign m57 = a[1855:1824];
assign n57 = b[1855:1824];
assign m58 = a[1887:1856];
assign n58 = b[1887:1856];
assign m59 = a[1919:1888];
assign n59 = b[1919:1888];
assign m60 = a[1951:1920];
assign n60 = b[1951:1920];
assign m61 = a[1983:1952];
assign n61 = b[1983:1952];
assign m62 = a[2015:1984];
assign n62 = b[2015:1984];
assign m63 = a[2047:2016];
assign n63 = b[2047:2016];
assign m64 = a[2079:2048];
assign n64 = b[2079:2048];
assign m65 = a[2111:2080];
assign n65 = b[2111:2080];
assign m66 = a[2143:2112];
assign n66 = b[2143:2112];
assign m67 = a[2175:2144];
assign n67 = b[2175:2144];
assign m68 = a[2207:2176];
assign n68 = b[2207:2176];
assign m69 = a[2239:2208];
assign n69 = b[2239:2208];
assign m70 = a[2271:2240];
assign n70 = b[2271:2240];
assign m71 = a[2303:2272];
assign n71 = b[2303:2272];
assign m72 = a[2335:2304];
assign n72 = b[2335:2304];
assign m73 = a[2367:2336];
assign n73 = b[2367:2336];
assign m74 = a[2399:2368];
assign n74 = b[2399:2368];
assign m75 = a[2431:2400];
assign n75 = b[2431:2400];
assign m76 = a[2463:2432];
assign n76 = b[2463:2432];
assign m77 = a[2495:2464];
assign n77 = b[2495:2464];
assign m78 = a[2527:2496];
assign n78 = b[2527:2496];
assign m79 = a[2559:2528];
assign n79 = b[2559:2528];
assign m80 = a[2591:2560];
assign n80 = b[2591:2560];
assign m81 = a[2623:2592];
assign n81 = b[2623:2592];
assign m82 = a[2655:2624];
assign n82 = b[2655:2624];
assign m83 = a[2687:2656];
assign n83 = b[2687:2656];
assign m84 = a[2719:2688];
assign n84 = b[2719:2688];
assign m85 = a[2751:2720];
assign n85 = b[2751:2720];
assign m86 = a[2783:2752];
assign n86 = b[2783:2752];
assign m87 = a[2815:2784];
assign n87 = b[2815:2784];
assign m88 = a[2847:2816];
assign n88 = b[2847:2816];
assign m89 = a[2879:2848];
assign n89 = b[2879:2848];
assign m90 = a[2911:2880];
assign n90 = b[2911:2880];
assign m91 = a[2943:2912];
assign n91 = b[2943:2912];
assign m92 = a[2975:2944];
assign n92 = b[2975:2944];
assign m93 = a[3007:2976];
assign n93 = b[3007:2976];
assign m94 = a[3039:3008];
assign n94 = b[3039:3008];
assign m95 = a[3071:3040];
assign n95 = b[3071:3040];
assign m96 = a[3103:3072];
assign n96 = b[3103:3072];
assign m97 = a[3135:3104];
assign n97 = b[3135:3104];
assign m98 = a[3167:3136];
assign n98 = b[3167:3136];
assign m99 = a[3199:3168];
assign n99 = b[3199:3168];
assign m100 = a[3231:3200];
assign n100 = b[3231:3200];
assign m101 = a[3263:3232];
assign n101 = b[3263:3232];
assign m102 = a[3295:3264];
assign n102 = b[3295:3264];
assign m103 = a[3327:3296];
assign n103 = b[3327:3296];
assign m104 = a[3359:3328];
assign n104 = b[3359:3328];
assign m105 = a[3391:3360];
assign n105 = b[3391:3360];
assign m106 = a[3423:3392];
assign n106 = b[3423:3392];
assign m107 = a[3455:3424];
assign n107 = b[3455:3424];
assign m108 = a[3487:3456];
assign n108 = b[3487:3456];
assign m109 = a[3519:3488];
assign n109 = b[3519:3488];
assign m110 = a[3551:3520];
assign n110 = b[3551:3520];
assign m111 = a[3583:3552];
assign n111 = b[3583:3552];
assign m112 = a[3615:3584];
assign n112 = b[3615:3584];
assign m113 = a[3647:3616];
assign n113 = b[3647:3616];
assign m114 = a[3679:3648];
assign n114 = b[3679:3648];
assign m115 = a[3711:3680];
assign n115 = b[3711:3680];
assign m116 = a[3743:3712];
assign n116 = b[3743:3712];
assign m117 = a[3775:3744];
assign n117 = b[3775:3744];
assign m118 = a[3807:3776];
assign n118 = b[3807:3776];
assign m119 = a[3839:3808];
assign n119 = b[3839:3808];
assign m120 = a[3871:3840];
assign n120 = b[3871:3840];
assign m121 = a[3903:3872];
assign n121 = b[3903:3872];
assign m122 = a[3935:3904];
assign n122 = b[3935:3904];
assign m123 = a[3967:3936];
assign n123 = b[3967:3936];
assign m124 = a[3999:3968];
assign n124 = b[3999:3968];
assign m125 = a[4031:4000];
assign n125 = b[4031:4000];
assign m126 = a[4063:4032];
assign n126 = b[4063:4032];
assign m127 = a[4095:4064];
assign n127 = b[4095:4064];




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


model_layer_node_unit_multiplier u_mult10(
m10,
n10,
k10
);


model_layer_node_unit_multiplier u_mult11(
m11,
n11,
k11
);


model_layer_node_unit_multiplier u_mult12(
m12,
n12,
k12
);


model_layer_node_unit_multiplier u_mult13(
m13,
n13,
k13
);


model_layer_node_unit_multiplier u_mult14(
m14,
n14,
k14
);


model_layer_node_unit_multiplier u_mult15(
m15,
n15,
k15
);


model_layer_node_unit_multiplier u_mult16(
m16,
n16,
k16
);


model_layer_node_unit_multiplier u_mult17(
m17,
n17,
k17
);


model_layer_node_unit_multiplier u_mult18(
m18,
n18,
k18
);


model_layer_node_unit_multiplier u_mult19(
m19,
n19,
k19
);


model_layer_node_unit_multiplier u_mult20(
m20,
n20,
k20
);


model_layer_node_unit_multiplier u_mult21(
m21,
n21,
k21
);


model_layer_node_unit_multiplier u_mult22(
m22,
n22,
k22
);


model_layer_node_unit_multiplier u_mult23(
m23,
n23,
k23
);


model_layer_node_unit_multiplier u_mult24(
m24,
n24,
k24
);


model_layer_node_unit_multiplier u_mult25(
m25,
n25,
k25
);


model_layer_node_unit_multiplier u_mult26(
m26,
n26,
k26
);


model_layer_node_unit_multiplier u_mult27(
m27,
n27,
k27
);


model_layer_node_unit_multiplier u_mult28(
m28,
n28,
k28
);


model_layer_node_unit_multiplier u_mult29(
m29,
n29,
k29
);


model_layer_node_unit_multiplier u_mult30(
m30,
n30,
k30
);


model_layer_node_unit_multiplier u_mult31(
m31,
n31,
k31
);


model_layer_node_unit_multiplier u_mult32(
m32,
n32,
k32
);


model_layer_node_unit_multiplier u_mult33(
m33,
n33,
k33
);


model_layer_node_unit_multiplier u_mult34(
m34,
n34,
k34
);


model_layer_node_unit_multiplier u_mult35(
m35,
n35,
k35
);


model_layer_node_unit_multiplier u_mult36(
m36,
n36,
k36
);


model_layer_node_unit_multiplier u_mult37(
m37,
n37,
k37
);


model_layer_node_unit_multiplier u_mult38(
m38,
n38,
k38
);


model_layer_node_unit_multiplier u_mult39(
m39,
n39,
k39
);


model_layer_node_unit_multiplier u_mult40(
m40,
n40,
k40
);


model_layer_node_unit_multiplier u_mult41(
m41,
n41,
k41
);


model_layer_node_unit_multiplier u_mult42(
m42,
n42,
k42
);


model_layer_node_unit_multiplier u_mult43(
m43,
n43,
k43
);


model_layer_node_unit_multiplier u_mult44(
m44,
n44,
k44
);


model_layer_node_unit_multiplier u_mult45(
m45,
n45,
k45
);


model_layer_node_unit_multiplier u_mult46(
m46,
n46,
k46
);


model_layer_node_unit_multiplier u_mult47(
m47,
n47,
k47
);


model_layer_node_unit_multiplier u_mult48(
m48,
n48,
k48
);


model_layer_node_unit_multiplier u_mult49(
m49,
n49,
k49
);


model_layer_node_unit_multiplier u_mult50(
m50,
n50,
k50
);


model_layer_node_unit_multiplier u_mult51(
m51,
n51,
k51
);


model_layer_node_unit_multiplier u_mult52(
m52,
n52,
k52
);


model_layer_node_unit_multiplier u_mult53(
m53,
n53,
k53
);


model_layer_node_unit_multiplier u_mult54(
m54,
n54,
k54
);


model_layer_node_unit_multiplier u_mult55(
m55,
n55,
k55
);


model_layer_node_unit_multiplier u_mult56(
m56,
n56,
k56
);


model_layer_node_unit_multiplier u_mult57(
m57,
n57,
k57
);


model_layer_node_unit_multiplier u_mult58(
m58,
n58,
k58
);


model_layer_node_unit_multiplier u_mult59(
m59,
n59,
k59
);


model_layer_node_unit_multiplier u_mult60(
m60,
n60,
k60
);


model_layer_node_unit_multiplier u_mult61(
m61,
n61,
k61
);


model_layer_node_unit_multiplier u_mult62(
m62,
n62,
k62
);


model_layer_node_unit_multiplier u_mult63(
m63,
n63,
k63
);


model_layer_node_unit_multiplier u_mult64(
m64,
n64,
k64
);


model_layer_node_unit_multiplier u_mult65(
m65,
n65,
k65
);


model_layer_node_unit_multiplier u_mult66(
m66,
n66,
k66
);


model_layer_node_unit_multiplier u_mult67(
m67,
n67,
k67
);


model_layer_node_unit_multiplier u_mult68(
m68,
n68,
k68
);


model_layer_node_unit_multiplier u_mult69(
m69,
n69,
k69
);


model_layer_node_unit_multiplier u_mult70(
m70,
n70,
k70
);


model_layer_node_unit_multiplier u_mult71(
m71,
n71,
k71
);


model_layer_node_unit_multiplier u_mult72(
m72,
n72,
k72
);


model_layer_node_unit_multiplier u_mult73(
m73,
n73,
k73
);


model_layer_node_unit_multiplier u_mult74(
m74,
n74,
k74
);


model_layer_node_unit_multiplier u_mult75(
m75,
n75,
k75
);


model_layer_node_unit_multiplier u_mult76(
m76,
n76,
k76
);


model_layer_node_unit_multiplier u_mult77(
m77,
n77,
k77
);


model_layer_node_unit_multiplier u_mult78(
m78,
n78,
k78
);


model_layer_node_unit_multiplier u_mult79(
m79,
n79,
k79
);


model_layer_node_unit_multiplier u_mult80(
m80,
n80,
k80
);


model_layer_node_unit_multiplier u_mult81(
m81,
n81,
k81
);


model_layer_node_unit_multiplier u_mult82(
m82,
n82,
k82
);


model_layer_node_unit_multiplier u_mult83(
m83,
n83,
k83
);


model_layer_node_unit_multiplier u_mult84(
m84,
n84,
k84
);


model_layer_node_unit_multiplier u_mult85(
m85,
n85,
k85
);


model_layer_node_unit_multiplier u_mult86(
m86,
n86,
k86
);


model_layer_node_unit_multiplier u_mult87(
m87,
n87,
k87
);


model_layer_node_unit_multiplier u_mult88(
m88,
n88,
k88
);


model_layer_node_unit_multiplier u_mult89(
m89,
n89,
k89
);


model_layer_node_unit_multiplier u_mult90(
m90,
n90,
k90
);


model_layer_node_unit_multiplier u_mult91(
m91,
n91,
k91
);


model_layer_node_unit_multiplier u_mult92(
m92,
n92,
k92
);


model_layer_node_unit_multiplier u_mult93(
m93,
n93,
k93
);


model_layer_node_unit_multiplier u_mult94(
m94,
n94,
k94
);


model_layer_node_unit_multiplier u_mult95(
m95,
n95,
k95
);


model_layer_node_unit_multiplier u_mult96(
m96,
n96,
k96
);


model_layer_node_unit_multiplier u_mult97(
m97,
n97,
k97
);


model_layer_node_unit_multiplier u_mult98(
m98,
n98,
k98
);


model_layer_node_unit_multiplier u_mult99(
m99,
n99,
k99
);


model_layer_node_unit_multiplier u_mult100(
m100,
n100,
k100
);


model_layer_node_unit_multiplier u_mult101(
m101,
n101,
k101
);


model_layer_node_unit_multiplier u_mult102(
m102,
n102,
k102
);


model_layer_node_unit_multiplier u_mult103(
m103,
n103,
k103
);


model_layer_node_unit_multiplier u_mult104(
m104,
n104,
k104
);


model_layer_node_unit_multiplier u_mult105(
m105,
n105,
k105
);


model_layer_node_unit_multiplier u_mult106(
m106,
n106,
k106
);


model_layer_node_unit_multiplier u_mult107(
m107,
n107,
k107
);


model_layer_node_unit_multiplier u_mult108(
m108,
n108,
k108
);


model_layer_node_unit_multiplier u_mult109(
m109,
n109,
k109
);


model_layer_node_unit_multiplier u_mult110(
m110,
n110,
k110
);


model_layer_node_unit_multiplier u_mult111(
m111,
n111,
k111
);


model_layer_node_unit_multiplier u_mult112(
m112,
n112,
k112
);


model_layer_node_unit_multiplier u_mult113(
m113,
n113,
k113
);


model_layer_node_unit_multiplier u_mult114(
m114,
n114,
k114
);


model_layer_node_unit_multiplier u_mult115(
m115,
n115,
k115
);


model_layer_node_unit_multiplier u_mult116(
m116,
n116,
k116
);


model_layer_node_unit_multiplier u_mult117(
m117,
n117,
k117
);


model_layer_node_unit_multiplier u_mult118(
m118,
n118,
k118
);


model_layer_node_unit_multiplier u_mult119(
m119,
n119,
k119
);


model_layer_node_unit_multiplier u_mult120(
m120,
n120,
k120
);


model_layer_node_unit_multiplier u_mult121(
m121,
n121,
k121
);


model_layer_node_unit_multiplier u_mult122(
m122,
n122,
k122
);


model_layer_node_unit_multiplier u_mult123(
m123,
n123,
k123
);


model_layer_node_unit_multiplier u_mult124(
m124,
n124,
k124
);


model_layer_node_unit_multiplier u_mult125(
m125,
n125,
k125
);


model_layer_node_unit_multiplier u_mult126(
m126,
n126,
k126
);


model_layer_node_unit_multiplier u_mult127(
m127,
n127,
k127
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
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k10_d0 <=  0;
	else
		k10_d0 <=  k10;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k11_d0 <=  0;
	else
		k11_d0 <=  k11;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k12_d0 <=  0;
	else
		k12_d0 <=  k12;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k13_d0 <=  0;
	else
		k13_d0 <=  k13;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k14_d0 <=  0;
	else
		k14_d0 <=  k14;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k15_d0 <=  0;
	else
		k15_d0 <=  k15;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k16_d0 <=  0;
	else
		k16_d0 <=  k16;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k17_d0 <=  0;
	else
		k17_d0 <=  k17;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k18_d0 <=  0;
	else
		k18_d0 <=  k18;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k19_d0 <=  0;
	else
		k19_d0 <=  k19;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k20_d0 <=  0;
	else
		k20_d0 <=  k20;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k21_d0 <=  0;
	else
		k21_d0 <=  k21;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k22_d0 <=  0;
	else
		k22_d0 <=  k22;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k23_d0 <=  0;
	else
		k23_d0 <=  k23;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k24_d0 <=  0;
	else
		k24_d0 <=  k24;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k25_d0 <=  0;
	else
		k25_d0 <=  k25;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k26_d0 <=  0;
	else
		k26_d0 <=  k26;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k27_d0 <=  0;
	else
		k27_d0 <=  k27;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k28_d0 <=  0;
	else
		k28_d0 <=  k28;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k29_d0 <=  0;
	else
		k29_d0 <=  k29;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k30_d0 <=  0;
	else
		k30_d0 <=  k30;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k31_d0 <=  0;
	else
		k31_d0 <=  k31;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k32_d0 <=  0;
	else
		k32_d0 <=  k32;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k33_d0 <=  0;
	else
		k33_d0 <=  k33;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k34_d0 <=  0;
	else
		k34_d0 <=  k34;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k35_d0 <=  0;
	else
		k35_d0 <=  k35;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k36_d0 <=  0;
	else
		k36_d0 <=  k36;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k37_d0 <=  0;
	else
		k37_d0 <=  k37;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k38_d0 <=  0;
	else
		k38_d0 <=  k38;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k39_d0 <=  0;
	else
		k39_d0 <=  k39;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k40_d0 <=  0;
	else
		k40_d0 <=  k40;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k41_d0 <=  0;
	else
		k41_d0 <=  k41;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k42_d0 <=  0;
	else
		k42_d0 <=  k42;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k43_d0 <=  0;
	else
		k43_d0 <=  k43;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k44_d0 <=  0;
	else
		k44_d0 <=  k44;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k45_d0 <=  0;
	else
		k45_d0 <=  k45;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k46_d0 <=  0;
	else
		k46_d0 <=  k46;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k47_d0 <=  0;
	else
		k47_d0 <=  k47;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k48_d0 <=  0;
	else
		k48_d0 <=  k48;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k49_d0 <=  0;
	else
		k49_d0 <=  k49;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k50_d0 <=  0;
	else
		k50_d0 <=  k50;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k51_d0 <=  0;
	else
		k51_d0 <=  k51;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k52_d0 <=  0;
	else
		k52_d0 <=  k52;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k53_d0 <=  0;
	else
		k53_d0 <=  k53;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k54_d0 <=  0;
	else
		k54_d0 <=  k54;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k55_d0 <=  0;
	else
		k55_d0 <=  k55;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k56_d0 <=  0;
	else
		k56_d0 <=  k56;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k57_d0 <=  0;
	else
		k57_d0 <=  k57;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k58_d0 <=  0;
	else
		k58_d0 <=  k58;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k59_d0 <=  0;
	else
		k59_d0 <=  k59;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k60_d0 <=  0;
	else
		k60_d0 <=  k60;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k61_d0 <=  0;
	else
		k61_d0 <=  k61;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k62_d0 <=  0;
	else
		k62_d0 <=  k62;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k63_d0 <=  0;
	else
		k63_d0 <=  k63;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k64_d0 <=  0;
	else
		k64_d0 <=  k64;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k65_d0 <=  0;
	else
		k65_d0 <=  k65;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k66_d0 <=  0;
	else
		k66_d0 <=  k66;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k67_d0 <=  0;
	else
		k67_d0 <=  k67;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k68_d0 <=  0;
	else
		k68_d0 <=  k68;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k69_d0 <=  0;
	else
		k69_d0 <=  k69;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k70_d0 <=  0;
	else
		k70_d0 <=  k70;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k71_d0 <=  0;
	else
		k71_d0 <=  k71;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k72_d0 <=  0;
	else
		k72_d0 <=  k72;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k73_d0 <=  0;
	else
		k73_d0 <=  k73;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k74_d0 <=  0;
	else
		k74_d0 <=  k74;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k75_d0 <=  0;
	else
		k75_d0 <=  k75;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k76_d0 <=  0;
	else
		k76_d0 <=  k76;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k77_d0 <=  0;
	else
		k77_d0 <=  k77;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k78_d0 <=  0;
	else
		k78_d0 <=  k78;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k79_d0 <=  0;
	else
		k79_d0 <=  k79;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k80_d0 <=  0;
	else
		k80_d0 <=  k80;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k81_d0 <=  0;
	else
		k81_d0 <=  k81;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k82_d0 <=  0;
	else
		k82_d0 <=  k82;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k83_d0 <=  0;
	else
		k83_d0 <=  k83;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k84_d0 <=  0;
	else
		k84_d0 <=  k84;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k85_d0 <=  0;
	else
		k85_d0 <=  k85;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k86_d0 <=  0;
	else
		k86_d0 <=  k86;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k87_d0 <=  0;
	else
		k87_d0 <=  k87;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k88_d0 <=  0;
	else
		k88_d0 <=  k88;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k89_d0 <=  0;
	else
		k89_d0 <=  k89;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k90_d0 <=  0;
	else
		k90_d0 <=  k90;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k91_d0 <=  0;
	else
		k91_d0 <=  k91;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k92_d0 <=  0;
	else
		k92_d0 <=  k92;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k93_d0 <=  0;
	else
		k93_d0 <=  k93;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k94_d0 <=  0;
	else
		k94_d0 <=  k94;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k95_d0 <=  0;
	else
		k95_d0 <=  k95;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k96_d0 <=  0;
	else
		k96_d0 <=  k96;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k97_d0 <=  0;
	else
		k97_d0 <=  k97;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k98_d0 <=  0;
	else
		k98_d0 <=  k98;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k99_d0 <=  0;
	else
		k99_d0 <=  k99;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k100_d0 <=  0;
	else
		k100_d0 <=  k100;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k101_d0 <=  0;
	else
		k101_d0 <=  k101;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k102_d0 <=  0;
	else
		k102_d0 <=  k102;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k103_d0 <=  0;
	else
		k103_d0 <=  k103;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k104_d0 <=  0;
	else
		k104_d0 <=  k104;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k105_d0 <=  0;
	else
		k105_d0 <=  k105;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k106_d0 <=  0;
	else
		k106_d0 <=  k106;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k107_d0 <=  0;
	else
		k107_d0 <=  k107;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k108_d0 <=  0;
	else
		k108_d0 <=  k108;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k109_d0 <=  0;
	else
		k109_d0 <=  k109;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k110_d0 <=  0;
	else
		k110_d0 <=  k110;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k111_d0 <=  0;
	else
		k111_d0 <=  k111;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k112_d0 <=  0;
	else
		k112_d0 <=  k112;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k113_d0 <=  0;
	else
		k113_d0 <=  k113;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k114_d0 <=  0;
	else
		k114_d0 <=  k114;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k115_d0 <=  0;
	else
		k115_d0 <=  k115;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k116_d0 <=  0;
	else
		k116_d0 <=  k116;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k117_d0 <=  0;
	else
		k117_d0 <=  k117;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k118_d0 <=  0;
	else
		k118_d0 <=  k118;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k119_d0 <=  0;
	else
		k119_d0 <=  k119;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k120_d0 <=  0;
	else
		k120_d0 <=  k120;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k121_d0 <=  0;
	else
		k121_d0 <=  k121;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k122_d0 <=  0;
	else
		k122_d0 <=  k122;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k123_d0 <=  0;
	else
		k123_d0 <=  k123;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k124_d0 <=  0;
	else
		k124_d0 <=  k124;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k125_d0 <=  0;
	else
		k125_d0 <=  k125;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k126_d0 <=  0;
	else
		k126_d0 <=  k126;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		k127_d0 <=  0;
	else
		k127_d0 <=  k127;
end
//adder stages here on
//stage 6 adders







model_layer_node_unit_adder u_add6_0(
k0_d0,
k1_d0,
s6_0
);


model_layer_node_unit_adder u_add6_1(
k2_d0,
k3_d0,
s6_1
);


model_layer_node_unit_adder u_add6_2(
k4_d0,
k5_d0,
s6_2
);


model_layer_node_unit_adder u_add6_3(
k6_d0,
k7_d0,
s6_3
);


model_layer_node_unit_adder u_add6_4(
k8_d0,
k9_d0,
s6_4
);


model_layer_node_unit_adder u_add6_5(
k10_d0,
k11_d0,
s6_5
);


model_layer_node_unit_adder u_add6_6(
k12_d0,
k13_d0,
s6_6
);


model_layer_node_unit_adder u_add6_7(
k14_d0,
k15_d0,
s6_7
);


model_layer_node_unit_adder u_add6_8(
k16_d0,
k17_d0,
s6_8
);


model_layer_node_unit_adder u_add6_9(
k18_d0,
k19_d0,
s6_9
);


model_layer_node_unit_adder u_add6_10(
k20_d0,
k21_d0,
s6_10
);


model_layer_node_unit_adder u_add6_11(
k22_d0,
k23_d0,
s6_11
);


model_layer_node_unit_adder u_add6_12(
k24_d0,
k25_d0,
s6_12
);


model_layer_node_unit_adder u_add6_13(
k26_d0,
k27_d0,
s6_13
);


model_layer_node_unit_adder u_add6_14(
k28_d0,
k29_d0,
s6_14
);


model_layer_node_unit_adder u_add6_15(
k30_d0,
k31_d0,
s6_15
);


model_layer_node_unit_adder u_add6_16(
k32_d0,
k33_d0,
s6_16
);


model_layer_node_unit_adder u_add6_17(
k34_d0,
k35_d0,
s6_17
);


model_layer_node_unit_adder u_add6_18(
k36_d0,
k37_d0,
s6_18
);


model_layer_node_unit_adder u_add6_19(
k38_d0,
k39_d0,
s6_19
);


model_layer_node_unit_adder u_add6_20(
k40_d0,
k41_d0,
s6_20
);


model_layer_node_unit_adder u_add6_21(
k42_d0,
k43_d0,
s6_21
);


model_layer_node_unit_adder u_add6_22(
k44_d0,
k45_d0,
s6_22
);


model_layer_node_unit_adder u_add6_23(
k46_d0,
k47_d0,
s6_23
);


model_layer_node_unit_adder u_add6_24(
k48_d0,
k49_d0,
s6_24
);


model_layer_node_unit_adder u_add6_25(
k50_d0,
k51_d0,
s6_25
);


model_layer_node_unit_adder u_add6_26(
k52_d0,
k53_d0,
s6_26
);


model_layer_node_unit_adder u_add6_27(
k54_d0,
k55_d0,
s6_27
);


model_layer_node_unit_adder u_add6_28(
k56_d0,
k57_d0,
s6_28
);


model_layer_node_unit_adder u_add6_29(
k58_d0,
k59_d0,
s6_29
);


model_layer_node_unit_adder u_add6_30(
k60_d0,
k61_d0,
s6_30
);


model_layer_node_unit_adder u_add6_31(
k62_d0,
k63_d0,
s6_31
);


model_layer_node_unit_adder u_add6_32(
k64_d0,
k65_d0,
s6_32
);


model_layer_node_unit_adder u_add6_33(
k66_d0,
k67_d0,
s6_33
);


model_layer_node_unit_adder u_add6_34(
k68_d0,
k69_d0,
s6_34
);


model_layer_node_unit_adder u_add6_35(
k70_d0,
k71_d0,
s6_35
);


model_layer_node_unit_adder u_add6_36(
k72_d0,
k73_d0,
s6_36
);


model_layer_node_unit_adder u_add6_37(
k74_d0,
k75_d0,
s6_37
);


model_layer_node_unit_adder u_add6_38(
k76_d0,
k77_d0,
s6_38
);


model_layer_node_unit_adder u_add6_39(
k78_d0,
k79_d0,
s6_39
);


model_layer_node_unit_adder u_add6_40(
k80_d0,
k81_d0,
s6_40
);


model_layer_node_unit_adder u_add6_41(
k82_d0,
k83_d0,
s6_41
);


model_layer_node_unit_adder u_add6_42(
k84_d0,
k85_d0,
s6_42
);


model_layer_node_unit_adder u_add6_43(
k86_d0,
k87_d0,
s6_43
);


model_layer_node_unit_adder u_add6_44(
k88_d0,
k89_d0,
s6_44
);


model_layer_node_unit_adder u_add6_45(
k90_d0,
k91_d0,
s6_45
);


model_layer_node_unit_adder u_add6_46(
k92_d0,
k93_d0,
s6_46
);


model_layer_node_unit_adder u_add6_47(
k94_d0,
k95_d0,
s6_47
);


model_layer_node_unit_adder u_add6_48(
k96_d0,
k97_d0,
s6_48
);


model_layer_node_unit_adder u_add6_49(
k98_d0,
k99_d0,
s6_49
);


model_layer_node_unit_adder u_add6_50(
k100_d0,
k101_d0,
s6_50
);


model_layer_node_unit_adder u_add6_51(
k102_d0,
k103_d0,
s6_51
);


model_layer_node_unit_adder u_add6_52(
k104_d0,
k105_d0,
s6_52
);


model_layer_node_unit_adder u_add6_53(
k106_d0,
k107_d0,
s6_53
);


model_layer_node_unit_adder u_add6_54(
k108_d0,
k109_d0,
s6_54
);


model_layer_node_unit_adder u_add6_55(
k110_d0,
k111_d0,
s6_55
);


model_layer_node_unit_adder u_add6_56(
k112_d0,
k113_d0,
s6_56
);


model_layer_node_unit_adder u_add6_57(
k114_d0,
k115_d0,
s6_57
);


model_layer_node_unit_adder u_add6_58(
k116_d0,
k117_d0,
s6_58
);


model_layer_node_unit_adder u_add6_59(
k118_d0,
k119_d0,
s6_59
);


model_layer_node_unit_adder u_add6_60(
k120_d0,
k121_d0,
s6_60
);


model_layer_node_unit_adder u_add6_61(
k122_d0,
k123_d0,
s6_61
);


model_layer_node_unit_adder u_add6_62(
k124_d0,
k125_d0,
s6_62
);


model_layer_node_unit_adder u_add6_63(
k126_d0,
k127_d0,
s6_63
);


assign s6_0_d0 =  s6_0;
assign s6_1_d0 =  s6_1;
assign s6_2_d0 =  s6_2;
assign s6_3_d0 =  s6_3;
assign s6_4_d0 =  s6_4;
assign s6_5_d0 =  s6_5;
assign s6_6_d0 =  s6_6;
assign s6_7_d0 =  s6_7;
assign s6_8_d0 =  s6_8;
assign s6_9_d0 =  s6_9;
assign s6_10_d0 =  s6_10;
assign s6_11_d0 =  s6_11;
assign s6_12_d0 =  s6_12;
assign s6_13_d0 =  s6_13;
assign s6_14_d0 =  s6_14;
assign s6_15_d0 =  s6_15;
assign s6_16_d0 =  s6_16;
assign s6_17_d0 =  s6_17;
assign s6_18_d0 =  s6_18;
assign s6_19_d0 =  s6_19;
assign s6_20_d0 =  s6_20;
assign s6_21_d0 =  s6_21;
assign s6_22_d0 =  s6_22;
assign s6_23_d0 =  s6_23;
assign s6_24_d0 =  s6_24;
assign s6_25_d0 =  s6_25;
assign s6_26_d0 =  s6_26;
assign s6_27_d0 =  s6_27;
assign s6_28_d0 =  s6_28;
assign s6_29_d0 =  s6_29;
assign s6_30_d0 =  s6_30;
assign s6_31_d0 =  s6_31;
assign s6_32_d0 =  s6_32;
assign s6_33_d0 =  s6_33;
assign s6_34_d0 =  s6_34;
assign s6_35_d0 =  s6_35;
assign s6_36_d0 =  s6_36;
assign s6_37_d0 =  s6_37;
assign s6_38_d0 =  s6_38;
assign s6_39_d0 =  s6_39;
assign s6_40_d0 =  s6_40;
assign s6_41_d0 =  s6_41;
assign s6_42_d0 =  s6_42;
assign s6_43_d0 =  s6_43;
assign s6_44_d0 =  s6_44;
assign s6_45_d0 =  s6_45;
assign s6_46_d0 =  s6_46;
assign s6_47_d0 =  s6_47;
assign s6_48_d0 =  s6_48;
assign s6_49_d0 =  s6_49;
assign s6_50_d0 =  s6_50;
assign s6_51_d0 =  s6_51;
assign s6_52_d0 =  s6_52;
assign s6_53_d0 =  s6_53;
assign s6_54_d0 =  s6_54;
assign s6_55_d0 =  s6_55;
assign s6_56_d0 =  s6_56;
assign s6_57_d0 =  s6_57;
assign s6_58_d0 =  s6_58;
assign s6_59_d0 =  s6_59;
assign s6_60_d0 =  s6_60;
assign s6_61_d0 =  s6_61;
assign s6_62_d0 =  s6_62;
assign s6_63_d0 =  s6_63;
//stage 5 adders







model_layer_node_unit_adder u_add5_0(
s6_0_d0,
s6_1_d0,
s5_0
);


model_layer_node_unit_adder u_add5_1(
s6_2_d0,
s6_3_d0,
s5_1
);


model_layer_node_unit_adder u_add5_2(
s6_4_d0,
s6_5_d0,
s5_2
);


model_layer_node_unit_adder u_add5_3(
s6_6_d0,
s6_7_d0,
s5_3
);


model_layer_node_unit_adder u_add5_4(
s6_8_d0,
s6_9_d0,
s5_4
);


model_layer_node_unit_adder u_add5_5(
s6_10_d0,
s6_11_d0,
s5_5
);


model_layer_node_unit_adder u_add5_6(
s6_12_d0,
s6_13_d0,
s5_6
);


model_layer_node_unit_adder u_add5_7(
s6_14_d0,
s6_15_d0,
s5_7
);


model_layer_node_unit_adder u_add5_8(
s6_16_d0,
s6_17_d0,
s5_8
);


model_layer_node_unit_adder u_add5_9(
s6_18_d0,
s6_19_d0,
s5_9
);


model_layer_node_unit_adder u_add5_10(
s6_20_d0,
s6_21_d0,
s5_10
);


model_layer_node_unit_adder u_add5_11(
s6_22_d0,
s6_23_d0,
s5_11
);


model_layer_node_unit_adder u_add5_12(
s6_24_d0,
s6_25_d0,
s5_12
);


model_layer_node_unit_adder u_add5_13(
s6_26_d0,
s6_27_d0,
s5_13
);


model_layer_node_unit_adder u_add5_14(
s6_28_d0,
s6_29_d0,
s5_14
);


model_layer_node_unit_adder u_add5_15(
s6_30_d0,
s6_31_d0,
s5_15
);


model_layer_node_unit_adder u_add5_16(
s6_32_d0,
s6_33_d0,
s5_16
);


model_layer_node_unit_adder u_add5_17(
s6_34_d0,
s6_35_d0,
s5_17
);


model_layer_node_unit_adder u_add5_18(
s6_36_d0,
s6_37_d0,
s5_18
);


model_layer_node_unit_adder u_add5_19(
s6_38_d0,
s6_39_d0,
s5_19
);


model_layer_node_unit_adder u_add5_20(
s6_40_d0,
s6_41_d0,
s5_20
);


model_layer_node_unit_adder u_add5_21(
s6_42_d0,
s6_43_d0,
s5_21
);


model_layer_node_unit_adder u_add5_22(
s6_44_d0,
s6_45_d0,
s5_22
);


model_layer_node_unit_adder u_add5_23(
s6_46_d0,
s6_47_d0,
s5_23
);


model_layer_node_unit_adder u_add5_24(
s6_48_d0,
s6_49_d0,
s5_24
);


model_layer_node_unit_adder u_add5_25(
s6_50_d0,
s6_51_d0,
s5_25
);


model_layer_node_unit_adder u_add5_26(
s6_52_d0,
s6_53_d0,
s5_26
);


model_layer_node_unit_adder u_add5_27(
s6_54_d0,
s6_55_d0,
s5_27
);


model_layer_node_unit_adder u_add5_28(
s6_56_d0,
s6_57_d0,
s5_28
);


model_layer_node_unit_adder u_add5_29(
s6_58_d0,
s6_59_d0,
s5_29
);


model_layer_node_unit_adder u_add5_30(
s6_60_d0,
s6_61_d0,
s5_30
);


model_layer_node_unit_adder u_add5_31(
s6_62_d0,
s6_63_d0,
s5_31
);


assign s5_0_d0 =  s5_0;
assign s5_1_d0 =  s5_1;
assign s5_2_d0 =  s5_2;
assign s5_3_d0 =  s5_3;
assign s5_4_d0 =  s5_4;
assign s5_5_d0 =  s5_5;
assign s5_6_d0 =  s5_6;
assign s5_7_d0 =  s5_7;
assign s5_8_d0 =  s5_8;
assign s5_9_d0 =  s5_9;
assign s5_10_d0 =  s5_10;
assign s5_11_d0 =  s5_11;
assign s5_12_d0 =  s5_12;
assign s5_13_d0 =  s5_13;
assign s5_14_d0 =  s5_14;
assign s5_15_d0 =  s5_15;
assign s5_16_d0 =  s5_16;
assign s5_17_d0 =  s5_17;
assign s5_18_d0 =  s5_18;
assign s5_19_d0 =  s5_19;
assign s5_20_d0 =  s5_20;
assign s5_21_d0 =  s5_21;
assign s5_22_d0 =  s5_22;
assign s5_23_d0 =  s5_23;
assign s5_24_d0 =  s5_24;
assign s5_25_d0 =  s5_25;
assign s5_26_d0 =  s5_26;
assign s5_27_d0 =  s5_27;
assign s5_28_d0 =  s5_28;
assign s5_29_d0 =  s5_29;
assign s5_30_d0 =  s5_30;
assign s5_31_d0 =  s5_31;
//stage 4 adders







model_layer_node_unit_adder u_add4_0(
s5_0_d0,
s5_1_d0,
s4_0
);


model_layer_node_unit_adder u_add4_1(
s5_2_d0,
s5_3_d0,
s4_1
);


model_layer_node_unit_adder u_add4_2(
s5_4_d0,
s5_5_d0,
s4_2
);


model_layer_node_unit_adder u_add4_3(
s5_6_d0,
s5_7_d0,
s4_3
);


model_layer_node_unit_adder u_add4_4(
s5_8_d0,
s5_9_d0,
s4_4
);


model_layer_node_unit_adder u_add4_5(
s5_10_d0,
s5_11_d0,
s4_5
);


model_layer_node_unit_adder u_add4_6(
s5_12_d0,
s5_13_d0,
s4_6
);


model_layer_node_unit_adder u_add4_7(
s5_14_d0,
s5_15_d0,
s4_7
);


model_layer_node_unit_adder u_add4_8(
s5_16_d0,
s5_17_d0,
s4_8
);


model_layer_node_unit_adder u_add4_9(
s5_18_d0,
s5_19_d0,
s4_9
);


model_layer_node_unit_adder u_add4_10(
s5_20_d0,
s5_21_d0,
s4_10
);


model_layer_node_unit_adder u_add4_11(
s5_22_d0,
s5_23_d0,
s4_11
);


model_layer_node_unit_adder u_add4_12(
s5_24_d0,
s5_25_d0,
s4_12
);


model_layer_node_unit_adder u_add4_13(
s5_26_d0,
s5_27_d0,
s4_13
);


model_layer_node_unit_adder u_add4_14(
s5_28_d0,
s5_29_d0,
s4_14
);


model_layer_node_unit_adder u_add4_15(
s5_30_d0,
s5_31_d0,
s4_15
);


assign s4_0_d0 =  s4_0;
assign s4_1_d0 =  s4_1;
assign s4_2_d0 =  s4_2;
assign s4_3_d0 =  s4_3;
assign s4_4_d0 =  s4_4;
assign s4_5_d0 =  s4_5;
assign s4_6_d0 =  s4_6;
assign s4_7_d0 =  s4_7;
assign s4_8_d0 =  s4_8;
assign s4_9_d0 =  s4_9;
assign s4_10_d0 =  s4_10;
assign s4_11_d0 =  s4_11;
assign s4_12_d0 =  s4_12;
assign s4_13_d0 =  s4_13;
assign s4_14_d0 =  s4_14;
assign s4_15_d0 =  s4_15;
//stage 3 adders







model_layer_node_unit_adder u_add3_0(
s4_0_d0,
s4_1_d0,
s3_0
);


model_layer_node_unit_adder u_add3_1(
s4_2_d0,
s4_3_d0,
s3_1
);


model_layer_node_unit_adder u_add3_2(
s4_4_d0,
s4_5_d0,
s3_2
);


model_layer_node_unit_adder u_add3_3(
s4_6_d0,
s4_7_d0,
s3_3
);


model_layer_node_unit_adder u_add3_4(
s4_8_d0,
s4_9_d0,
s3_4
);


model_layer_node_unit_adder u_add3_5(
s4_10_d0,
s4_11_d0,
s3_5
);


model_layer_node_unit_adder u_add3_6(
s4_12_d0,
s4_13_d0,
s3_6
);


model_layer_node_unit_adder u_add3_7(
s4_14_d0,
s4_15_d0,
s3_7
);


always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		s3_0_d0 <=  0;
	else
		s3_0_d0 <=  s3_0;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		s3_1_d0 <=  0;
	else
		s3_1_d0 <=  s3_1;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		s3_2_d0 <=  0;
	else
		s3_2_d0 <=  s3_2;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		s3_3_d0 <=  0;
	else
		s3_3_d0 <=  s3_3;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		s3_4_d0 <=  0;
	else
		s3_4_d0 <=  s3_4;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		s3_5_d0 <=  0;
	else
		s3_5_d0 <=  s3_5;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		s3_6_d0 <=  0;
	else
		s3_6_d0 <=  s3_6;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		s3_7_d0 <=  0;
	else
		s3_7_d0 <=  s3_7;
end
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


model_layer_node_unit_adder u_add2_2(
s3_4_d0,
s3_5_d0,
s2_2
);


model_layer_node_unit_adder u_add2_3(
s3_6_d0,
s3_7_d0,
s2_3
);


always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		s2_0_d0 <=  0;
	else
		s2_0_d0 <=  s2_0;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		s2_1_d0 <=  0;
	else
		s2_1_d0 <=  s2_1;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		s2_2_d0 <=  0;
	else
		s2_2_d0 <=  s2_2;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		s2_3_d0 <=  0;
	else
		s2_3_d0 <=  s2_3;
end
//stage 1 adders







model_layer_node_unit_adder u_add1_0(
s2_0_d0,
s2_1_d0,
s1_0
);


model_layer_node_unit_adder u_add1_1(
s2_2_d0,
s2_3_d0,
s1_1
);


always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		s1_0_d0 <=  0;
	else
		s1_0_d0 <=  s1_0;
end
always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		s1_1_d0 <=  0;
	else
		s1_1_d0 <=  s1_1;
end
//stage 0 adders







model_layer_node_unit_adder u_add0_0(
s1_0_d0,
s1_1_d0,
s0_0
);


always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
		s0_0_d0 <=  0;
	else
		s0_0_d0 <=  s0_0;
end
assign c=s0_0_d0;

endmodule

