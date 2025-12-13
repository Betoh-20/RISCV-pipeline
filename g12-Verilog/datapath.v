module datapath(
    input         clk, reset,
    
    //from UC
    input         RegWriteD,
    input  [1:0]  ResultSrcD,
    input         MemWriteD,
    input         JumpD,
    input         BranchD,
    input  [2:0]  ALUControlD,
    input         ALUSrcD,
    input  [1:0]  ImmSrcD,
    
    //from PC Logic @EX stage
    input         PCSrcE,
    
    //from IM
    input  [31:0] InstrF,
    
    //from DM
    input  [31:0] ReadDataM,  

    //to PC Logic @EX stage  
    output        ZeroE,
    
    //to IM
    output [31:0] PCF,
    
    //to UC
    output [31:0] InstrD,
    
    //to DM
    output [31:0] ALUResultM, WriteData
);


  wire [31:0] PCNext, PCPlus4, PCTarget;
  wire [31:0] SrcAE, SrcBE;

    assign w_RegWriteD = RegWriteD;
    assign w_ResultSrcD = ResultSrcD;
    assign w_MemWriteD = MemWriteD;
    assign w_JumpD = JumpD;
    assign w_BranchD = BranchD;
    assign w_ALUControlD = ALUControlD;
    assign w_ALUSrcD = ALUSrcD;
    assign w_ImmSrcD = ImmSrcD;

    assign ReadDataM = w_ReadDataM;

    assign InstrD = w_InstrD;
    assign ALUResultM = w_ALUResultM;
    assign WriteDataM = w_WriteDataM;

  // next PC logic
  flopr #(32) pcreg (
    .clk(clk), 
    .reset(reset), 
    .d(PCNext), 
    .q(PCF)
  );

  adder pcadd4 (
    .a(PCF), 
    .b(32'd4), 
    .y(PCPlus4)
  );

  adder pcaddbranch (
    .a(w_PCE), 
    .b(w_ImmExtE), 
    .y(PCTarget)
  );

  mux2 #(32) pcmux (
    .d0(PCPlus4), 
    .d1(PCTarget), 
    .s(PCSrcE), 
    .y(PCNext)
  );

  reg_IF_ID reg_IF_ID (
    .clock(clk),
    .reset(reset),
    .enable(1'b1),
    .InstrF(InstrF),
    .PCF(PCF),
    .PCPlus4F(PCPlus4),
    .InstrD(w_InstrD),
    .PCD(w_PCD),
    .PCPlus4D(w_PCPlus4D)
  );

  wire [31:0] w_InstrD;
  wire [31:0] w_PCD;
  wire [31:0] w_PCPlus4D;

  // register file logic
  regfile rf (
    .clk(clk), 
    .we3(RegWrite),
    .a1(w_InstrD[19:15]), //rs1
    .a2(w_InstrD[24:20]), //rs2
    .a3(w_InstrD[11:7]),  //rd
    .wd3(w_ResultW),      //write data
    .rd1(w_RD1D),       
    .rd2(w_RD2D)
  );

  extend ext (
    .instr(w_InstrD[31:7]), 
    .immsrc(w_ImmSrcD), 
    .immext(w_ImmExtD)
  );

    wire        w_RegWriteD;
    wire [1:0]  w_ResultSrcD;
    wire        w_MemWriteD;
    wire        w_JumpD;
    wire        w_BranchD;
    wire [2:0]  w_ALUControlD;
    wire        w_ALUSrcD;
    wire [1:0]  w_ImmSrcD;

    wire [31:0] w_RD1D;
    wire [31:0] w_RD2D;
    wire [4:0]  w_RdD;
    wire [31:0] w_ImmExtD;


    wire        w_RegWriteE;
    wire [1:0]  w_ResultSrcE;
    wire        w_MemWriteE;
    wire        w_JumpE;
    wire        w_BranchE;
    wire [2:0]  w_ALUControlE;
    wire        w_ALUSrcE;
    wire [31:0] w_RD1E;
    wire [31:0] w_RD2E;
    wire [31:0] w_PCE;
    wire [4:0]  w_RdE;
    wire [31:0] w_ImmExtE;
    wire [31:0] w_PCPlus4E;

    reg_ID_EX reg_ID_EX (
        .clock(clk),
        .reset(reset),
        .enable(1'b1),
        .RegWriteD(w_RegWriteD),
        .ResultSrcD(w_ResultSrcD),
        .MemWriteD(w_MemWriteD),
        .JumpD(w_JumpD),
        .BranchD(w_BranchD),
        .ALUControlD(w_ALUControlD),
        .ALUSrcD(w_ALUSrcD),
        .RD1D(w_RD1D),
        .RD2D(w_RD2D),
        .PCD(w_PCD),
        .RdD(w_RdD),
        .ImmExtD(w_ImmExtD),
        .PCPlus4D(w_PCPlus4D),
        .RegWriteE(w_RegWriteE),
        .ResultSrcE(w_ResultSrcE),
        .MemWriteE(w_MemWriteE),
        .JumpE(w_JumpE),
        .BranchE(w_BranchE),
        .ALUControlE(w_ALUControlE),
        .ALUSrcE(w_ALUSrcE),
        .RD1E(w_RD1E),
        .RD2E(w_RD2E),
        .PCE(w_PCE),
        .RdE(w_RdE),
        .ImmExtE(w_ImmExtE),
        .PCPlus4E(w_PCPlus4E)

    );

    mux3 #(32) writeDataEmux (
       .d0(w_RD2E), 
       .d1(w_ResultW), 
       .d2(w_ALUResultM), 
       .s(), 
       .y(w_WriteDataE)
    );
    
    mux3 #(32) srcaEmux (
        .d0(w_RD1E), 
        .d1(w_ResultW), 
        .d2(w_ALUResultM), 
        .s(), 
        .y(SrcAE)
    );

  // ALU logic
  mux2 #(32) srcbEmux (
    .d0(w_WriteDataE), 
    .d1(w_ImmExtE), 
    .s(w_ALUSrcE), 
    .y(SrcBE)
  );



  alu alu (
    .a(SrcAE), 
    .b(SrcBE), 
    .alucontrol(w_ALUControlE), 
    .result(w_ALUResultE), 
    .zero(ZeroE)
  );

    wire  [31:0] w_ALUResultE;
    wire  [31:0] w_WriteDataE;
    
    wire        w_RegWriteM;
    wire [1:0]  w_ResultSrcM;
    wire        w_MemWriteM;
    wire [31:0] w_ALUResultM;
    wire [31:0] w_WriteDataM;
    wire [4:0]  w_RdM;
    wire [31:0] w_PCPlus4M;

    reg_EX_MEM reg_EX_MEM (
        .RegWriteE(w_RegWriteE),
        .ResultSrcE(w_ResultSrcE),
        .MemWriteE(w_MemWriteE),
        .ALUResultE(w_ALUResultE),
        .WriteDataE(w_WriteDataE),
        .RdE(w_RdE),
        .PCPlus4E(w_PCPlus4E),
        .RegWriteM(w_RegWriteM),
        .ResultSrcM(w_ResultSrcM),
        .MemWriteM(w_MemWriteM),
        .ALUResultM(w_ALUResultM),
        .WriteDataM(w_WriteDataM),
        .RdM(w_RdM),
        .PCPlus4M(w_PCPlus4M)
    );

    wire  [31:0] w_ReadDataM;

    wire        w_RegWriteW;
    wire [1:0]  w_ResultSrcW;
    wire [31:0] w_ALUResultW;
    wire [31:0] w_ReadDataW;
    wire [4:0]  w_RdW;
    wire [31:0] w_PCPlus4W;
    wire [31:0] w_ResultW;

    reg_MEM_WB reg_MEM_WB (
        .RegWriteM(w_RegWriteM),
        .ResultSrcM(w_ResultSrcM),
        .ALUResultM(w_ALUResultM),
        .ReadDataM(w_ReadDataM),
        .RdM(w_RdM),
        .PCPlus4M(w_PCPlus4M),

        .RegWriteW(w_RegWriteW),
        .ResultSrcW(w_ResultSrcW),
        .ALUResultW(w_ALUResultW),
        .ReadDataW(w_ReadDataW),
        .RdW(w_RdW),
        .PCPlus4W(w_PCPlus4W)
    );



  mux3 #(32) resultmux (
    .d0(w_ALUResultW), 
    .d1(w_ReadDataW), 
    .d2(w_PCPlus4W), 
    .s(w_ResultSrcW), 
    .y(w_ResultW)
  );

endmodule
