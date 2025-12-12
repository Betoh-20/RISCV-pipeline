module reg_EX_MEM(
    input         clock,
    input         reset,
    input         enable,

    input         RegWriteE,
    input  [1:0]  ResultSrcE,
    input         MemWriteE,
    input  [31:0] ALUResultE,
    input  [31:0] WriteDataE,
    input  [4:0]  RdE,
    input  [31:0] PCPlus4E,
    
    output        RegWriteM,
    output [1:0]  ResultSrcM,
    output        MemWriteM,
    output [31:0] ALUResultM,
    output [31:0] WriteDataM,
    output [4:0]  RdM,
    output [31:0] PCPlus4M
);

    reg         RegWrite;
    reg  [1:0]  ResultSrc;
    reg         MemWrite;
    reg  [31:0] ALUResult;
    reg  [31:0] WriteData;
    reg  [4:0]  Rd;
    reg  [31:0] PCPlus4;

    initial begin    
        RegWrite <= 0;
        ResultSrc <= 0;
        MemWrite <= 0;
        ALUResult <= 0;
        WriteData <= 0;
        Rd <= 0;
        PCPlus4 <= 0;
    end

    always @(posedge clock or posedge reset) begin
        if (reset)
            RegWrite <= 0;
            ResultSrc <= 0;
            MemWrite <= 0;
            ALUResult <= 0;
            WriteData <= 0;
            Rd <= 0;
            PCPlus4 <= 0;
        else if (enable)
            RegWrite <= RegWriteE;
            ResultSrc <= ResultSrcE;
            MemWrite <= MemWriteE;
            ALUResult <= ALUResultE;
            WriteData <= WriteDataE;
            Rd <= RdE;
            PCPlus4 <= PCPlus4E;
        end

    assign RegWriteM <= RegWrite;
    assign ResultSrcM <= ResultSrc;
    assign MemWriteM <= MemWrite;
    assign ALUResultM <= ALUResult;
    assign WriteDataM <= WriteData;
    assign RdM <= Rd;
    assign PCPlus4M <= PCPlus4;
endmodule