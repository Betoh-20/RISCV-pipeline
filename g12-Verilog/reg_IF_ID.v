module reg_IF_ID(
    input         clock,
    input         reset,
    input         enable,
    
    input  [31:0] InstrF,
    input  [31:0] PCF,
    input  [31:0] PCPlus4F,

    output [31:0] InstrD,
    output [31:0] PCD,
    output [31:0] PCPlus4D
);

    reg [31:0] Instr;
    reg [31:0] PC;
    reg [31:0] PCPlus4;

    initial begin
        Instr <= 0;
        PC <= 0;
        PCPlus4 <= 0;
    end

    always @(posedge clock or posedge reset) begin
        if (reset)
            Instr <= 0;
            PC <= 0;
            PCPlus4 <= 0;
        else if (enable)
            Instr <= InstrF;
            PC <= PCF;
            PCPlus4 <= PCPlus4F;
    end

    assign InstrD = Instr;
    assign PCD = PC;
    assign PCPlus4D = PCPlus4;

endmodule