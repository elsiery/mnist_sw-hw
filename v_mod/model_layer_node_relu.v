module model_layer_node_relu (
    a,
    b
);

input [31:0] a;
output [31:0] b;

assign b = a[31] ? 0 : a;


endmodule
