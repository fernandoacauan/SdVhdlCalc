module mlfsr(
 input logic clk,
 input logic reset,
 input logic enable,
 output logic [7:0] res);
always @(posedge clk or posedge reset) begin
 if (~reset) begin
 res <= 8'b10101010;
 end else begin
 if (enable) begin
 res <= {
 res[6:0], res[7] ^ res[5] ^ res[4] ^ res[3]
 };
 end
 end
end
endmodule;
