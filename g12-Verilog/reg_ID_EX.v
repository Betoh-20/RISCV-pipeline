module reg_ID_EX(
    input        clock,
    input        reset,
    input        enable,

    input        RegWriteD,
    input [1:0]  ResultSrcD,
    input        MemWriteD,
    input        JumpD,
    input        BranchD,
    input [2:0]  ALUControlD,
    input        ALUSrcD,
    input [1:0]  ImmSrcD,

    input [31:0] RD1D,
    input [31:0] RD2D,
    input [31:0] PCD,
    input [4:0]  RdD,
    input [31:0] ImmExtD,
    input [31:0] PCPlus4D,


    output        RegWriteE,
    output [1:0]  ResultSrcE,
    output        MemWriteE,
    output        JumpE,
    output        BranchE,
    output [2:0]  ALUControlE,
    output        ALUSrcE,
    output [1:0]  ImmSrcE,
    output [31:0] RD1E,
    output [31:0] RD2E,
    output [31:0] PCE,
    output [4:0]  RdE,
    output [31:0] ImmExtE,
    output [31:0] PCPlus4E
);

    reg        RegWrite;
    reg [1:0]  ResultSrc;
    reg        MemWrite;
    reg        Jump;
    reg        Branch;
    reg [2:0]  ALUControl;
    reg        ALUSrc;
    reg [1:0]  ImmSrc;
    reg [31:0] RD1;
    reg [31:0] RD2;
    reg [31:0] PC;
    reg [4:0]  Rd;
    reg [31:0] ImmExt;
    reg [31:0] PCPlus4;

    initial begin
        RegWrite <= 0;
        ResultSrc <= 0;
        MemWrite <= 0;
        Jump <= 0;
        Branch <= 0;
        ALUControl <= 0;
        ALUSrc <= 0;
        ImmSrc <= 0;
        RD1 <= 0;
        RD2 <= 0;
        PC <= 0;
        Rd <= 0;
        ImmExt <= 0;
        PCPlus4 <= 0;
    end

    always @(posedge clock or posedge reset) begin
        if (reset) begin
            RegWrite <= 0;
            ResultSrc <= 0;
            MemWrite <= 0;
            Jump <= 0;
            Branch <= 0;
            ALUControl <= 0;
            ALUSrc <= 0;
            ImmSrc <= 0;
            RD1 <= 0;
            RD2 <= 0;
            PC <= 0;
            Rd <= 0;
            ImmExt <= 0;
            PCPlus4 <= 0;
        end else if (enable) begin
            RegWrite <= RegWriteD;
            ResultSrc <= ResultSrcD;
            MemWrite <= MemWriteD;
            Jump <= JumpD;
            Branch <= BranchD;
            ALUControl <= ALUControlD;
            ALUSrc <= ALUSrcD;
            ImmSrc <= ImmSrcD;
            RD1 <= RD1D;
            RD2 <= RD2D;
            PC <= PCD;
            Rd <= RdD;
            ImmExt <= ImmExtD;
            PCPlus4 <= PCPlus4D;
        end
            
    end
    
    assing RegWriteE = RegWrite;
    assing ResultSrcE = ResultSrc;
    assing MemWriteE = MemWrite;
    assing JumpE = Jump;
    assing BranchE = Branch;
    assing ALUControlE = ALUControl;
    assing ALUSrcE = ALUSrc;
    assing ImmSrcE = ImmSrc;
    assing RD1E = RD1;
    assing RD2E = RD2;
    assing PCE = PC;
    assing RdE = Rd;
    assing ImmExtE = ImmExt;
    assing PCPlus4E = PCPlus4;

endmodule