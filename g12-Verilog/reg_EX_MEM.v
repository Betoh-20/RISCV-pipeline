module reg_EX_MEM(
    input         clock,
    input         reset,
    input         enable,
    input         flush,

    // WB
    input         RegWriteE,
    input  [1:0]  ResultSrcE,

    // MEM
    input         MemWriteE,

    // Data
    input  [31:0] ALUResultE,
    input  [31:0] WriteDataE,
    input  [4:0]  RdE,
    input  [31:0] PCPlus4E,
    
    // WB
    output reg        RegWriteM,
    output reg [1:0]  ResultSrcM,

    // MEM
    output reg        MemWriteM,

    // Data
    output reg [31:0] ALUResultM,
    output reg [31:0] WriteDataM,
    output reg [4:0]  RdM,
    output reg [31:0] PCPlus4M
);

    always @(posedge clock or posedge reset) begin
        if (reset || flush) begin
            RegWriteM   <= 0;
            ResultSrcM  <= 0;
            MemWriteM   <= 0;
            ALUResultM  <= 0;
            WriteDataM  <= 0;
            RdM         <= 0;
            PCPlus4M    <= 0;
        end
        else if (enable) begin
            RegWriteM   <= RegWriteE;
            ResultSrcM  <= ResultSrcE;
            MemWriteM   <= MemWriteE;
            ALUResultM  <= ALUResultE;
            WriteDataM  <= WriteDataE;
            RdM         <= RdE;
            PCPlus4M    <= PCPlus4E;
        end
    end

endmodule