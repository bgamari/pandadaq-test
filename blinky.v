module blinky (clk, out);

input clk;
output out;

reg [31:0] count;
reg state;

always @(posedge clk)
begin
 if (count == 0)
 begin
	count <= 1000000;
	state <= ~state;
 end
end

assign out = state;

endmodule
