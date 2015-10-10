//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
//Date        : Sat Oct 10 13:13:39 2015
//Host        : E6430_KF running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    btns_4bits_tri_i,
    leds_4bits_tri_o,
    spi_1_io0_io,
    spi_1_io1_io,
    spi_1_sck_io,
    spi_1_ss1_o,
    spi_1_ss2_o,
    spi_1_ss_io);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input [3:0]btns_4bits_tri_i;
  output [3:0]leds_4bits_tri_o;
  inout spi_1_io0_io;
  inout spi_1_io1_io;
  inout spi_1_sck_io;
  output spi_1_ss1_o;
  output spi_1_ss2_o;
  inout spi_1_ss_io;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [3:0]btns_4bits_tri_i;
  wire [3:0]leds_4bits_tri_o;
  wire spi_1_io0_i;
  wire spi_1_io0_io;
  wire spi_1_io0_o;
  wire spi_1_io0_t;
  wire spi_1_io1_i;
  wire spi_1_io1_io;
  wire spi_1_io1_o;
  wire spi_1_io1_t;
  wire spi_1_sck_i;
  wire spi_1_sck_io;
  wire spi_1_sck_o;
  wire spi_1_sck_t;
  wire spi_1_ss1_o;
  wire spi_1_ss2_o;
  wire spi_1_ss_i;
  wire spi_1_ss_io;
  wire spi_1_ss_o;
  wire spi_1_ss_t;

  design_1 design_1_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .SPI_1_io0_i(spi_1_io0_i),
        .SPI_1_io0_o(spi_1_io0_o),
        .SPI_1_io0_t(spi_1_io0_t),
        .SPI_1_io1_i(spi_1_io1_i),
        .SPI_1_io1_o(spi_1_io1_o),
        .SPI_1_io1_t(spi_1_io1_t),
        .SPI_1_sck_i(spi_1_sck_i),
        .SPI_1_sck_o(spi_1_sck_o),
        .SPI_1_sck_t(spi_1_sck_t),
        .SPI_1_ss1_o(spi_1_ss1_o),
        .SPI_1_ss2_o(spi_1_ss2_o),
        .SPI_1_ss_i(spi_1_ss_i),
        .SPI_1_ss_o(spi_1_ss_o),
        .SPI_1_ss_t(spi_1_ss_t),
        .btns_4bits_tri_i(btns_4bits_tri_i),
        .leds_4bits_tri_o(leds_4bits_tri_o));
  IOBUF spi_1_io0_iobuf
       (.I(spi_1_io0_o),
        .IO(spi_1_io0_io),
        .O(spi_1_io0_i),
        .T(spi_1_io0_t));
  IOBUF spi_1_io1_iobuf
       (.I(spi_1_io1_o),
        .IO(spi_1_io1_io),
        .O(spi_1_io1_i),
        .T(spi_1_io1_t));
  IOBUF spi_1_sck_iobuf
       (.I(spi_1_sck_o),
        .IO(spi_1_sck_io),
        .O(spi_1_sck_i),
        .T(spi_1_sck_t));
  IOBUF spi_1_ss_iobuf
       (.I(spi_1_ss_o),
        .IO(spi_1_ss_io),
        .O(spi_1_ss_i),
        .T(spi_1_ss_t));
endmodule
