// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Mar 14 22:46:46 2022
// Host        : DESKTOP-9ED2F6A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [13:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;

  wire [13:0]addra;
  wire clka;
  wire [11:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [11:0]NLW_U0_doutb_UNCONNECTED;
  wire [13:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "14" *) 
  (* C_ADDRB_WIDTH = "14" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "2" *) 
  (* C_COUNT_36K_BRAM = "3" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.56159 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_1.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "10000" *) 
  (* C_READ_DEPTH_B = "10000" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "12" *) 
  (* C_READ_WIDTH_B = "12" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "10000" *) 
  (* C_WRITE_DEPTH_B = "10000" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[11:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[13:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[13:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[11:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec
   (ena_array,
    addra);
  output [0:0]ena_array;
  input [2:0]addra;

  wire [2:0]addra;
  wire [0:0]ena_array;

  LUT3 #(
    .INIT(8'h04)) 
    ENOUT
       (.I0(addra[0]),
        .I1(addra[2]),
        .I2(addra[1]),
        .O(ena_array));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra);
  output [11:0]douta;
  input clka;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [11:0]douta;
  wire [4:4]ena_array;
  wire ram_douta;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[1].ram.r_n_1 ;
  wire \ramloop[1].ram.r_n_2 ;
  wire \ramloop[1].ram.r_n_3 ;
  wire \ramloop[1].ram.r_n_4 ;
  wire \ramloop[1].ram.r_n_5 ;
  wire \ramloop[1].ram.r_n_6 ;
  wire \ramloop[1].ram.r_n_7 ;
  wire \ramloop[1].ram.r_n_8 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_1 ;
  wire \ramloop[2].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_3 ;
  wire \ramloop[2].ram.r_n_4 ;
  wire \ramloop[2].ram.r_n_5 ;
  wire \ramloop[2].ram.r_n_6 ;
  wire \ramloop[2].ram.r_n_7 ;
  wire \ramloop[2].ram.r_n_8 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[3].ram.r_n_2 ;
  wire \ramloop[3].ram.r_n_3 ;
  wire \ramloop[3].ram.r_n_4 ;
  wire \ramloop[3].ram.r_n_5 ;
  wire \ramloop[3].ram.r_n_6 ;
  wire \ramloop[3].ram.r_n_7 ;
  wire \ramloop[3].ram.r_n_8 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[13:11]),
        .ena_array(ena_array));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux \has_mux_a.A 
       (.DOADO({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 }),
        .DOPADOP(\ramloop[3].ram.r_n_8 ),
        .addra(addra[13:11]),
        .clka(clka),
        .douta(douta),
        .\no_softecc_gmuxr.ce_pri.dout_i_reg[0]_0 (ram_douta),
        .\no_softecc_gmuxr.ce_pri.dout_i_reg[11]_0 ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 }),
        .\no_softecc_gmuxr.ce_pri.dout_i_reg[8]_0 ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .\no_softecc_gmuxr.ce_pri.dout_i_reg[8]_1 ({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .\no_softecc_gmuxr.ce_pri.dout_i_reg[9]_0 (\ramloop[2].ram.r_n_8 ),
        .\no_softecc_gmuxr.ce_pri.dout_i_reg[9]_1 (\ramloop[1].ram.r_n_8 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram (ram_douta),
        .addra(addra),
        .clka(clka));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[1].ram.r_n_8 ),
        .addra(addra),
        .clka(clka));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[2].ram.r_n_8 ),
        .addra(addra),
        .clka(clka));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.DOADO({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 }),
        .DOPADOP(\ramloop[3].ram.r_n_8 ),
        .addra(addra[10:0]),
        .clka(clka),
        .ena_array(ena_array));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 }),
        .addra(addra),
        .clka(clka));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux
   (douta,
    addra,
    clka,
    DOADO,
    \no_softecc_gmuxr.ce_pri.dout_i_reg[8]_0 ,
    \no_softecc_gmuxr.ce_pri.dout_i_reg[8]_1 ,
    DOPADOP,
    \no_softecc_gmuxr.ce_pri.dout_i_reg[9]_0 ,
    \no_softecc_gmuxr.ce_pri.dout_i_reg[9]_1 ,
    \no_softecc_gmuxr.ce_pri.dout_i_reg[11]_0 ,
    \no_softecc_gmuxr.ce_pri.dout_i_reg[0]_0 );
  output [11:0]douta;
  input [2:0]addra;
  input clka;
  input [7:0]DOADO;
  input [7:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[8]_0 ;
  input [7:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[8]_1 ;
  input [0:0]DOPADOP;
  input [0:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[9]_0 ;
  input [0:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[9]_1 ;
  input [1:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[11]_0 ;
  input [0:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[0]_0 ;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [2:0]addra;
  wire clka;
  wire [9:1]\din_2D[7]_0 ;
  wire [11:0]douta;
  wire [0:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[0]_0 ;
  wire [1:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[11]_0 ;
  wire [7:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[8]_0 ;
  wire [7:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[8]_1 ;
  wire [0:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[9]_0 ;
  wire [0:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[9]_1 ;
  wire [2:0]sel_pipe;

  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \no_softecc_gmuxr.ce_pri.dout_i[1]_i_1 
       (.I0(sel_pipe[0]),
        .I1(DOADO[0]),
        .I2(sel_pipe[2]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[8]_0 [0]),
        .I4(sel_pipe[1]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i_reg[8]_1 [0]),
        .O(\din_2D[7]_0 [1]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \no_softecc_gmuxr.ce_pri.dout_i[2]_i_1 
       (.I0(sel_pipe[0]),
        .I1(DOADO[1]),
        .I2(sel_pipe[2]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[8]_0 [1]),
        .I4(sel_pipe[1]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i_reg[8]_1 [1]),
        .O(\din_2D[7]_0 [2]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \no_softecc_gmuxr.ce_pri.dout_i[3]_i_1 
       (.I0(sel_pipe[0]),
        .I1(DOADO[2]),
        .I2(sel_pipe[2]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[8]_0 [2]),
        .I4(sel_pipe[1]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i_reg[8]_1 [2]),
        .O(\din_2D[7]_0 [3]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \no_softecc_gmuxr.ce_pri.dout_i[4]_i_1 
       (.I0(sel_pipe[0]),
        .I1(DOADO[3]),
        .I2(sel_pipe[2]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[8]_0 [3]),
        .I4(sel_pipe[1]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i_reg[8]_1 [3]),
        .O(\din_2D[7]_0 [4]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \no_softecc_gmuxr.ce_pri.dout_i[5]_i_1 
       (.I0(sel_pipe[0]),
        .I1(DOADO[4]),
        .I2(sel_pipe[2]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[8]_0 [4]),
        .I4(sel_pipe[1]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i_reg[8]_1 [4]),
        .O(\din_2D[7]_0 [5]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \no_softecc_gmuxr.ce_pri.dout_i[6]_i_1 
       (.I0(sel_pipe[0]),
        .I1(DOADO[5]),
        .I2(sel_pipe[2]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[8]_0 [5]),
        .I4(sel_pipe[1]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i_reg[8]_1 [5]),
        .O(\din_2D[7]_0 [6]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \no_softecc_gmuxr.ce_pri.dout_i[7]_i_1 
       (.I0(sel_pipe[0]),
        .I1(DOADO[6]),
        .I2(sel_pipe[2]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[8]_0 [6]),
        .I4(sel_pipe[1]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i_reg[8]_1 [6]),
        .O(\din_2D[7]_0 [7]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \no_softecc_gmuxr.ce_pri.dout_i[8]_i_1 
       (.I0(sel_pipe[0]),
        .I1(DOADO[7]),
        .I2(sel_pipe[2]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[8]_0 [7]),
        .I4(sel_pipe[1]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i_reg[8]_1 [7]),
        .O(\din_2D[7]_0 [8]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \no_softecc_gmuxr.ce_pri.dout_i[9]_i_1 
       (.I0(sel_pipe[0]),
        .I1(DOPADOP),
        .I2(sel_pipe[2]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[9]_0 ),
        .I4(sel_pipe[1]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i_reg[9]_1 ),
        .O(\din_2D[7]_0 [9]));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(\no_softecc_gmuxr.ce_pri.dout_i_reg[0]_0 ),
        .Q(douta[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[10] 
       (.C(clka),
        .CE(1'b1),
        .D(\no_softecc_gmuxr.ce_pri.dout_i_reg[11]_0 [0]),
        .Q(douta[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[11] 
       (.C(clka),
        .CE(1'b1),
        .D(\no_softecc_gmuxr.ce_pri.dout_i_reg[11]_0 [1]),
        .Q(douta[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[7]_0 [1]),
        .Q(douta[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[7]_0 [2]),
        .Q(douta[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[7]_0 [3]),
        .Q(douta[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[4] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[7]_0 [4]),
        .Q(douta[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[5] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[7]_0 [5]),
        .Q(douta[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[6] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[7]_0 [6]),
        .Q(douta[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[7] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[7]_0 [7]),
        .Q(douta[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[8] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[7]_0 [8]),
        .Q(douta[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[9] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[7]_0 [9]),
        .Q(douta[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[2]),
        .Q(sel_pipe[2]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    clka,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  input clka;
  input [13:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire [13:0]addra;
  wire clka;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [13:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [13:0]addra;
  wire clka;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [13:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [13:0]addra;
  wire clka;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2
   (DOADO,
    DOPADOP,
    clka,
    ena_array,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input [0:0]ena_array;
  input [10:0]addra;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [10:0]addra;
  wire clka;
  wire [0:0]ena_array;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    addra);
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input [13:0]addra;

  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [13:0]addra;
  wire clka;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .addra(addra),
        .clka(clka));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    clka,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input clka;
  input [13:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire [13:0]addra;
  wire clka;
  wire [15:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h00000000000584000002C5000000000000002C6000000E6000000000000000F4),
    .INIT_03(256'hF5B200004BBC000000000000035F800003E78000000000000064300000334000),
    .INIT_04(256'hD8000000000000DAD7800051E200000000000004ADE00005F5E0000000000000),
    .INIT_05(256'h002A2998002F77D8000000000005EDBB00018B09800000000000315434000CEC),
    .INIT_06(256'hE18F20000000000087E360003AE402000000000008697B800035F8A000000000),
    .INIT_07(256'h000006A194800172D5E000000000000E0A2000172E9A000000000000662C0003),
    .INIT_08(256'h0023A8A4000000000001BF49400535AB0000000000005187C4005A2234000000),
    .INIT_09(256'h06C8320005A00000050CE000C028FF20006C6E000057700004FF7FF00001FCD8),
    .INIT_0A(256'h180000136140DE21FA7B7003AC400002C47C00877E40B00094EC00002A54000C),
    .INIT_0B(256'hE3D13FC7E2AC480000000A6AA03DEBFC7F893FB7000000C48E2C1A7FCBC4401B),
    .INIT_0C(256'h9B000000000095ADFBFFFFFB171000000000139630FFFFFE0AF3000000007EF5),
    .INIT_0D(256'h011E523FFFFF3F9800000000002811C7FFFFFBFCE00000000004032A3FFFFF14),
    .INIT_0E(256'hFFE00000000000017DF00CF9FFBE88000000000017BCC3FFFFFBF98000000000),
    .INIT_0F(256'h00001C49F36EABFF39000000000001E4AF2FE27FFF3000000000000EDD3148EF),
    .INIT_10(256'h19C7FB940000000000130FFCB214FF38000000000001557F6F352FF350000000),
    .INIT_11(256'h0000000608C121E327F3FB0000000000041E6A910DFFBAA00000000003F3FE24),
    .INIT_12(256'hD17087FF3EC0000000000D287D1A243FF3F000000000002EC40DD14D7F3FD000),
    .INIT_13(256'hFC00000000E337D1E7477F3D6C0000000009167D16547FF3EC0000000000EDC7),
    .INIT_14(256'hB37C42A86FE39D2E000000480B17CDC6C67F39AE8000000700B17CD88667F3DD),
    .INIT_15(256'hFD83368000C18D1C7C21606FFFFC4A3000101823E7C21406FFFE5A5000000207),
    .INIT_16(256'h00336FF368F97EE39D528001F00D5AFE74A48FF3BE0D680004007247E1EC40FF),
    .INIT_17(256'h9FE2860D800130009060E4D163FE4CA91DE00E00013EDE39E80768CC39DC0016),
    .INIT_18(256'h04000C9F57E8003F24BD1562012000CA06F5663BFE35135420120008DE8FAAB4),
    .INIT_19(256'h4F87967DA3B1001C000E0959CE6F3E56260C5600C000F01404E0EC1A5650E920),
    .INIT_1A(256'h8001A000000E0000FF8447823800140001C2FFFFE7F343021398014000225E9E),
    .INIT_1B(256'h00000000000013F000600000000000003000035F000E0000000000000301C014),
    .INIT_1C(256'h60000001C0071C00000000019C00200014007F80000000000F00C700036000C0),
    .INIT_1D(256'h2890000000007E1D8700000002E1000000000963803000000021E00000000064),
    .INIT_1E(256'hE2600000000000035000000000A020C0000000002D000000000A1F9860000000),
    .INIT_1F(256'h0000AB90001FE0024000000000000C3C0003FF03C800000000000035BFFFFFFF),
    .INIT_20(256'hFFCC880C380000000027507FFFF84500010000000004641800004FD800000000),
    .INIT_21(256'h0000000097CBFFFFAE90000000000000039EFFFFFCF400E18000000000E51FFF),
    .INIT_22(256'h9F8F4500000000000000003819FFF8820000000000000005FFDFFFDA98000000),
    .INIT_23(256'h00000000000600480160000000000000000067233FEEB000000000000000037B),
    .INIT_24(256'h0003CFF900000000000000000000ACFF2000000000000000006013CFFB800000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [13:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0_n_0 ;
  wire [13:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000037A000001C6000000000000001C40000000800000000000000008),
    .INITP_03(256'h282C00002BA8000000000000028500000291000000000000002860000017C000),
    .INITP_04(256'h6000000000000053E800002BC80000000000000601400002B940000000000000),
    .INITP_05(256'h00490F180032C02800000000000248088001D79D0000000000001B73200006BF),
    .INITP_06(256'h31F2C00000000000527E58002B1FA400000000000527F58002D8F54000000000),
    .INITP_07(256'h000002BC1200033CE84000000000005B998800331EC400000000000531DC8002),
    .INITP_08(256'h001AFB50000000000001CE7A00025F1680000000000034C350002BED10000000),
    .INITP_09(256'hFB3874000B0E8000059020000873FF8000A314000061F60000000000000A7EC0),
    .INITP_0A(256'hE000001BFA0001FAC7E20009E700000147A00040D1808000BF0800002C020007),
    .INITP_0B(256'h24FEC03A53C24000000007FF8131FCF03AC037C8000000C0700C9F90C3700183),
    .INITP_0C(256'h60000000000027DFFFFFFC5FDF80000000000442FFEFF7E59E44000000002040),
    .INITP_0D(256'h00BFF87FFFE63EA000000000000BFF87FFFC03EA00000000000181FCFFFFD802),
    .INITP_0E(256'hFE7E000000000000BFFFFFFFFFEF6000000000000BFF8FFFFFF0E20000000000),
    .INITP_0F(256'h00000BFFFC1FE3F19E000000000000BFFFCC01FFF3E000000000000BFFFFFFBF),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000088888888809880000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000888888891188880000000000),
    .INIT_13(256'h0000000000000000000000000000000000008811999922222299900000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000881199A1222A22A119880000000000000000),
    .INIT_16(256'h000000000000000000000000008811A1B23B3B4343B219080000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000088992A33C3C3C33A2A91000000000000000000000000),
    .INIT_19(256'h0000000000000000008899AA3B4B545454432910000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h00000000008810213243D454D44BBA2108000000000000000000000000000000),
    .INIT_1C(256'h00000000089199B2C353DCE45C533A2190080000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h00881122324C5C5C5CDC4B321988000000000000000000000000000000000000),
    .INIT_1F(256'h089099AAC3D3DCE4E45C4B3AAA19080000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h324B5C5C65E45443322108000000000000000000000000000000000000000000),
    .INIT_22(256'h42D3DBE4E4E45CCBBAA190000000000000000000000000000000000000881121),
    .INIT_23(256'h00000000000000000000000000000000000000000000000000000000081099AA),
    .INIT_24(256'h6464E45443329000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h6C6C64DBC3299008000000000000000000000000000000000088912132CB5C5C),
    .INIT_26(256'h000000000000000000000000000000000000000000000080889821314ADB636C),
    .INIT_27(256'h533A210808000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'hD3BA219191000000000000000000000000000000881099A9B9CA5B6464EC645C),
    .INIT_29(256'h0000000000000000000000000000000000008810992129B9D2DAE3EB7474ECE4),
    .INIT_2A(256'h9109000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h1A0900000000000000000000000088089099A1B14152DAE3EC6C6CE45BCB3221),
    .INIT_2C(256'h00000000000000000000000000881119A93139C9D9616A72F3F4F3EBE34BBA2A),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h00000000000000000000089921A9B9C151E1696AF3F3F3EB6BDB433222910000),
    .INIT_2F(256'h0000000000000000000919AAB242C9D161E1E9F2727B73736BDC4C3BA2090000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h00000000000011222ABAC151D968F1F172737373F3E4D4C4331A000000000000),
    .INIT_32(256'h000000008011A2B343CA5159E0697171FAFA72726B64DC44AA89000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h000091AABA4249D960E8F07172F2F3F3736C6555BC1A08000000000000000000),
    .INIT_35(256'h0011A2B343CA5960E0686871FAFA71E96B635C4DAB0900000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h3ACA51D960E8E870F1F2F272EA6B64543C1A0000000000000000000000000000),
    .INIT_38(256'h43CA51D960E0E8717272E9E1E25B5DCD2B9100000000000000000000000091AA),
    .INIT_39(256'h000000000000000000000000000000000000000000000000000000000011A2B3),
    .INIT_3A(256'h6060E069F1F171E9E163DC54BB1A000000000000000000000000000000000000),
    .INIT_3B(256'hD860E86971EA69E15ADB5CCD2B91000000000000000000000000112A3BCA51D8),
    .INIT_3C(256'h00000000000000000000000000000000000000000000000000112233BACA51D9),
    .INIT_3D(256'hE9F1696059DADC54BB1900000000000000000000000000000000000000000000),
    .INIT_3E(256'hE9EA6259D252CC3CA209000000000000000000000000912A3BCA51D8D8D858E1),
    .INIT_3F(256'h0000000000000000000000000000000000000000008899AAB2425159D8E060E8),
    .INIT_40(256'hD15253432B910000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h52C2BBAB9A0000000000000000000000008011A2B24249D1D0D0D0596A6AE9D9),
    .INIT_42(256'h0000000000000000000000000000000000881199AABA42D150D860E1EA62E25A),
    .INIT_43(256'h2291000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h09000000000000000000000000800919AAB2C1495148D1D1E2EBE2DAD1CA3A32),
    .INIT_45(256'h00000000000000000000000000008008992A3ACA51D8D86162E2DB5BCABAAA99),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h00000000000000000000881199A9B9C9494949D2DA5BDB5BD2C2291909000000),
    .INIT_48(256'h00000000000000000000000011A2BB43CA51D9D9DA5253D3C2A9910000000000),
    .INIT_49(256'h0000000000000000000000000000000889080000000000000000000000000000),
    .INIT_4A(256'h000000000000000088982941CAC9C9525353535BCB3A19000000000000000000),
    .INIT_4B(256'h00000000000000001122333CC3CA4A4ACA4242C3BA2108000000000000000000),
    .INIT_4C(256'h0088898911898989891199A222229A9A11111111111199111189000000000000),
    .INIT_4D(256'h0000000000102131BA42C253D3CBCCD44BAA1000000000000000000000000000),
    .INIT_4E(256'h00000000092234BC3B43423ABA3232B2AA990800000000000000000000000000),
    .INIT_4F(256'hA29A9A9A9A2233C44444C4BC33ABABABAB333333AB9A88000000000000000000),
    .INIT_50(256'h0088182131BA42CBCB4B444C44AA090000000000000000000000000000119AA2),
    .INIT_51(256'h092334BCBCBBBBB2A92121221910000000000000000000000000000000000000),
    .INIT_52(256'h34BCCDDE666666DE56CDCDCDCDCD4D4DC42B9100000000000000000000000000),
    .INIT_53(256'hA9BA434343C3BCC4BCAB0900000000000000000000000000089AABABABABABAB),
    .INIT_54(256'h33332AAA21999919910800000000000000000000000000000000000000008899),
    .INIT_55(256'h7777F7EF67DF565757565EDE55BC1A090900000000000000000000891223AB2B),
    .INIT_56(256'h333B333434230A810100000000000000000000009122AB343434343DBD4E5F6F),
    .INIT_57(256'h1111118808000000000000000000000000000000000000000000001099AA3232),
    .INIT_58(256'hE75FD7D7D7D75F67DE45AC1B9289010109000000000089129B1B232222229999),
    .INIT_59(256'h239B13138A01000000000089091189919A2BAC343CBDBDBEC64EDFEFF7F7F76F),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000881099AA222AAAAB2B),
    .INIT_5B(256'h4F4F57E7EFD6452CA31B8A8A898901000089129B1B9B92111111888809888888),
    .INIT_5C(256'h93820000000089921B239AA22AB3B43434BDBEC7CED75FE76F6F6F6FE7DF5757),
    .INIT_5D(256'h0000000000000000000000000000000000000000881199111111199A9A9B9B9C),
    .INIT_5E(256'hEFDF4E46B5241B1B1A1291090091A32C249B8A01000000000000000000000000),
    .INIT_5F(256'h00000923AC2CABB3333B3C3435B6C74FD7DF5F6767676767675FD7CFC7475767),
    .INIT_60(256'h000000000000000000000000000000000088108888888889899223A41C8A0100),
    .INIT_61(256'h3EB524A4A39B1A920912232C2413010000000000000000000000000000000000),
    .INIT_62(256'h35B5343CBC443C3D35B6BF4FDFDFE7E7675FE7E767E75F4F47BF4F67EFE7D7CF),
    .INIT_63(256'h0000000000000000000000000000880000000000011223AC24138A01018992A4),
    .INIT_64(256'h3D3DACA31B9B9B9B138A01000000000000000000000000000000000000000000),
    .INIT_65(256'hC4C4C4C5BEB7BFCFDFE7E767676767E7E7E75F5747BFC75F67DFD7CFC6C63D3D),
    .INIT_66(256'h0000000000000000000000000000000000899A231C9B9312129B232DB5B5BDBC),
    .INIT_67(256'h24A4139289010000000000000000000000000000000000000000000000000000),
    .INIT_68(256'hC73F3FCFDFDFE76767675F67E7E75F4F47BF4757DFD7574F4F575756D7D6C6B5),
    .INIT_69(256'h000000000000000000000000000089129324A4A4A4A4AC35B6B6BDBDBCC54D4E),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h575F5F5F5F5F5F5F5F5F574F47BF47D7D7574F5757DF676767E75F463524138A),
    .INIT_6C(256'h00000000000000000000008112A435352D2D35B5B6BEBD34BC4DCED7473F3F4F),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h57575757D7D7574FC7C7CF5757CFCF5757DF676767E75FD7C6AD130100000000),
    .INIT_6F(256'h000000000000000012A43535B5B5B5B6B6B5B534BD4ED6D74F47474F57575757),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'hCFCFCFCFC7CFD7DFDFD7D7D75757DFDF67E767DF4EB51B090000000000000000),
    .INIT_72(256'h0000008812A334B5BDB6B5B5B5B53535C54ED75FD74F4F4FCFCFCFCFCFCFCFCF),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h4F4FD7DFDF5F5FDFD7CFD75F67EF675FD63DA309000000000000000000000000),
    .INIT_75(256'h12A334BDBDB5B6B53535353546D7DFDFD757574F463E3FBFBFBFC7C7C7C7C7C7),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'hE76767DFD7CFCF57E767E7675FC5A30900000000000000000000000000000000),
    .INIT_78(256'hBDB5B6353D3D363E47575F5FDF5F57463E3536363637373F3EBE3E475757DFDF),
    .INIT_79(256'h00000000000000000000000000000000000000000000000000000000112334BD),
    .INIT_7A(256'hD7D7CFCF57DF67EFE7CDA2080000000000000000000000000000000000000000),
    .INIT_7B(256'h3D3EBEC74F575F5F5F57CEC63535B5B53D3DBDBE3EBEBE4757575FDFE76767DF),
    .INIT_7C(256'h000000000000000000000000000000000000000000000000112334B5BDB5B63E),
    .INIT_7D(256'hD757DFE7EFCD2208000000000000000000000000000000000000000000000000),
    .INIT_7E(256'hD757675F574FC6BDB52C34BCBBC3C3BCBCB5BD46CECF57575F6767DF5F5F5FD7),
    .INIT_7F(256'h000000000000000000000000000000000000000011233535B5BDBEC6CECFCFD7),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0 
       (.I0(addra[12]),
        .I1(addra[13]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [13:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1_n_0 ;
  wire [13:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h00CF1DB000000000000BCFF21FF9F0DC000000000000BC4F83BF1F0DE0000000),
    .INITP_01(256'h00000002FFFE760D63FC54000000000027CFE6802E7FC6800000000001BCFEEF),
    .INITP_02(256'hEEBFA67C4A400000000005FEFE7BFA67E4A400000000005FEFE79E277FCAC000),
    .INITP_03(256'h00000000005FFFCEBFAEFC53400000000001FEFEEBFA67C4A400000000001FEF),
    .INITP_04(256'hFFFE45FEAFCCF634000000002FFFE61FAEFCC341C000000005FFFEEBFBEFCDD4),
    .INITP_05(256'hE87AEC00000006FFFE447EAFDEA759000000002FEFE45FEAFCCB382000000002),
    .INITP_06(256'h0009EFCAF8307E398466800000013EFCA7FD67E78F23B000000027EFCE43BEFC),
    .INITP_07(256'h3FE0E005EC00C000063FE27F81FE070181C000000043FEE0060FE1B02FD00000),
    .INITP_08(256'h0000000C1FE079FF03000EE400000001C3FC7FCF7E18019EC008000079FF8FBE),
    .INITP_09(256'hFFFFFF80027E8000000007E4000000FE001AEC0000000078F8001FE0700085C0),
    .INITP_0A(256'h00000000000000000000000300000000000000000000000032E0000000000FBF),
    .INITP_0B(256'h000000000000080000000000000000000000016000000000000000000000003E),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0600000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000007000000000000000000000000700000000000000000000000),
    .INITP_0F(256'h000019C3FFFFFFE200000000000003E180000001C00000000000007800000000),
    .INIT_00(256'hE7CC220800000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h57CE453D3433B33A39C141423B3334BC45C6CE575F675FE767E7E75FCFCF57E7),
    .INIT_02(256'h0000000000000000000000000000000012233535B5BD464E57D7575FDFDFDF5F),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'hBBBB3AC1404040C1C2BBBBBBBC44CE57575F67E76FEFE75FCFC74FDFE7D53399),
    .INIT_05(256'h0000000000000000000000881224353535BD4657DFDFDFDFDFD7DF574E45C53C),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'hD0D0D0D0C9CAC23ABAC345CE57575FE76F6F67DF4FC7CFE7EF5E44AA91080000),
    .INIT_08(256'h00000000000088119AAC353535BD4556DFE7E7DF57D7D7CFC6C5C34343424A49),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h5959D1C1B9BABC45CE575F67EFEFE7D747C7CF677767D5BCA291000000000000),
    .INIT_0B(256'h00881122AB34B6B635BD4556DFE7E75F574FCFC73DBCC2CAD151D9D8E0E0E0D8),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h41BABB3D46CF5F6767E75F5747C7CF67FFF7E6D5B31A00000000000000000000),
    .INIT_0E(256'h3435BEBE35B5C5D6DFE7E75F574F47BE35BBC151D961E968F0686869E961D8D0),
    .INIT_0F(256'h00000000000000000000000000000000000000000000000000000000008899AB),
    .INIT_10(256'h3E4F5F5F5F675F5747BFCF677F776FDE44220100000000000000000000000000),
    .INIT_11(256'h35B4C556DF67675F574F3FBE34B2C1506068E971FA7272F1F168605048C1BBBC),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000011223434B5BEBE),
    .INIT_13(256'h5F675FD7C7BFCF6777F7EF5EC523090000000000000000000000000000000000),
    .INIT_14(256'hDF67675F57473FBE3533C15860E969F3FCFC7B7372E860504839BA3CBE4F5F5F),
    .INIT_15(256'h00000000000000000000000000000000000000000011A33435BEBEBE35B5C556),
    .INIT_16(256'hC73FCF677FF7EF5FC52B09000000000000000000000000000000000000000000),
    .INIT_17(256'h57473FBEB53B49D861E96AFBFDFDFD7C72E9E0504838BA3CBE4FDF675F67DFD7),
    .INIT_18(256'h000000000080808000000000000000000089233535B6BFBE3534C556DF675F5F),
    .INIT_19(256'h77F7EF57BD2B1108080808080808000000000000000000000000000000000000),
    .INIT_1A(256'hB53B49D861E96AFCFEFEFE7C73E9E0504038BA3CBECF5F676767DFD7C73FCF67),
    .INIT_1B(256'h0080808000000808080800000892243536B7BFBE3534C456DF67675F57473FB6),
    .INIT_1C(256'h3D2B191018181818181008000000000000000000000000000000000000000000),
    .INIT_1D(256'h60E9F2FCFEFEFD7473E9E050C038BA3C3FCF5F676767DFD7C73F4FE7F76F67D6),
    .INIT_1E(256'h0810101810101010101A2C3636B7BFBE353CC4D5DF67675F5747BFB6B53B41D0),
    .INIT_1F(256'h30303030B0A01008000000000000000000000000000000000000000000000000),
    .INIT_20(256'hFCFD757473E9E0D0C038BA3D3FCF575F6767DFD7473F4F5FEF67DFCEC5332A28),
    .INIT_21(256'h28282820212B353636B7BFBE35BCC4D5DF67675F57473FBEB43A41D060E972F3),
    .INIT_22(256'hC93920080000000000000000000000000000000000000000000000001098A028),
    .INIT_23(256'hF2E9E050C038BA3D3FCFD75F6767DFD7473F47D7DF5FD7463DBCBA4140484849),
    .INIT_24(256'h31B3BDB636B7BFBE35BCC4D5DFE7675F574F3FBE343A41D0D860E9F2F3F37B73),
    .INIT_25(256'h08080000000000000000000000000000000000000000000818B0B9C140403830),
    .INIT_26(256'hC0B8BA3D3EC7D75F6767DFD747BF4757D7574F46C5C44BD1D1D959E262C92818),
    .INIT_27(256'h36B7BFBE35BCC4D5DFE7675F57473FBE343AC150D8E0E069F1F27A7AF169E050),
    .INIT_28(256'h080000000000000000000000000000080808101828C0C8D15950504039BABCBD),
    .INIT_29(256'h3EC7D7DFDF67DFD747BF475757CF473FC64CD359E16AEAE3E352392820201810),
    .INIT_2A(256'h35BCC456DF67675FD7473FB6343AC05050D8E06069F1FAFAF168D850C0B8BA3D),
    .INIT_2B(256'h00000000000000000000081818182028384850585858504841BABBBDB6B7BFB6),
    .INIT_2C(256'hE767DF57C7BFC757D7CF47BE3DCC5B626AF374EC63DB4AC2B9B9302818080000),
    .INIT_2D(256'hDF67675FD7473FBE3C3AC048D8D8E0E0E171FAFAF168D850C0B8BA3D3EC7D7DF),
    .INIT_2E(256'h00000000000008A93030303848505858585850483839BBBC36B7BFBE35BCC5D6),
    .INIT_2F(256'h47BFC757DFD7C7BE3DCC5B6273FC7CF4E45C5BD2CA49C1B92010080000000000),
    .INIT_30(256'h5F4FBF3EBC3A4148D8D8606060F17A7271E8D8C8C039BB3D3ECFD75F6767DFD7),
    .INIT_31(256'h000818B949484848505860605858504038B8B93BB53EBEBE35BCC556DFE7675F),
    .INIT_32(256'hDFD7CE45C44B5A62F37C7DF56C6CE4E3635AD24A302010080000000000000000),
    .INIT_33(256'h34B239C95158585858E1E9E9E1E0D04840BABB3DC64F575F67675FD7C747C7CF),
    .INIT_34(256'h5058585858585858585850484040B9BA3CBD3EBD34BCC456DFE7675F5F4FC73E),
    .INIT_35(256'h43CBDAE16A7374F4F57575EC6CEC635B41302010000000000000000808102848),
    .INIT_36(256'hCAC9C8C8D05959595959C84041433C45CF575F5F67675FD746C646CFD7CE45C4),
    .INIT_37(256'h6058585858585850484840C13B3CBC3C3C3BC456DFE767675F57CF463CBBBAC2),
    .INIT_38(256'hE16A6B747DFEFEFDFD7DF5EC52C0281808000000000000102028385058606060),
    .INIT_39(256'h4048C8C9C94A4AC2434445CE575F5F5F67675FD74646BE464D4CC443C2495961),
    .INIT_3A(256'h5858585050484040C2C343BBBBBB44D6DFE76767675F574FC53CBB43C2C2C140),
    .INIT_3B(256'h7D7E7EFEFEFE7E7563D1B8200800000000000098B0B848505860606060605858),
    .INIT_3C(256'hC24242434445CD56DFDFDF5F5F5F5FD7463D3DBD44C3BB3AC149585858E16AF3),
    .INIT_3D(256'h50484040C142C33B3BBB4CDEDF676767675F57D74E3CBC3C3BBABA39394141C1),
    .INIT_3E(256'h7E7F7F76ECDAC93010000000000008A03949D058585858586058585858585858),
    .INIT_3F(256'hC5C64FD7DFDFDF5F5F5757CFC63D3C3CC3433AC1495058585858E1F37CFD7E7E),
    .INIT_40(256'hC04142BABA3BCC565E5F5F5F5F5F5FD756C63D3DBCBC333B3ABA3A3A3BBBBC45),
    .INIT_41(256'hECDA483010000000000008A841D1585858585858585858585858585858504840),
    .INIT_42(256'h5FDFD74F4F4F4FC7C63D3CBB43C2C2C149515958606060E96BF47E7EFFFE7F7E),
    .INIT_43(256'hBABBC4CDCECE4E4F57DFDFDFD74EC6C53DBCBCBCBC3B3B3CBCBC3CC54E4FD7DF),
    .INIT_44(256'h10000000000008A8C9D9585860585858585858585858585858585040C0C1C13A),
    .INIT_45(256'hC7C7C6BE3D3CBCBBC242C1C951515958606058E0E26B75FE7FFE7E766CDA4830),
    .INIT_46(256'h45C5C646CFD7D7DFDF564EC6C53D3D3D3DBDBDBDBD3DBD4E4F57DFDFDFD74F47),
    .INIT_47(256'h00000828C958585858585858585858585858585858585048C0C1C1B939BA3B3C),
    .INIT_48(256'h3CBBBB3AC241C9CAD25959586058585861E2747EFE7EFEF5ECDA402810000000),
    .INIT_49(256'h47CF575F5FDED6CEC5BDBDBEBEBEBEBE3D3DC54E5656DFDFD7D747BEBEBEBD3D),
    .INIT_4A(256'h4850585858585858585858585858585858585048C14141C1C13ABBBBBC3CB5BE),
    .INIT_4B(256'h414949D2D259585858586061E1E2ECF5757475EC635140281000000000000828),
    .INIT_4C(256'h5D5D554D443C3C3DBDBD3D3D3C3C44CCCDD5D5D5D5CD453DBDB4B4BBBB4242C2),
    .INIT_4D(256'h5858585858585858585858585858585149494949C8413ABABBBBB434BD4ED6D5),
    .INIT_4E(256'h5959585858586069F2736BEB636363E2DAD138281000000000000828C0505058),
    .INIT_4F(256'h3B3A3BBBBBBBBB3B3B3BBBC3CBCBCBCBCBC4443B3B323A3A42C1C94948505159),
    .INIT_50(256'h585858585858585858585859515150504848C9C1423A3ABBBB44CC4B4B4B4B43),
    .INIT_51(256'h585861727C7C6B62515151D0D048382810000000000008A8C148505858585858),
    .INIT_52(256'hB9B9B9BAC2C1C1C1C141414142423ABABAB9B9C1C94951515159595959595858),
    .INIT_53(256'h58585858585858585858585050504841C1C1B9B9B9B941414141414139B9B9B9),
    .INIT_54(256'hFC74EAD9484850484838302008000000000008A0B94048505858585858585858),
    .INIT_55(256'h404040404040404040414141414040485050595959585858585858585858E9F3),
    .INIT_56(256'h5858585858585858585850484040404040404040404040404040404040404040),
    .INIT_57(256'h48484848383020180800000000008898A8B94048505858585858585858585858),
    .INIT_58(256'h48484848484848484848485050585858585858585858585858606972F36ADA51),
    .INIT_59(256'h6060605858585850484848484848484848484848484848484848484848484848),
    .INIT_5A(256'h302018100000000000808010A0B0384850505050585858585858585858586060),
    .INIT_5B(256'h50505050505050505858585858585858606060606060E0E162D9515048484840),
    .INIT_5C(256'h5858585050505050505050505050505050505050505050505050505050505050),
    .INIT_5D(256'h0000000000008008102030404848485050585858585858585858606060585858),
    .INIT_5E(256'h58585858585858586058606060606060605858D859D148484840403828181000),
    .INIT_5F(256'h5858585858585858585858585858585858585858585858585858585858585858),
    .INIT_60(256'h0000000008102038404040485050585858585858585858585858585858605858),
    .INIT_61(256'h6058585858585858585858585858505050484038383830281808000000000000),
    .INIT_62(256'h5858585858585858585858585858585858585860606060606060585858606060),
    .INIT_63(256'h0008182830303038404850505058585858585858585858585858585858585858),
    .INIT_64(256'h5859595858505050504850504840383028282018100000000000000000000000),
    .INIT_65(256'h6060606060606060606060606060606060606060606060606060606060585858),
    .INIT_66(256'h20A0202830404848485050505050505051515158585858606060606060606060),
    .INIT_67(256'h4948484040404848403830201818100808000000000000000000000000001020),
    .INIT_68(256'h6060606060606060606060606060606060606060586060605858585151515151),
    .INIT_69(256'h2030384040484848484848494949515058585858606060606060606060606060),
    .INIT_6A(256'h3838384038302018100808080000000000000000000000000000081010101018),
    .INIT_6B(256'h58585858606060606058585860585858585858585859514941C1C1C1C1C1C040),
    .INIT_6C(256'h3838384040404041C9C949515159595858585858585858585858585858585858),
    .INIT_6D(256'h3020181010101010080000000000000000000000000000080800000818A83030),
    .INIT_6E(256'h585858585858585858585858585858585151514941B9B9B1B1B1B1B030303030),
    .INIT_6F(256'h303030B9B9424ACAC95151505858505858585858585858585858585850505058),
    .INIT_70(256'h1818101008080000000000000000000000000000000000000810182020202830),
    .INIT_71(256'h5050505050484848504848484849494AC2BA2920202020202020202020201818),
    .INIT_72(256'hA93A424AC9494948484848505050505050505050505050505050505050505050),
    .INIT_73(256'h0800000000000000000000000000000000000000000008080810182020181820),
    .INIT_74(256'h404040404040404040414142C2B2211008101810101008101018101010080808),
    .INIT_75(256'hC241414040404040404040404040404040404040404040404040404040404040),
    .INIT_76(256'h000000000000000000000000000000000000000000000808080808102132C242),
    .INIT_77(256'h40404041413941C2BA2918080008100808000000080808080000000000000000),
    .INIT_78(256'h3838384040404040404040404040404040404040404040404040404040404040),
    .INIT_79(256'h000000000000000000000000000000000000000000000008192ABA3A42B93938),
    .INIT_7A(256'h423ABAB2A9191000000008080800000008080808000000000000000000000000),
    .INIT_7B(256'h4ACACACACACACACACACACACACACACACACACACACACACACACACACACACAC2C2C242),
    .INIT_7C(256'h000000000000000000000000000000000000000010A12A323A3A39B9B9B9C242),
    .INIT_7D(256'h1110080000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'hD4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4CCCCCCCCCCC444444433A2),
    .INIT_7F(256'h0000000000000000000000000000000008119922B23B3BBBBBC44C545454D4D4),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[13]),
        .I1(addra[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2
   (DOADO,
    DOPADOP,
    clka,
    ena_array,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input [0:0]ena_array;
  input [10:0]addra;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [10:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'hFFC220000000000000086FFFFFFFCA0000000000000183C00000002000000000),
    .INITP_01(256'h000000002FFFFFFFC40000000000000004FFFFFFFC7E000000000000008EFFFF),
    .INITP_02(256'h7FFF3E00000000000000001887FFF9100000000000000001667FFFF880000000),
    .INITP_03(256'h0000000000000080006000000000000000000017F83600000000000000000073),
    .INITP_04(256'h00000000000000000000000000000000000000000000000000000FFFFC000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'hDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDDDEDED5CDCDCDCDC5AC1208000000),
    .INIT_02(256'h0000000000000000000000000000091AABB4BC3D45C5565E5E5EDEDDDDDEDEDE),
    .INIT_03(256'h0008000000000008000000000000000000000000000000000000000000000000),
    .INIT_04(256'h6767676767E7E7E7E7E7E7E7E75F5F5F574EC6C63EB5A40A0100000000000000),
    .INIT_05(256'h000000000000000000000092A3ACB5B5BE46CF5FDFDFDF5F5F67676767676767),
    .INIT_06(256'h0000000808000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h67E7E7E7E7E7E7E7E75FD7CFC635AD2D2C241382000000000000000008080000),
    .INIT_08(256'h0000000000000089121BA4AD36BECF57D7D7D75F5F6767676767676767676767),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'hE7E7E7E7E75FD74635AC1B1B1B120A0100000000000000000808000000000008),
    .INIT_0B(256'h0000000089121BAC35BEBEC6C6CECED75F5F676767676767676767676767E7E7),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'hDF57CEBE2C1B0A0A010101000000000000000000000000000000000000000000),
    .INIT_0E(256'h008192A32DB5B5B53DBDBECE565FE7DF5FDFDFDFDFDFDFDFDFDFDFDFE767E7DF),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h9B8A010000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'hA32C2CACAC2C34BCCD56DFDFD7D7D7D7D7D7D7D7D7D7D7DF5F5F57564EC6BD35),
    .INIT_12(256'h000000000000000000000000000000000000000000000000000000000000899A),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h9B1B232BBC46CFCFCFCFCFCFCFCFCFCFCFCFCFCF57CF46BD342C249B8A010000),
    .INIT_15(256'h00000000000000000000000000000000000000000000000000008009921B1B1B),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'hAC3EC7C7C7C7C7C74747474747474747C73EAD241B1212890100000000000000),
    .INIT_18(256'h000000000000000000000000000000000000000000000088890909098989119A),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h3737363636B6B6B6B6B63E3FB6ADA49309010000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000881224363E36),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h2D2D2D2D2D2D2DAD259C138A0100000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000899BACADADADADADAD),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h9393939B13138A01000000000000000000000000000000000000000000000000),
    .INIT_21(256'h00000000000000000000000000000000000000000A9B9B9B9B9B9B9B93939393),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h8A82010100000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h000000000000000000000000000000000089898A898989898989898989898989),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000010100),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:8],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1],DOPADOP}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra);
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [13:0]addra;

  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [13:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000054000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000005550000000000000054000000000000000000000),
    .INIT_06(256'h00016AA40000000000000000000000000000016A900000000000005554000000),
    .INIT_07(256'h016AA50000000000016AA50000000000000000000000000000016A9400000000),
    .INIT_08(256'h0000000000000001AAA94000000000016AA94000000000000000000000000000),
    .INIT_09(256'h900000000000000000000000000005AAAA5000000000016AAA50000000000000),
    .INIT_0A(256'h0000000005AABE940000000000000000000000000015AAFA9000000000016AAA),
    .INIT_0B(256'h0000056AFFFFE90000000056AFFFE5000000000000000000000000015ABFFFA5),
    .INIT_0C(256'h00000000000000000005ABFFFFE9000000015ABFFFE940000000000000000000),
    .INIT_0D(256'hAAFFFFFA40000000000000000000000005ABFFFFE9000000016AFFFFFA400000),
    .INIT_0E(256'hBFFEA900000001AAFFFFAA40000000000000000000000005AAFFFEA900000001),
    .INIT_0F(256'h0000000000016AAFFEA500000001AAAFFFAA400000000000000000000000056A),
    .INIT_10(256'h000000000000000000000000005AAFFA94000000016AABFEA940000000000000),
    .INIT_11(256'h00000016AABA94000000000000000000000000001AABEA50000000015AAAFE95),
    .INIT_12(256'h000016AAA9400000000006AAAA900000000000000000000000000016AAAA4000),
    .INIT_13(256'h0015A555554000000015AA550000000000056AAA900000000000005000000000),
    .INIT_14(256'h5A955000000005555AFEAAAA500000001555550000000000015AAA9000000000),
    .INIT_15(256'h0000000000000015555000000015556BFFEAAA90000000155540000000000000),
    .INIT_16(256'hAAA500000040000000000000000005554000000015556AFFAAAA900000001550),
    .INIT_17(256'h015555565AAAA56BE950000140000000000000000000000000005055555AAAAA),
    .INIT_18(256'h00000000000540015555565555955BE954000540000000000000000000000540),
    .INIT_19(256'h4000000000000000000000000140055555555555555BE9555400000000000000),
    .INIT_1A(256'h5555555AAAAAAA500000000000000000000000001555555A555555555AAAAAA5),
    .INIT_1B(256'h00001555556A955555555696AAAA500000000000000000000000001555556A95),
    .INIT_1C(256'h0000000000000000001555556A555555555555AAAA9000000000000000000000),
    .INIT_1D(256'h5556AA900000000000000000000000001555555555555555555556AA90000000),
    .INIT_1E(256'h555555555555555555AA90000000000000000000000000155555555555555555),
    .INIT_1F(256'h000000000015555555555400015555A96A900000000000000000000000001555),
    .INIT_20(256'h000000000000000000000000155A9A55555000005555AA5A9000000000000000),
    .INIT_21(256'h55550555A95AA4000000000000000000000000155A5555515400001555AA5A94),
    .INIT_22(256'h01555A5555416AAAA50155555BE5000000000000000000000000155A55550155),
    .INIT_23(256'h00000000000000015555555541ABFFA94155555BE94000000000000000000000),
    .INIT_24(256'h555BFA4000000000000000000000055556555541BFFFFA4055555BFA40000000),
    .INIT_25(256'h5501BFFFFA4155555BFA4000000000000000000000055556555541BFFFFA4155),
    .INIT_26(256'h000000055556555501BFFFFA4155555BFA400000000000000000000005555655),
    .INIT_27(256'h00000000000000000000055555555501BFFFFA0155555AF94000000000000000),
    .INIT_28(256'hFA0155555AA54000000000000000000000055555555501BFFFF90155555AA940),
    .INIT_29(256'h5555555541AFFFFA0155555A554000400000000000000000015555555541BFFF),
    .INIT_2A(256'h000000000000015556555541AFFFFA0155555A55501550000000000000000001),
    .INIT_2B(256'h5655406A550000000000000000015555555541AFFFFA01555556554059540000),
    .INIT_2C(256'h01AAAAA94155555555006AA55000000000000000015556555501AFFFF9015555),
    .INIT_2D(256'h0000001556555501556AA55555555554005AAA95000000000000000055565555),
    .INIT_2E(256'hBFFE4000000000000000055555550155555555555555500016AAA94000000000),
    .INIT_2F(256'h55555555000001AFFF4000000000000000015555555140001555555555400005),
    .INIT_30(256'h05555555400005559555540000006FFF40000000000000000015555555000001),
    .INIT_31(256'h0000000000000005555555554015555555500000001BFF800000000000000000),
    .INIT_32(256'h00000016AA40000000000000000000155555555555555555400000001BFE4000),
    .INIT_33(256'h0000000000000000000155550000000000000000000001555555555555550000),
    .INIT_34(256'h0000000000000000000000000000000001A50000000000000000000000001000),
    .INIT_35(256'h000000000000000000000000000000000000000000000001A400000000000000),
    .INIT_36(256'h0000000000004000000000000000000000000000000000000000000000000150),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000140550000000000000015000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000001555555555555555555550000000000000000000),
    .INIT_41(256'h5555555150000000000000000000000000000015565555555555555555500000),
    .INIT_42(256'h0005555555555555555540000000000000000000000000000000155655555555),
    .INIT_43(256'h0000000000000000015555555555555555400000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000055555555555555550000000000000000),
    .INIT_45(256'h5555555550000000000000000000000000000000000000151555555555545400),
    .INIT_46(256'h0000000000000055555555400000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000155555554000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
   (douta,
    clka,
    addra);
  output [11:0]douta;
  input clka;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [11:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* C_ADDRA_WIDTH = "14" *) (* C_ADDRB_WIDTH = "14" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "2" *) 
(* C_COUNT_36K_BRAM = "3" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.56159 mW" *) 
(* C_FAMILY = "spartan7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "1" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_gen_1.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "10000" *) (* C_READ_DEPTH_B = "10000" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "12" *) (* C_READ_WIDTH_B = "12" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "10000" *) 
(* C_WRITE_DEPTH_B = "10000" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "12" *) (* C_WRITE_WIDTH_B = "12" *) (* C_XDEVICEFAMILY = "spartan7" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [13:0]addra;
  input [11:0]dina;
  output [11:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [13:0]addrb;
  input [11:0]dinb;
  output [11:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [13:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [11:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [11:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [13:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [13:0]addra;
  wire clka;
  wire [11:0]douta;

  assign dbiterr = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4_synth
   (douta,
    clka,
    addra);
  output [11:0]douta;
  input clka;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [11:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
