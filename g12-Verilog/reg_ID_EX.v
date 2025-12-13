module reg_ID_EX(
    input         clock,
    input         reset,
    input         enable,   // stall
    input         flush,    // bubble

    // WB
    input         RegWriteD,
    input  [1:0]  ResultSrcD,

    // MEM
    input         MemWriteD,

    // EX
    input         JumpD,
    input         BranchD,
    input  [2:0]  ALUControlD,
    input         ALUSrcD,

    // Data
    input  [31:0] RD1D,
    input  [31:0] RD2D,
    input  [31:0] PCD,
    input  [31:0] ImmExtD,
    input  [31:0] PCPlus4D,
    input  [4:0]  RdD,
    input  [4:0]  Rs1D,
    input  [4:0]  Rs2D,

    // WB
    output reg        RegWriteE,
    output reg [1:0]  ResultSrcE,

    // MEM
    output reg        MemWriteE,

    // EX
    output reg        JumpE,
    output reg        BranchE,
    output reg [2:0]  ALUControlE,
    output reg        ALUSrcE,

    // Data
    output reg [31:0] RD1E,
    output reg [31:0] RD2E,
    output reg [31:0] PCE,
    output reg [31:0] ImmExtE,
    output reg [31:0] PCPlus4E,
    output reg [4:0]  RdE,
    output reg [4:0]  Rs1E,
    output reg [4:0]  Rs2E
);

    always @(posedge clock or posedge reset) begin
        if (reset || flush) begin
            RegWriteE   <= 0;
            ResultSrcE  <= 0;
            MemWriteE   <= 0;
            JumpE       <= 0;
            BranchE     <= 0;
            ALUControlE <= 0;
            ALUSrcE     <= 0;
            RD1E        <= 0;
            RD2E        <= 0;
            PCE         <= 0;
            ImmExtE     <= 0;
            PCPlus4E    <= 0;
            RdE         <= 0;
            Rs1E        <= 0;
            Rs2E        <= 0;
        end
        else if (enable) begin
            RegWriteE   <= RegWriteD;
            ResultSrcE  <= ResultSrcD;
            MemWriteE   <= MemWriteD;
            JumpE       <= JumpD;
            BranchE     <= BranchD;
            ALUControlE <= ALUControlD;
            ALUSrcE     <= ALUSrcD;
            RD1E        <= RD1D;
            RD2E        <= RD2D;
            PCE         <= PCD;
            ImmExtE     <= ImmExtD;
            PCPlus4E    <= PCPlus4D;
            RdE         <= RdD;
            Rs1E        <= Rs1D;
            Rs2E        <= Rs2D;
        end
    end

endmodule