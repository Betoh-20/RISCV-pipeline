module reg_EX_MEM(
    input         clock,
    input         reset,
    input         enable,

    input         RegWriteM,
    input  [1:0]  ResultSrcM,
    input  [31:0] ALUResultM,
    input  [31:0] ReadDataM,
    input  [4:0]  RdM,
    input  [31:0] PCPlus4M,

    output        RegWriteW,
    output [1:0]  ResultSrcW,
    output [31:0] ALUResultW,
    output [31:0] ReadDataW,
    output [4:0]  RdW,
    output [31:0] PCPlus4W,
);


    reg         RegWrite;
    reg  [1:0]  ResultSrc;
    reg  [31:0] ALUResult;
    reg  [31:0] ReadData;
    reg  [4:0]  Rd;
    reg  [31:0] PCPlus4;

    initial begin    
        RegWrite <= 0;
        ResultSrc <= 0;
        MemWrite <= 0;
        ALUResult <= 0;
        ReadData <= 0;
        Rd <= 0;
        PCPlus4 <= 0;
    end

    always @(posedge clock or posedge reset) begin
        if (reset)
            RegWrite <= 0;
            ResultSrc <= 0;
            MemWrite <= 0;
            ALUResult <= 0;
            ReadData <= 0;
            Rd <= 0;
            PCPlus4 <= 0;
        else if (enable)
            RegWrite <= RegWriteM;
            ResultSrc <= ResultSrcM;
            MemWrite <= MemWriteM;
            ALUResult <= ALUResultM;
            ReadData <= ReadDataM;
            Rd <= RdM;
            PCPlus4 <= PCPlus4M;
        end

    assign RegWriteW <= RegWrite;
    assign ResultSrcW <= ResultSrc;
    assign MemWriteW <= MemWrite;
    assign ALUResultW <= ALUResult;
    assign ReadDataW <= ReadData;
    assign RdW <= Rd;
    assign PCPlus4W <= PCPlus4;
endmodule