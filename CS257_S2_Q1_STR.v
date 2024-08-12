module solve(input [0:2] data,output wire f);

wire temp_xor;

xor(temp_xor,data[0],data[1]);

nor(f,temp_xor,data[2]); 

endmodule


module solve_tb;
reg [0:2] data;
wire f;

solve dut(.data(data),.f(f));

initial begin
data = 3'b000;
repeat(7) #10 data = data+3'b001;
#10 $finish;
end

initial begin
$dumpfile("solve_str.vcd");
$dumpvars(0,solve_tb);

$display(" t x y z f");
$monitor("%2t %b %b %b %b",$time,data[0],data[1],data[2],f);
 
end

endmodule
