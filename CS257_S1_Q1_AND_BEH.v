module gate_and(input a,b,output reg c);

always @(*) begin
 c = a&b;
end

endmodule


module gate_and_tb;
reg a,b;
wire c;

gate_and dut(.a(a),.b(b),.c(c));

initial begin
a=0;b=0;        #10;
a=0;b=1;        #10;
a=1;b=0;        #10;
a=1;b=1;        #10;
$finish;
end

initial begin
$dumpfile("gate_and_beh.vcd");
$dumpvars(0,gate_and_tb);
$display("a b f");
$monitor("%b %b %b",a,b,c);

end

endmodule

