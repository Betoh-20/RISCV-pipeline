module hazard_unit(
    input PCSrcE,
    input ResultSrcE,
    input RegWriteM,
    input RegWriteW,
    input [4:0] RdE,
    input [4:0] RdM,
    input [4:0] RdW,
    input [4:0] Rs1D,
    input [4:0] Rs2D,
    input [4:0] Rs1E,
    input [4:0] Rs2E,
    output StallF,
    output StallD,
    output FlushD,
    output FlushE,
    output [1:0] FowardAE,
    output [1:0] FowardBE
    );

    wire lwStall;

    //fowarding for data hazards
    assign FowardAE = 
        (RegWriteM && (Rs1E != 5'd0) && (Rs1E == RdM)) ? 2'b10 : 
        (RegWriteW && (Rs1E != 5'd0) && (Rs1E == RdW)) ? 2'b01 : 2'b00;
    
    assign FowardBE = 
        (RegWriteM && (Rs2E != 5'd0) && (Rs2E == RdM)) ? 2'b10 : 
        (RegWriteW && (Rs2E != 5'd0) && (Rs2E == RdW)) ? 2'b01 : 2'b00;

    //stalls for load hazards
    assign lwStall = (ResultSrcE && ((Rs1D == RdE) || (Rs2D == RdE)));

    assign {StallF, StallD} = {2{lwStall}};

    //control hazards
    assign FlushD = PCSrcE;
    assign FlushE = (lwStall || PCSrcE);

endmodule