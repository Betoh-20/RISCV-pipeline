module reg_IF_ID(
    input         clock,
    input         reset,
    input         enable,
    input  [31:0] Instr_IF,
    input  [31:0] PC_IF,

    output [31:0] Instr_ID,
    output [31:0] PC_ID
);

    reg [31:0] Instr;
    reg [31:0] PC;

    initial begin
        Instr <= 0;
        PC <= 0;
    end

    always @(posedge clock or posedge reset) begin
        if (reset)
            Instr <= 0;
            PC <= 0;
        else if (enable)
            Instr <= Instr_IF;
            PC <= PC_IF;
    end

    assign Instr_ID = Instr;
    assign PC_ID = PC;

endmodule