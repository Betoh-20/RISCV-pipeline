module riscvpipeline (
    input  logic        clk,
    input  logic        reset,
    output logic [31:0] PC,
    input  logic [31:0] Instr,
    output logic        MemWrite,
    output logic [31:0] DataAdr,
    output logic [31:0] WriteData,
    input  logic [31:0] ReadData
);

    // =====================
    // IF stage
    // =====================
    logic [31:0] PCNext, PCPlus4F;

    flopr #(32) pc_reg (clk, reset, PCNext, PC);
    adder pc_plus4 (PC, 32'd4, PCPlus4F);

    assign PCNext = PCPlus4F; // sem branch por enquanto

    // =====================
    // IF/ID
    // =====================
    logic [31:0] InstrD, PCD, PCPlus4D;

    reg_IF_ID if_id (
        .clock(clk),
        .reset(reset),
        .enable(1'b1),
        .InstrF(Instr),
        .PCF(PC),
        .PCPlus4F(PCPlus4F),
        .InstrD(InstrD),
        .PCD(PCD),
        .PCPlus4D(PCPlus4D)
    );

    // =====================
    // ID stage
    // =====================
    logic RegWriteD, MemWriteD, ALUSrcD;
    logic [1:0] ResultSrcD, ImmSrcD;
    logic [2:0] ALUControlD;
    logic [31:0] RD1D, RD2D, ImmExtD;
    logic [4:0] RdD;

    controller ctrl (
        InstrD[6:0], InstrD[14:12], InstrD[30], 1'b0,
        ResultSrcD, MemWriteD, , ALUSrcD,
        RegWriteD, , ImmSrcD, ALUControlD
    );

    regfile rf (
        clk,
        RegWriteW,
        InstrD[19:15],
        InstrD[24:20],
        RdW,
        ResultW,
        RD1D,
        RD2D
    );

    extend ext (InstrD[31:7], ImmSrcD, ImmExtD);
    assign RdD = InstrD[11:7];

    // =====================
    // ID/EX
    // =====================
    logic RegWriteE, MemWriteE, ALUSrcE;
    logic [1:0] ResultSrcE;
    logic [2:0] ALUControlE;
    logic [31:0] RD1E, RD2E, ImmExtE;
    logic [4:0] RdE;

    reg_ID_EX id_ex (
        clk, reset, 1'b1,
        RegWriteD, ResultSrcD, MemWriteD,
        1'b0, 1'b0, ALUControlD, ALUSrcD,
        RD1D, RD2D, PCD, RdD, ImmExtD, PCPlus4D,
        RegWriteE, ResultSrcE, MemWriteE,
        , , ALUControlE, ALUSrcE,
        RD1E, RD2E, , RdE, ImmExtE, 
    );

    // =====================
    // EX stage
    // =====================
    logic [31:0] SrcBE, ALUResultE;

    mux2 #(32) srcb (RD2E, ImmExtE, ALUSrcE, SrcBE);
    alu alu (RD1E, SrcBE, ALUControlE, ALUResultE, );

    // =====================
    // EX/MEM
    // =====================
    logic RegWriteM;
    logic [1:0] ResultSrcM;
    logic [31:0] ALUResultM, WriteDataM;
    logic [4:0] RdM;

    reg_EX_MEM ex_mem (
        clk, reset, 1'b1,
        RegWriteE, ResultSrcE, MemWriteE,
        ALUResultE, RD2E, RdE, 32'b0,
        RegWriteM, ResultSrcM, MemWrite,
        ALUResultM, WriteDataM, RdM,
    );

    assign DataAdr  = ALUResultM;
    assign WriteData = WriteDataM;

    // =====================
    // MEM/WB
    // =====================
    logic RegWriteW;
    logic [1:0] ResultSrcW;
    logic [31:0] ALUResultW, ReadDataW;
    logic [4:0] RdW;

    reg_MEM_WB mem_wb (
        clk, reset, 1'b1, 1'b0,
        RegWriteM, ResultSrcM,
        ALUResultM, ReadData, RdM, 32'b0,
        RegWriteW, ResultSrcW,
        ALUResultW, ReadDataW, RdW,
    );

    // =====================
    // WB
    // =====================
    logic [31:0] ResultW;

    mux3 #(32) wb_mux (
        ALUResultW, ReadDataW, 32'b0,
        ResultSrcW,
        ResultW
    );

endmodule