// Won't work, designed for single-cycle, pipe-less version

module riscvsingle(
    input  wire        clk,
    input  wire        reset,
    input  wire [31:0] Instr,
    input  wire [31:0] ReadData,
    output wire [31:0] PC,
    output wire        MemWrite,
    output wire [31:0] ALUResult,
    output wire [31:0] WriteData
);

  // connecting Controller to Datapath
  wire [31:0] w_InstrD;
  wire        w_RegWriteD;
  wire [1:0]  w_ResultSrcD;
  wire        w_MemWriteD;
  wire        w_JumpD;
  wire        w_BranchD;
  wire [2:0]  w_ALUControlD;
  wire        w_ALUSrcD;
  wire [1:0]  w_ImmSrcD;

  wire       w_PCSrcD;        // <-- was missing in original code (maybe it should be missing actually)

  // connecting Hazard Unit to Datapath
  wire       w_PCSrcE;
  wire       w_ResultSrcE;
  wire       w_RegWriteM;
  wire       w_RegWriteW;
  wire [4:0] w_RdE;
  wire [4:0] w_RdM;
  wire [4:0] w_RdW;
  wire [4:0] w_Rs1D;
  wire [4:0] w_Rs2D;
  wire [4:0] w_Rs1E;
  wire [4:0] w_Rs2E;
  wire [1:0] w_FowardAE;
  wire [1:0] w_FowardBE;
  wire       w_StallF;
  wire       w_StallD;
  wire       w_FlushD;
  wire       w_FlushE;

  controller c(
    .op(w_InstrD[6:0]),
    .funct3(w_InstrD[14:12]),
    .funct7b5(w_InstrD[30]),
    .RegWriteD(w_RegWriteD),
    .ResultSrcD(w_ResultSrcD),
    .MemWriteD(w_MemWriteD),
    .JumpD(w_JumpD),
    .BranchD(w_BranchD),
    .ALUControlD(w_ALUControlD),
    .ALUSrcD(w_ALUSrcD),
    .ImmSrcD(w_ImmSrcD)
  );

  datapath dp(
    .clk(clk),
    .reset(reset),
    .RegWriteD(w_RegWriteD),
    .ResultSrcD(w_ResultSrcD),
    .MemWriteD(w_MemWriteD),
    .JumpD(w_JumpD),
    .BranchD(w_BranchD),
    .ALUControlD(w_ALUControlD),
    .ALUSrcD(w_ALUSrcD),
    .ImmSrcD(w_ImmSrcD),
    .InstrF(Instr),
    .ReadDataM(ReadData),
    .FowardAE(w_FowardAE),
    .FowardBE(w_FowardBE),
    .StallF(w_StallF),
    .StallD(w_StallD),
    .FlushD(w_FlushD),
    .FlushE(w_FlushE),
    .PCF(PC),
    .InstrD(w_InstrD),
    .ALUResultM(ALUResult),
    .WriteDataM(WriteData),
    .MemWriteM(MemWrite),
    .PCSrcE(w_PCSrcE),
    .ResultSrcE(w_ResultSrcE),
    .RegWriteM(w_RegWriteM),
    .RegWriteW(w_RegWriteW),
    .RdE(w_RdE),
    .RdM(w_RdM),
    .RdW(w_RdW),
    .Rs1D(w_Rs1D),
    .Rs2D(w_Rs2D),
    .Rs1E(w_Rs1E),
    .Rs2E(w_Rs2E)
  );

  hazard_unit hu (
    .PCSrcE(w_PCSrcE),
    .ResultSrcE(w_ResultSrcE),
    .RegWriteM(w_RegWriteM),
    .RegWriteW(w_RegWriteW),
    .RdE(w_RdE),
    .RdM(w_RdM),
    .RdW(w_RdW),
    .Rs1D(w_Rs1D),
    .Rs2D(w_Rs2D),
    .Rs1E(w_Rs1E),
    .Rs2E(w_Rs2E),
    .FowardAE(w_FowardAE),
    .FowardBE(w_FowardBE),
    .StallF(w_StallF),
    .StallD(w_StallD),
    .FlushD(w_FlushD),
    .FlushE(w_FlushE)
  );

endmodule
