module reg_ID_EX(
    input         clock,
    input         reset,
    input         enable,

    input  [31:0] PC_ID,
    input  [31:0] RD1_ID,
    input  [31:0] RD2_ID,
    input  [31:0] ImmExt_ID,
    input  [4:0]  RS1_ID, //a1 do regfile = instr[19:15]
    input  [4:0]  RS2_ID, //a2 do regfile = instr[24:20]
    input  [4:0]  RD_ID, //a3 do regfile = instr[11:7]
    input  [2:0]  funct3_ID, //instr[14:12],
    input         funct7b5_ID, //instr[30],
    //sinais de controle
    //EX
    input         ALUSrc_ID,
    input  [1:0]  ALUOp_ID,
    //MEM
    input         Branch_ID,
    //WB
    input         RegWrite_ID,
    input         MemToReg_ID,
    
    output [31:0] PC_EX,
    output [31:0] RD1_EX,
    output [31:0] RD2_EX,
    output [31:0] ImmExt_EX,
    output [4:0]  RS1_EX, //a1 do regfile = instr[19:15]
    output [4:0]  RS2_EX, //a2 do regfile = instr[24:20]
    output [4:0]  RD_EX, //a3 do regfile = instr[11:7]
    output [2:0]  funct3_EX, //instr[14:12],
    output        funct7b5_EX, //instr[30],
    //sinais de controle
    //EX
    output        ALUSrc_EX,
    output [1:0]  ALUOp_EX,
    //MEM
    output        Branch_EX,
    //WB
    output        RegWrite_EX,
    output        MemToReg_EX
);

    reg [31:0] PC;
    reg [31:0] RD1;
    reg [31:0] RD2;
    reg [31:0] ImmExt;
    reg [4:0]  RS1;
    reg [4:0]  RS2;
    reg [4:0]  RD;
    reg [2:0]  funct3;
    reg        funct7b5;
    reg        ALUSrc;
    reg [1:0]  ALUOp;
    reg        Branch;
    reg        RegWrite;
    reg        MemToReg;

    initial begin
        PC <= 0;
        RD1 <= 0;
        RD2 <= 0;
        ImmExt <= 0;
        RS1 <= 0;
        RS2 <= 0;
        RD <= 0;
        funct3 <= 0;
        funct7b5 <= 0;
        ALUSrc <= 0;
        ALUOp <= 0;
        Branch <= 0;
        RegWrite <= 0;
        MemToReg <= 0;
    end

    always @(posedge clock or posedge reset) begin
        if (reset)
            PC <= 0;
            RD1 <= 0;
            RD2 <= 0;
            ImmExt <= 0;
            RS1 <= 0;
            RS2 <= 0;
            RD <= 0;
            funct3 <= 0;
            funct7b5 <= 0;
            ALUSrc <= 0;
            ALUOp <= 0;
            Branch <= 0;
            RegWrite <= 0;
            MemToReg <= 0;
        else if (enable)
            PC <= PC_ID;
            RD1 <= RD1_ID;
            RD2 <= RD2_ID;
            ImmExt <= ImmExt_ID;
            RS1 <= RS1_ID;
            RS2 <= RS2_ID;
            RD <= RD_ID;
            funct3 <= funct3_ID;
            funct7b5 <= funct7b5_ID;
            ALUSrc <= ALUSrc_ID;
            ALUOp <= ALUOp_ID;
            Branch <= Branch_ID;
            RegWrite <= RegWrite_ID;
            MemToReg <= MemToReg_ID;
    end

    assign PC_EX = PC;
    assign RD1_EX = RD1;
    assign RD2_EX = RD2;
    assign ImmExt_EX = ImmExt;
    assign RS1_EX = RS1;
    assign RS2_EX = RS2;
    assign RD_EX = RD;
    assign funct3_EX = funct3;
    assign funct7b5_EX = funct7b5;
    assign ALUSrc_EX = ALUSrc;
    assign ALUOp_EX = ALUOp;
    assign Branch_EX = Branch;
    assign RegWrite_EX = RegWrite;
    assign MemToReg_EX = MemToReg;

endmodule