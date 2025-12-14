onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/dut/clk
add wave -noupdate /testbench/dut/reset
add wave -noupdate /testbench/dut/WriteData
add wave -noupdate /testbench/dut/DataAdr
add wave -noupdate /testbench/dut/MemWrite
add wave -noupdate -radix hexadecimal /testbench/dut/PC
add wave -noupdate -radix hexadecimal /testbench/dut/Instr
add wave -noupdate -radix hexadecimal /testbench/dut/ReadData
add wave -noupdate -group imem -radix hexadecimal /testbench/dut/imem/a
add wave -noupdate -group imem -radix hexadecimal -childformat {{{/testbench/dut/imem/rd[31]} -radix hexadecimal} {{/testbench/dut/imem/rd[30]} -radix hexadecimal} {{/testbench/dut/imem/rd[29]} -radix hexadecimal} {{/testbench/dut/imem/rd[28]} -radix hexadecimal} {{/testbench/dut/imem/rd[27]} -radix hexadecimal} {{/testbench/dut/imem/rd[26]} -radix hexadecimal} {{/testbench/dut/imem/rd[25]} -radix hexadecimal} {{/testbench/dut/imem/rd[24]} -radix hexadecimal} {{/testbench/dut/imem/rd[23]} -radix hexadecimal} {{/testbench/dut/imem/rd[22]} -radix hexadecimal} {{/testbench/dut/imem/rd[21]} -radix hexadecimal} {{/testbench/dut/imem/rd[20]} -radix hexadecimal} {{/testbench/dut/imem/rd[19]} -radix hexadecimal} {{/testbench/dut/imem/rd[18]} -radix hexadecimal} {{/testbench/dut/imem/rd[17]} -radix hexadecimal} {{/testbench/dut/imem/rd[16]} -radix hexadecimal} {{/testbench/dut/imem/rd[15]} -radix hexadecimal} {{/testbench/dut/imem/rd[14]} -radix hexadecimal} {{/testbench/dut/imem/rd[13]} -radix hexadecimal} {{/testbench/dut/imem/rd[12]} -radix hexadecimal} {{/testbench/dut/imem/rd[11]} -radix hexadecimal} {{/testbench/dut/imem/rd[10]} -radix hexadecimal} {{/testbench/dut/imem/rd[9]} -radix hexadecimal} {{/testbench/dut/imem/rd[8]} -radix hexadecimal} {{/testbench/dut/imem/rd[7]} -radix hexadecimal} {{/testbench/dut/imem/rd[6]} -radix hexadecimal} {{/testbench/dut/imem/rd[5]} -radix hexadecimal} {{/testbench/dut/imem/rd[4]} -radix hexadecimal} {{/testbench/dut/imem/rd[3]} -radix hexadecimal} {{/testbench/dut/imem/rd[2]} -radix hexadecimal} {{/testbench/dut/imem/rd[1]} -radix hexadecimal} {{/testbench/dut/imem/rd[0]} -radix hexadecimal}} -subitemconfig {{/testbench/dut/imem/rd[31]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[30]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[29]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[28]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[27]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[26]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[25]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[24]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[23]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[22]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[21]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[20]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[19]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[18]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[17]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[16]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[15]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[14]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[13]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[12]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[11]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[10]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[9]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[8]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[7]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[6]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[5]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[4]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[3]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[2]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[1]} {-height 15 -radix hexadecimal} {/testbench/dut/imem/rd[0]} {-height 15 -radix hexadecimal}} /testbench/dut/imem/rd
add wave -noupdate -group imem -radix hexadecimal /testbench/dut/imem/RAM
add wave -noupdate -group pcreg /testbench/dut/rvsingle/dp/pcreg/clk
add wave -noupdate -group pcreg /testbench/dut/rvsingle/dp/pcreg/reset
add wave -noupdate -group pcreg /testbench/dut/rvsingle/dp/pcreg/enable
add wave -noupdate -group pcreg -radix hexadecimal /testbench/dut/rvsingle/dp/pcreg/d
add wave -noupdate -group pcreg -radix hexadecimal /testbench/dut/rvsingle/dp/pcreg/q
add wave -noupdate -radix decimal -childformat {{{/testbench/dut/rvsingle/dp/rf/rf[0]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[1]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[2]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[3]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[4]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[5]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[6]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[7]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[8]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[9]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[10]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[11]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[12]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[13]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[14]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[15]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[16]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[17]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[18]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[19]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[20]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[21]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[22]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[23]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[24]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[25]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[26]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[27]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[28]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[29]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[30]} -radix decimal} {{/testbench/dut/rvsingle/dp/rf/rf[31]} -radix decimal}} -expand -subitemconfig {{/testbench/dut/rvsingle/dp/rf/rf[0]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[1]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[2]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[3]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[4]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[5]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[6]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[7]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[8]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[9]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[10]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[11]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[12]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[13]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[14]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[15]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[16]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[17]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[18]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[19]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[20]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[21]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[22]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[23]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[24]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[25]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[26]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[27]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[28]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[29]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[30]} {-radix decimal} {/testbench/dut/rvsingle/dp/rf/rf[31]} {-radix decimal}} /testbench/dut/rvsingle/dp/rf/rf
add wave -noupdate -group reg_IF_ID /testbench/dut/rvsingle/dp/reg_IF_ID/enable
add wave -noupdate -group reg_IF_ID /testbench/dut/rvsingle/dp/reg_IF_ID/flush
add wave -noupdate -group reg_IF_ID -radix hexadecimal -childformat {{{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[31]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[30]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[29]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[28]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[27]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[26]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[25]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[24]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[23]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[22]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[21]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[20]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[19]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[18]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[17]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[16]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[15]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[14]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[13]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[12]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[11]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[10]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[9]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[8]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[7]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[6]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[5]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[4]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[3]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[2]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[1]} -radix binary} {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[0]} -radix binary}} -subitemconfig {{/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[31]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[30]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[29]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[28]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[27]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[26]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[25]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[24]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[23]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[22]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[21]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[20]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[19]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[18]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[17]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[16]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[15]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[14]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[13]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[12]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[11]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[10]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[9]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[8]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[7]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[6]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[5]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[4]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[3]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[2]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[1]} {-height 15 -radix binary} {/testbench/dut/rvsingle/dp/reg_IF_ID/InstrF[0]} {-height 15 -radix binary}} /testbench/dut/rvsingle/dp/reg_IF_ID/InstrF
add wave -noupdate -group reg_IF_ID -radix hexadecimal /testbench/dut/rvsingle/dp/reg_IF_ID/PCF
add wave -noupdate -group reg_IF_ID -radix hexadecimal /testbench/dut/rvsingle/dp/reg_IF_ID/PCPlus4F
add wave -noupdate -group reg_IF_ID -radix hexadecimal /testbench/dut/rvsingle/dp/reg_IF_ID/InstrD
add wave -noupdate -group reg_IF_ID -radix hexadecimal /testbench/dut/rvsingle/dp/reg_IF_ID/PCD
add wave -noupdate -group reg_IF_ID -radix hexadecimal /testbench/dut/rvsingle/dp/reg_IF_ID/PCPlus4D
add wave -noupdate -group reg_ID_EX /testbench/dut/rvsingle/dp/reg_ID_EX/enable
add wave -noupdate -group reg_ID_EX /testbench/dut/rvsingle/dp/reg_ID_EX/flush
add wave -noupdate -group reg_ID_EX /testbench/dut/rvsingle/dp/reg_ID_EX/RegWriteD
add wave -noupdate -group reg_ID_EX /testbench/dut/rvsingle/dp/reg_ID_EX/ResultSrcD
add wave -noupdate -group reg_ID_EX /testbench/dut/rvsingle/dp/reg_ID_EX/MemWriteD
add wave -noupdate -group reg_ID_EX /testbench/dut/rvsingle/dp/reg_ID_EX/JumpD
add wave -noupdate -group reg_ID_EX /testbench/dut/rvsingle/dp/reg_ID_EX/BranchD
add wave -noupdate -group reg_ID_EX /testbench/dut/rvsingle/dp/reg_ID_EX/ALUControlD
add wave -noupdate -group reg_ID_EX /testbench/dut/rvsingle/dp/reg_ID_EX/ALUSrcD
add wave -noupdate -group reg_ID_EX -radix decimal /testbench/dut/rvsingle/dp/reg_ID_EX/RD1D
add wave -noupdate -group reg_ID_EX -radix decimal /testbench/dut/rvsingle/dp/reg_ID_EX/RD2D
add wave -noupdate -group reg_ID_EX -radix decimal /testbench/dut/rvsingle/dp/reg_ID_EX/PCD
add wave -noupdate -group reg_ID_EX -radix decimal /testbench/dut/rvsingle/dp/reg_ID_EX/ImmExtD
add wave -noupdate -group reg_ID_EX -radix decimal /testbench/dut/rvsingle/dp/reg_ID_EX/PCPlus4D
add wave -noupdate -group reg_ID_EX -radix unsigned /testbench/dut/rvsingle/dp/reg_ID_EX/RdD
add wave -noupdate -group reg_ID_EX -radix unsigned /testbench/dut/rvsingle/dp/reg_ID_EX/Rs1D
add wave -noupdate -group reg_ID_EX -radix unsigned /testbench/dut/rvsingle/dp/reg_ID_EX/Rs2D
add wave -noupdate -group reg_ID_EX -divider ID/EX
add wave -noupdate -group reg_ID_EX /testbench/dut/rvsingle/dp/reg_ID_EX/RegWriteE
add wave -noupdate -group reg_ID_EX /testbench/dut/rvsingle/dp/reg_ID_EX/ResultSrcE
add wave -noupdate -group reg_ID_EX /testbench/dut/rvsingle/dp/reg_ID_EX/MemWriteE
add wave -noupdate -group reg_ID_EX /testbench/dut/rvsingle/dp/reg_ID_EX/JumpE
add wave -noupdate -group reg_ID_EX /testbench/dut/rvsingle/dp/reg_ID_EX/BranchE
add wave -noupdate -group reg_ID_EX /testbench/dut/rvsingle/dp/reg_ID_EX/ALUControlE
add wave -noupdate -group reg_ID_EX /testbench/dut/rvsingle/dp/reg_ID_EX/ALUSrcE
add wave -noupdate -group reg_ID_EX -radix decimal /testbench/dut/rvsingle/dp/reg_ID_EX/RD1E
add wave -noupdate -group reg_ID_EX -radix decimal /testbench/dut/rvsingle/dp/reg_ID_EX/RD2E
add wave -noupdate -group reg_ID_EX -radix decimal /testbench/dut/rvsingle/dp/reg_ID_EX/PCE
add wave -noupdate -group reg_ID_EX -radix decimal /testbench/dut/rvsingle/dp/reg_ID_EX/ImmExtE
add wave -noupdate -group reg_ID_EX -radix decimal /testbench/dut/rvsingle/dp/reg_ID_EX/PCPlus4E
add wave -noupdate -group reg_ID_EX -radix unsigned /testbench/dut/rvsingle/dp/reg_ID_EX/RdE
add wave -noupdate -group reg_ID_EX -radix unsigned /testbench/dut/rvsingle/dp/reg_ID_EX/Rs1E
add wave -noupdate -group reg_ID_EX -radix unsigned /testbench/dut/rvsingle/dp/reg_ID_EX/Rs2E
add wave -noupdate -group reg_EX_MEM /testbench/dut/rvsingle/dp/reg_EX_MEM/clock
add wave -noupdate -group reg_EX_MEM /testbench/dut/rvsingle/dp/reg_EX_MEM/reset
add wave -noupdate -group reg_EX_MEM /testbench/dut/rvsingle/dp/reg_EX_MEM/enable
add wave -noupdate -group reg_EX_MEM /testbench/dut/rvsingle/dp/reg_EX_MEM/flush
add wave -noupdate -group reg_EX_MEM /testbench/dut/rvsingle/dp/reg_EX_MEM/RegWriteE
add wave -noupdate -group reg_EX_MEM /testbench/dut/rvsingle/dp/reg_EX_MEM/ResultSrcE
add wave -noupdate -group reg_EX_MEM /testbench/dut/rvsingle/dp/reg_EX_MEM/MemWriteE
add wave -noupdate -group reg_EX_MEM -radix hexadecimal /testbench/dut/rvsingle/dp/reg_EX_MEM/ALUResultE
add wave -noupdate -group reg_EX_MEM -radix hexadecimal /testbench/dut/rvsingle/dp/reg_EX_MEM/WriteDataE
add wave -noupdate -group reg_EX_MEM -radix hexadecimal /testbench/dut/rvsingle/dp/reg_EX_MEM/RdE
add wave -noupdate -group reg_EX_MEM -radix hexadecimal /testbench/dut/rvsingle/dp/reg_EX_MEM/PCPlus4E
add wave -noupdate -group reg_EX_MEM -radix hexadecimal /testbench/dut/rvsingle/dp/reg_EX_MEM/RegWriteM
add wave -noupdate -group reg_EX_MEM -radix hexadecimal /testbench/dut/rvsingle/dp/reg_EX_MEM/ResultSrcM
add wave -noupdate -group reg_EX_MEM -radix hexadecimal /testbench/dut/rvsingle/dp/reg_EX_MEM/MemWriteM
add wave -noupdate -group reg_EX_MEM -radix hexadecimal /testbench/dut/rvsingle/dp/reg_EX_MEM/ALUResultM
add wave -noupdate -group reg_EX_MEM -radix hexadecimal /testbench/dut/rvsingle/dp/reg_EX_MEM/WriteDataM
add wave -noupdate -group reg_EX_MEM -radix hexadecimal /testbench/dut/rvsingle/dp/reg_EX_MEM/RdM
add wave -noupdate -group reg_EX_MEM -radix hexadecimal /testbench/dut/rvsingle/dp/reg_EX_MEM/PCPlus4M
add wave -noupdate -group reg_MEM_WB /testbench/dut/rvsingle/dp/reg_MEM_WB/clock
add wave -noupdate -group reg_MEM_WB /testbench/dut/rvsingle/dp/reg_MEM_WB/reset
add wave -noupdate -group reg_MEM_WB /testbench/dut/rvsingle/dp/reg_MEM_WB/enable
add wave -noupdate -group reg_MEM_WB /testbench/dut/rvsingle/dp/reg_MEM_WB/flush
add wave -noupdate -group reg_MEM_WB /testbench/dut/rvsingle/dp/reg_MEM_WB/RegWriteM
add wave -noupdate -group reg_MEM_WB /testbench/dut/rvsingle/dp/reg_MEM_WB/ResultSrcM
add wave -noupdate -group reg_MEM_WB -radix hexadecimal /testbench/dut/rvsingle/dp/reg_MEM_WB/ALUResultM
add wave -noupdate -group reg_MEM_WB -radix hexadecimal /testbench/dut/rvsingle/dp/reg_MEM_WB/ReadDataM
add wave -noupdate -group reg_MEM_WB -radix hexadecimal /testbench/dut/rvsingle/dp/reg_MEM_WB/RdM
add wave -noupdate -group reg_MEM_WB -radix hexadecimal /testbench/dut/rvsingle/dp/reg_MEM_WB/PCPlus4M
add wave -noupdate -group reg_MEM_WB -radix hexadecimal /testbench/dut/rvsingle/dp/reg_MEM_WB/RegWriteW
add wave -noupdate -group reg_MEM_WB -radix hexadecimal /testbench/dut/rvsingle/dp/reg_MEM_WB/ResultSrcW
add wave -noupdate -group reg_MEM_WB -radix hexadecimal /testbench/dut/rvsingle/dp/reg_MEM_WB/ALUResultW
add wave -noupdate -group reg_MEM_WB -radix hexadecimal /testbench/dut/rvsingle/dp/reg_MEM_WB/ReadDataW
add wave -noupdate -group reg_MEM_WB -radix hexadecimal /testbench/dut/rvsingle/dp/reg_MEM_WB/RdW
add wave -noupdate -group reg_MEM_WB -radix hexadecimal /testbench/dut/rvsingle/dp/reg_MEM_WB/PCPlus4W
add wave -noupdate -group {unidade de controle} /testbench/dut/rvsingle/c/op
add wave -noupdate -group {unidade de controle} /testbench/dut/rvsingle/c/funct3
add wave -noupdate -group {unidade de controle} /testbench/dut/rvsingle/c/funct7b5
add wave -noupdate -group {unidade de controle} /testbench/dut/rvsingle/c/RegWriteD
add wave -noupdate -group {unidade de controle} /testbench/dut/rvsingle/c/ResultSrcD
add wave -noupdate -group {unidade de controle} /testbench/dut/rvsingle/c/MemWriteD
add wave -noupdate -group {unidade de controle} /testbench/dut/rvsingle/c/JumpD
add wave -noupdate -group {unidade de controle} /testbench/dut/rvsingle/c/BranchD
add wave -noupdate -group {unidade de controle} /testbench/dut/rvsingle/c/ALUControlD
add wave -noupdate -group {unidade de controle} /testbench/dut/rvsingle/c/ALUSrcD
add wave -noupdate -group {unidade de controle} /testbench/dut/rvsingle/c/ImmSrcD
add wave -noupdate -group {unidade de controle} /testbench/dut/rvsingle/c/ALUOp
add wave -noupdate -group {unidade de controle} /testbench/dut/rvsingle/c/Branch
add wave -noupdate -expand -group {Hazard Unit} /testbench/dut/rvsingle/hu/PCSrcE
add wave -noupdate -expand -group {Hazard Unit} /testbench/dut/rvsingle/hu/ResultSrcE
add wave -noupdate -expand -group {Hazard Unit} /testbench/dut/rvsingle/hu/RegWriteM
add wave -noupdate -expand -group {Hazard Unit} /testbench/dut/rvsingle/hu/RegWriteW
add wave -noupdate -expand -group {Hazard Unit} -radix hexadecimal /testbench/dut/rvsingle/hu/RdE
add wave -noupdate -expand -group {Hazard Unit} -radix hexadecimal /testbench/dut/rvsingle/hu/RdM
add wave -noupdate -expand -group {Hazard Unit} -radix hexadecimal /testbench/dut/rvsingle/hu/RdW
add wave -noupdate -expand -group {Hazard Unit} -radix hexadecimal /testbench/dut/rvsingle/hu/Rs1D
add wave -noupdate -expand -group {Hazard Unit} -radix hexadecimal /testbench/dut/rvsingle/hu/Rs2D
add wave -noupdate -expand -group {Hazard Unit} -radix hexadecimal /testbench/dut/rvsingle/hu/Rs1E
add wave -noupdate -expand -group {Hazard Unit} -radix hexadecimal /testbench/dut/rvsingle/hu/Rs2E
add wave -noupdate -expand -group {Hazard Unit} /testbench/dut/rvsingle/hu/FowardAE
add wave -noupdate -expand -group {Hazard Unit} /testbench/dut/rvsingle/hu/FowardBE
add wave -noupdate -expand -group {Hazard Unit} /testbench/dut/rvsingle/hu/StallF
add wave -noupdate -expand -group {Hazard Unit} /testbench/dut/rvsingle/hu/StallD
add wave -noupdate -expand -group {Hazard Unit} /testbench/dut/rvsingle/hu/FlushD
add wave -noupdate -expand -group {Hazard Unit} /testbench/dut/rvsingle/hu/FlushE
add wave -noupdate -expand -group {Hazard Unit} /testbench/dut/rvsingle/hu/lwStall
add wave -noupdate /testbench/dut/rvsingle/dp/enable_pcreg
add wave -noupdate /testbench/dut/rvsingle/dp/enable_reg_IF_ID
add wave -noupdate -expand -group ALU -radix decimal /testbench/dut/rvsingle/dp/alu/a
add wave -noupdate -expand -group ALU -radix decimal /testbench/dut/rvsingle/dp/alu/b
add wave -noupdate -expand -group ALU /testbench/dut/rvsingle/dp/alu/alucontrol
add wave -noupdate -expand -group ALU -radix unsigned /testbench/dut/rvsingle/dp/alu/result
add wave -noupdate -expand -group ALU /testbench/dut/rvsingle/dp/alu/zero
add wave -noupdate -group Regfile /testbench/dut/rvsingle/dp/rf/we3
add wave -noupdate -group Regfile -radix unsigned /testbench/dut/rvsingle/dp/rf/a1
add wave -noupdate -group Regfile -radix unsigned /testbench/dut/rvsingle/dp/rf/a2
add wave -noupdate -group Regfile -radix unsigned /testbench/dut/rvsingle/dp/rf/a3
add wave -noupdate -group Regfile -radix hexadecimal /testbench/dut/rvsingle/dp/rf/wd3
add wave -noupdate -group Regfile -radix hexadecimal /testbench/dut/rvsingle/dp/rf/rd1
add wave -noupdate -group Regfile -radix hexadecimal /testbench/dut/rvsingle/dp/rf/rd2
add wave -noupdate -group Regfile -radix hexadecimal -childformat {{{/testbench/dut/rvsingle/dp/rf/rf[0]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[1]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[2]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[3]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[4]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[5]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[6]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[7]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[8]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[9]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[10]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[11]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[12]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[13]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[14]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[15]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[16]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[17]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[18]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[19]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[20]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[21]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[22]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[23]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[24]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[25]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[26]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[27]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[28]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[29]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[30]} -radix unsigned} {{/testbench/dut/rvsingle/dp/rf/rf[31]} -radix unsigned}} -expand -subitemconfig {{/testbench/dut/rvsingle/dp/rf/rf[0]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[1]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[2]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[3]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[4]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[5]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[6]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[7]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[8]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[9]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[10]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[11]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[12]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[13]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[14]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[15]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[16]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[17]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[18]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[19]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[20]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[21]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[22]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[23]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[24]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[25]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[26]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[27]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[28]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[29]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[30]} {-height 15 -radix unsigned} {/testbench/dut/rvsingle/dp/rf/rf[31]} {-height 15 -radix unsigned}} /testbench/dut/rvsingle/dp/rf/rf
add wave -noupdate -expand -group SrcAEmux -radix decimal /testbench/dut/rvsingle/dp/srcaEmux/d0
add wave -noupdate -expand -group SrcAEmux -radix decimal /testbench/dut/rvsingle/dp/srcaEmux/d1
add wave -noupdate -expand -group SrcAEmux -radix decimal /testbench/dut/rvsingle/dp/srcaEmux/d2
add wave -noupdate -expand -group SrcAEmux -radix binary /testbench/dut/rvsingle/dp/srcaEmux/s
add wave -noupdate -expand -group SrcAEmux -radix decimal /testbench/dut/rvsingle/dp/srcaEmux/y
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{hCursor 1} {70 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 256
configure wave -valuecolwidth 214
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ms
update
WaveRestoreZoom {13 ps} {207 ps}
