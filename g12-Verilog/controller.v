module controller(
    input  wire [6:0] op,
    input  wire [2:0] funct3,
    input  wire       funct7b5,
    input  wire       Zero,
    output wire       RegWriteD,
    output wire [1:0] ResultSrcD,
    output wire       MemWriteD,
    output wire       JumpD,
    output wire       BranchD,
    output wire [2:0] ALUControlD,
    output wire       ALUSrcD,
    output wire [1:0] ImmSrcD
);

  wire [1:0] ALUOp;
  wire       Branch;

  maindec md(
      .op(op),
      .ResultSrc(ResultSrcD),
      .MemWrite(MemWriteD),
      .Branch(BranchD),
      .ALUSrc(ALUSrcD),
      .RegWrite(RegWriteD),
      .Jump(JumpD),
      .ImmSrc(ImmSrcD),
      .ALUOp(ALUOp)
  );

  aludec ad(
      .opb5(op[5]),
      .funct3(funct3),
      .funct7b5(funct7b5),
      .ALUOp(ALUOp),
      .ALUControl(ALUControlD)
  );

//   assign PCSrc = (Branch & Zero) | Jump;

endmodule
