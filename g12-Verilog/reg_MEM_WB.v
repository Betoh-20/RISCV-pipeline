module reg_MEM_WB(
    input         clock,
    input         reset,
    input         enable,
    input         flush,

    // WB
    input         RegWriteM,
    input  [1:0]  ResultSrcM,

    // Data
    input  [31:0] ALUResultM,
    input  [31:0] ReadDataM,
    input  [4:0]  RdM,
    input  [31:0] PCPlus4M,

    // WB
    output reg        RegWriteW,
    output reg [1:0]  ResultSrcW,

    // Data
    output reg [31:0] ALUResultW,
    output reg [31:0] ReadDataW,
    output reg [4:0]  RdW,
    output reg [31:0] PCPlus4W
);

    always @(posedge clock or posedge reset) begin
        if (reset || flush) begin
            RegWriteW   <= 0;
            ResultSrcW  <= 0;
            ALUResultW  <= 0;
            ReadDataW   <= 0;
            RdW         <= 0;
            PCPlus4W    <= 0;
        end
        else if (enable) begin
            RegWriteW   <= RegWriteM;
            ResultSrcW  <= ResultSrcM;
            ALUResultW  <= ALUResultM;
            ReadDataW   <= ReadDataM;
            RdW         <= RdM;
            PCPlus4W    <= PCPlus4M;
        end
    end

endmodule