`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2021 11:00:41 PM
// Design Name: 
// Module Name: count_for_50M
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`define FREQ_COUNT 5_000_000 //max 1hz

module clk_custom(clk,f_out);

output	f_out;
reg		[22:0] q, q_temp;
reg     f_out;
input	clk;

initial
begin
    q=0;
    f_out=1;
end

always @(q)
	q_temp = q+1;
	
always @(posedge clk)
	begin

//		if (q == 5000000)
		if (q == 10)
		begin
		    f_out <= ~f_out;
            q <= 0;
		end
		else q<=q_temp;
		
	end
endmodule
