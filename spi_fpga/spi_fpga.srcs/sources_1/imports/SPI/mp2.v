// This is the top-level module for the project!
// Set this as the top module in Xilinx, and place all your modules within this one.
module mp2(led, jb, jc, jd, clk);
output[3:0] led;
input[2:0] jb;
output[0:0] jc;
output[7:0] jd;
input clk;

//jb[0] is MOSI
//jb[1] is SCLK
//jb[2] is CS
//jc[0] is MISO
//spiMemory mem(clk, SCLK, SS, MISO, MOSI, SHIFTREG);
spiMemory mem(clk, jb[1], jb[2], jc[0], jb[0], jd);
endmodule
