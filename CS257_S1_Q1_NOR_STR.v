module gate_nor(input a,b,output c);

nor(c,a,b);

endmodule


module gate_nor_tb;
reg a,b;
wire c;

gate_nor dut(.a(a),.b(b),.c(c));

initial begin
a=0;b=0;        #10;
a=0;b=1;        #10;
a=1;b=0;        #10;
a=1;b=1;        #10;
$finish;
end

initial begin
$dumpfile("gate_nor_str.vcd");
$dumpvars(0,gate_nor_tb);
$display("a b f");
$monitor("%b %b %b",a,b,c);

end

endmodule

