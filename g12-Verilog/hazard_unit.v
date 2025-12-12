module hazard_unit(
    input RegWriteM,
    input RegWriteW,
    input [4:0] RdM,
    input [4:0] RdW,
    input [4:0] Rs1E,
    input [4:0] Rs2E;
    output [1:0] FowardAE,
    output [1:0] FowardBE
    );

assign FowardAE = 
        (RegWriteM && (Rs1E != 5'd0) && (Rs1E == RdM)) ? 2'b10 : 
        (RegWriteW && (Rs1E != 5'd0) && (Rs1E == RdW)) ? 2'b01 : 2'b00;
    
    assign FowardBE = 
        (RegWriteM && (Rs2E != 5'd0) && (Rs2E == RdM)) ? 2'b10 : 
        (RegWriteW && (Rs2E != 5'd0) && (Rs2E == RdW)) ? 2'b01 : 2'b00;
            
endmodule