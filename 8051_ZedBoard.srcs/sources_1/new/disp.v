//
// decoder for 7-segment LED display
//

module disp (
    input clock_100Mhz, // 100 Mhz clock
    input reset, // reset
    input [7:0] in0,
    input [7:0] in1,
    input [7:0] in2,
    input [7:0] in3,
    output reg [7:0] SSD_an, // anode signals of the 7-segment LED display
    output reg [7:0] SSD_out// cathode patterns of the 7-segment LED display
    );

    reg [19:0] refresh_counter;
    wire [2:0] LED_activating_counter;
    reg [15:0] SSD_num0, SSD_num1, SSD_num2, SSD_num3;
    
    always @(posedge clock_100Mhz or posedge reset)
    begin 
        if(reset)
            refresh_counter <= 0;
        else
            refresh_counter <= refresh_counter + 1;
    end
    
    assign LED_activating_counter = refresh_counter[19:17];
    
    always @(*)
    begin
        case(LED_activating_counter)
        3'b000: begin
            SSD_an <= #1 8'b11111110; 
              end
        3'b001: begin
            SSD_an <= #1 8'b11111101; 
              end
        3'b010: begin
            SSD_an <= #1 8'b11111011; 
                end
        3'b011: begin
            SSD_an <= #1 8'b11110111; 
               end
        3'b100: begin
            SSD_an <= #1 8'b11101111; 
               end
        3'b101: begin
            SSD_an <= #1 8'b11011111; 
               end
        3'b110: begin
            SSD_an <= #1 8'b10111111; 
               end
        3'b111: begin
            SSD_an <= #1 8'b01111111; 
               end
        endcase
    end
    
    always @(*)
    begin
        case(LED_activating_counter)
        3'b000: begin
            SSD_out <= #1 SSD_num0[7:0];
              end
        3'b001: begin
            SSD_out <= #1 SSD_num0[15:8];
              end
        3'b010: begin
            SSD_out <= #1 SSD_num1[7:0];
                end
        3'b011: begin
            SSD_out <= #1 SSD_num1[15:8];
               end
        3'b100: begin
            SSD_out <= #1 SSD_num2[7:0];
               end
        3'b101: begin
            SSD_out <= #1 SSD_num2[15:8];
               end
        3'b110: begin
            SSD_out <= #1 SSD_num3[7:0];
               end
        3'b111: begin
            SSD_out <= #1 SSD_num3[15:8];
               end
        endcase
    end
    
always @(in0)
begin
  case (in0[7:4])
    4'h0: SSD_num0[15:8] = 8'b00000011;
    4'h1: SSD_num0[15:8] = 8'b10011111;
    4'h2: SSD_num0[15:8] = 8'b00100101;
    4'h3: SSD_num0[15:8] = 8'b00001101;
    4'h4: SSD_num0[15:8] = 8'b10011001;
    4'h5: SSD_num0[15:8] = 8'b01001001;
    4'h6: SSD_num0[15:8] = 8'b01000001;
    4'h7: SSD_num0[15:8] = 8'b00011111;
    4'h8: SSD_num0[15:8] = 8'b00000001;
    4'h9: SSD_num0[15:8] = 8'b00001001;
    4'ha: SSD_num0[15:8] = 8'b00010001;
    4'hb: SSD_num0[15:8] = 8'b11000001;
    4'hc: SSD_num0[15:8] = 8'b01100011;
    4'hd: SSD_num0[15:8] = 8'b10000101;
    4'he: SSD_num0[15:8] = 8'b01100001;
    4'hf: SSD_num0[15:8] = 8'b01110001;
  endcase

  case (in0[3:0])
    4'h0: SSD_num0[7:0] = 8'b00000011;
    4'h1: SSD_num0[7:0] = 8'b10011111;
    4'h2: SSD_num0[7:0] = 8'b00100101;
    4'h3: SSD_num0[7:0] = 8'b00001101;
    4'h4: SSD_num0[7:0] = 8'b10011001;
    4'h5: SSD_num0[7:0] = 8'b01001001;
    4'h6: SSD_num0[7:0] = 8'b01000001;
    4'h7: SSD_num0[7:0] = 8'b00011111;
    4'h8: SSD_num0[7:0] = 8'b00000001;
    4'h9: SSD_num0[7:0] = 8'b00001001;
    4'ha: SSD_num0[7:0] = 8'b00010001;
    4'hb: SSD_num0[7:0] = 8'b11000001;
    4'hc: SSD_num0[7:0] = 8'b01100011;
    4'hd: SSD_num0[7:0] = 8'b10000101;
    4'he: SSD_num0[7:0] = 8'b01100001;
    4'hf: SSD_num0[7:0] = 8'b01110001;
  endcase
end

always @(in1)
begin
  case (in1[7:4])
    4'h0: SSD_num1[15:8] = 8'b00000011;
    4'h1: SSD_num1[15:8] = 8'b10011111;
    4'h2: SSD_num1[15:8] = 8'b00100101;
    4'h3: SSD_num1[15:8] = 8'b00001101;
    4'h4: SSD_num1[15:8] = 8'b10011001;
    4'h5: SSD_num1[15:8] = 8'b01001001;
    4'h6: SSD_num1[15:8] = 8'b01000001;
    4'h7: SSD_num1[15:8] = 8'b00011111;
    4'h8: SSD_num1[15:8] = 8'b00000001;
    4'h9: SSD_num1[15:8] = 8'b00001001;
    4'ha: SSD_num1[15:8] = 8'b00010001;
    4'hb: SSD_num1[15:8] = 8'b11000001;
    4'hc: SSD_num1[15:8] = 8'b01100011;
    4'hd: SSD_num1[15:8] = 8'b10000101;
    4'he: SSD_num1[15:8] = 8'b01100001;
    4'hf: SSD_num1[15:8] = 8'b01110001;
  endcase

  case (in1[3:0])
    4'h0: SSD_num1[7:0] = 8'b00000011;
    4'h1: SSD_num1[7:0] = 8'b10011111;
    4'h2: SSD_num1[7:0] = 8'b00100101;
    4'h3: SSD_num1[7:0] = 8'b00001101;
    4'h4: SSD_num1[7:0] = 8'b10011001;
    4'h5: SSD_num1[7:0] = 8'b01001001;
    4'h6: SSD_num1[7:0] = 8'b01000001;
    4'h7: SSD_num1[7:0] = 8'b00011111;
    4'h8: SSD_num1[7:0] = 8'b00000001;
    4'h9: SSD_num1[7:0] = 8'b00001001;
    4'ha: SSD_num1[7:0] = 8'b00010001;
    4'hb: SSD_num1[7:0] = 8'b11000001;
    4'hc: SSD_num1[7:0] = 8'b01100011;
    4'hd: SSD_num1[7:0] = 8'b10000101;
    4'he: SSD_num1[7:0] = 8'b01100001;
    4'hf: SSD_num1[7:0] = 8'b01110001;
  endcase
end

always @(in2)
begin
  case (in2[7:4])
    4'h0: SSD_num2[15:8] = 8'b00000011;
    4'h1: SSD_num2[15:8] = 8'b10011111;
    4'h2: SSD_num2[15:8] = 8'b00100101;
    4'h3: SSD_num2[15:8] = 8'b00001101;
    4'h4: SSD_num2[15:8] = 8'b10011001;
    4'h5: SSD_num2[15:8] = 8'b01001001;
    4'h6: SSD_num2[15:8] = 8'b01000001;
    4'h7: SSD_num2[15:8] = 8'b00011111;
    4'h8: SSD_num2[15:8] = 8'b00000001;
    4'h9: SSD_num2[15:8] = 8'b00001001;
    4'ha: SSD_num2[15:8] = 8'b00010001;
    4'hb: SSD_num2[15:8] = 8'b11000001;
    4'hc: SSD_num2[15:8] = 8'b01100011;
    4'hd: SSD_num2[15:8] = 8'b10000101;
    4'he: SSD_num2[15:8] = 8'b01100001;
    4'hf: SSD_num2[15:8] = 8'b01110001;
  endcase

  case (in2[3:0])
    4'h0: SSD_num2[7:0] = 8'b00000011;
    4'h1: SSD_num2[7:0] = 8'b10011111;
    4'h2: SSD_num2[7:0] = 8'b00100101;
    4'h3: SSD_num2[7:0] = 8'b00001101;
    4'h4: SSD_num2[7:0] = 8'b10011001;
    4'h5: SSD_num2[7:0] = 8'b01001001;
    4'h6: SSD_num2[7:0] = 8'b01000001;
    4'h7: SSD_num2[7:0] = 8'b00011111;
    4'h8: SSD_num2[7:0] = 8'b00000001;
    4'h9: SSD_num2[7:0] = 8'b00001001;
    4'ha: SSD_num2[7:0] = 8'b00010001;
    4'hb: SSD_num2[7:0] = 8'b11000001;
    4'hc: SSD_num2[7:0] = 8'b01100011;
    4'hd: SSD_num2[7:0] = 8'b10000101;
    4'he: SSD_num2[7:0] = 8'b01100001;
    4'hf: SSD_num2[7:0] = 8'b01110001;
  endcase
end

always @(in3)
begin
  case (in3[7:4])
    4'h0: SSD_num3[15:8] = 8'b00000011;
    4'h1: SSD_num3[15:8] = 8'b10011111;
    4'h2: SSD_num3[15:8] = 8'b00100101;
    4'h3: SSD_num3[15:8] = 8'b00001101;
    4'h4: SSD_num3[15:8] = 8'b10011001;
    4'h5: SSD_num3[15:8] = 8'b01001001;
    4'h6: SSD_num3[15:8] = 8'b01000001;
    4'h7: SSD_num3[15:8] = 8'b00011111;
    4'h8: SSD_num3[15:8] = 8'b00000001;
    4'h9: SSD_num3[15:8] = 8'b00001001;
    4'ha: SSD_num3[15:8] = 8'b00010001;
    4'hb: SSD_num3[15:8] = 8'b11000001;
    4'hc: SSD_num3[15:8] = 8'b01100011;
    4'hd: SSD_num3[15:8] = 8'b10000101;
    4'he: SSD_num3[15:8] = 8'b01100001;
    4'hf: SSD_num3[15:8] = 8'b01110001;
  endcase

  case (in3[3:0])
    4'h0: SSD_num3[7:0] = 8'b00000011;
    4'h1: SSD_num3[7:0] = 8'b10011111;
    4'h2: SSD_num3[7:0] = 8'b00100101;
    4'h3: SSD_num3[7:0] = 8'b00001101;
    4'h4: SSD_num3[7:0] = 8'b10011001;
    4'h5: SSD_num3[7:0] = 8'b01001001;
    4'h6: SSD_num3[7:0] = 8'b01000001;
    4'h7: SSD_num3[7:0] = 8'b00011111;
    4'h8: SSD_num3[7:0] = 8'b00000001;
    4'h9: SSD_num3[7:0] = 8'b00001001;
    4'ha: SSD_num3[7:0] = 8'b00010001;
    4'hb: SSD_num3[7:0] = 8'b11000001;
    4'hc: SSD_num3[7:0] = 8'b01100011;
    4'hd: SSD_num3[7:0] = 8'b10000101;
    4'he: SSD_num3[7:0] = 8'b01100001;
    4'hf: SSD_num3[7:0] = 8'b01110001;
  endcase
end

endmodule
