module reg_IF_ID(
    input         clock,
    input         reset,
    input         enable,   // stall
    input         flush,    // branch/jump
    
    input  [31:0] InstrF,
    input  [31:0] PCF,
    input  [31:0] PCPlus4F,

    output reg [31:0] InstrD,
    output reg [31:0] PCD,
    output reg [31:0] PCPlus4D
);

    always @(posedge clock or posedge reset) begin
        if (reset) begin
            InstrD    <= 32'b0;
            PCD       <= 32'b0;
            PCPlus4D  <= 32'b0;
        end
        else if (flush) begin
            InstrD    <= 32'b0;
            PCD       <= 32'b0;
            PCPlus4D  <= 32'b0;
        end
        else if (enable) begin
            InstrD    <= InstrF;
            PCD       <= PCF;
            PCPlus4D  <= PCPlus4F;
        end
    end

endmodule
