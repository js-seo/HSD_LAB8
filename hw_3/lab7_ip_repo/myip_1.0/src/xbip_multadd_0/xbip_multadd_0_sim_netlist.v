// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Mon Jun 11 22:21:15 2018
// Host        : 310-2-24 running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /csehome/opera5/HSD_kwJS/HSD_LAB8/hw_3/lab7_ip_repo/myip_1.0/src/xbip_multadd_0/xbip_multadd_0_sim_netlist.v
// Design      : xbip_multadd_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "xbip_multadd_0,xbip_multadd_v3_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_multadd_v3_0_10,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module xbip_multadd_0
   (CLK,
    CE,
    SCLR,
    A,
    B,
    C,
    SUBTRACT,
    P,
    PCOUT);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) input [31:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 subtract_intf DATA" *) input SUBTRACT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) output [39:0]P;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) output [47:0]PCOUT;

  wire [15:0]A;
  wire [15:0]B;
  wire [31:0]C;
  wire CE;
  wire CLK;
  wire [39:0]P;
  wire [47:0]PCOUT;
  wire SCLR;
  wire SUBTRACT;

  (* C_AB_LATENCY = "-1" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_C_LATENCY = "-1" *) 
  (* C_C_TYPE = "1" *) 
  (* C_C_WIDTH = "32" *) 
  (* C_OUT_HIGH = "39" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_USE_PCIN = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  xbip_multadd_0_xbip_multadd_v3_0_10 U0
       (.A(A),
        .B(B),
        .C(C),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(PCOUT),
        .SCLR(SCLR),
        .SUBTRACT(SUBTRACT));
endmodule

(* C_AB_LATENCY = "-1" *) (* C_A_TYPE = "1" *) (* C_A_WIDTH = "16" *) 
(* C_B_TYPE = "1" *) (* C_B_WIDTH = "16" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_C_LATENCY = "-1" *) (* C_C_TYPE = "1" *) (* C_C_WIDTH = "32" *) 
(* C_OUT_HIGH = "39" *) (* C_OUT_LOW = "0" *) (* C_TEST_CORE = "0" *) 
(* C_USE_PCIN = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* ORIG_REF_NAME = "xbip_multadd_v3_0_10" *) (* downgradeipidentifiedwarnings = "yes" *) 
module xbip_multadd_0_xbip_multadd_v3_0_10
   (CLK,
    CE,
    SCLR,
    A,
    B,
    C,
    PCIN,
    SUBTRACT,
    P,
    PCOUT);
  input CLK;
  input CE;
  input SCLR;
  input [15:0]A;
  input [15:0]B;
  input [31:0]C;
  input [47:0]PCIN;
  input SUBTRACT;
  output [39:0]P;
  output [47:0]PCOUT;

  wire [15:0]A;
  wire [15:0]B;
  wire [31:0]C;
  wire CE;
  wire CLK;
  wire [39:0]P;
  wire [47:0]PCOUT;
  wire SCLR;
  wire SUBTRACT;

  (* C_AB_LATENCY = "-1" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_C_LATENCY = "-1" *) 
  (* C_C_TYPE = "1" *) 
  (* C_C_WIDTH = "32" *) 
  (* C_OUT_HIGH = "39" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_USE_PCIN = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  xbip_multadd_0_xbip_multadd_v3_0_10_viv i_synth
       (.A(A),
        .B(B),
        .C(C),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(PCOUT),
        .SCLR(SCLR),
        .SUBTRACT(SUBTRACT));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
ZM5xuMjGt1MYsF/EqGL7kiYV5dWbJJUBW4K1sdV4ct/Hjz60yl9SjjPLLOBo7z1JjlTYNB1eYrc1
mtItFpyTJw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
J+1JIuunf3n83xj4btPG92Mrj4UkJWfESqPO+NKqWnsGbdF1QCHl93QiLE5wpjFDklIQlTxNWx8r
IigjjEUNH3zzb9/UU+CZa8forSmH3FZny6t8oGWpHw4XOiwE8QpaA1bCXx41UCdJviCY+KYTpQEB
1gnxRmAegARmYhnd0Lo=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
af96WGBLlfeYfBBoCyk18+mj7VnjX7uyGWyBMvdDo29BvUJ9OPtIOquP+hpOzT4wcD7SEOxMmuvh
vZQb+oNbqgusTage4+JqoOLi3oRpCXZhS+gBkaKWVCFj8EfccKZpnum/klvVrNOGl01VAY0wKz7V
sHCOV0agSbQNIcN+NTs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
k1jHUBokF0aLTHnZCQ+Ls1Y59IiYK+cq/6GoiobdhquF35TNOQIDZvs8PozVLLXigZpQfqgYT9gx
g3ZtR7zzx50IyyDVWQd+8Q9P1aVZVWjzqSkw0j5Z30NnDCZHHc9fGkj0MLzL1esdrbXneQ1s5mc7
O/m7ZTvPaaSXbReQMDlpRZWhcfIWDSzRYW7jrIk1rU7oTqxx+zdNjqLiRyQ8KtSE/Yq6GOj6MLaT
9hMu8L4/SvT0dW9gw19soT5TWgBiju7xnKoHsJEHFkrQp75jPuGxhAux+GUc4jL9wBVhT20rz/Kr
BMM78K76W5YTl7Q9FdcpJae6ydBm5WhWcW2+Pg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
X7ivdX+Xa2Vxzx7eSFNgRwA2xKBMou8zzXf5TsaJ8m8HoReqLa1U55WBakDirw8TMs+RZebxF3rU
MDUCgUxoAjHUgDxruRmeCkWcGLt+aHBuNsWKhvhDefsNXlxJG8HLATmd44kd/dn+zGFpNTYB96QT
vXOCsRMA0+zCspCWPO6ojQgo+ubMf9AoUcfB5gxgH1/X2dd9VjxlAnav03ErIdjasXyL096Y+Ocj
C/p/Z03WG+T7v2QQljrmxBpfgfz6lzHRR2lph952rYU6JV4LEo6NJtQ0kP4596/CEAWotnD0Q6hh
3EHYhkHVRi+q1GoJueWVBaZw+hbKcegclCa8/g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F7v51tBmpmS3nIYzM3UiY61kS0qYs8ea092VJC2Rc/ZSS/DRru2lCGgqNaIhePgAScZ/JNFr5SOr
V/RF2ni3q86lyrQwa1XEmBnHgVAF2ap6C4F9w3Oxpr0cxhBoDNPq1fE8z1PjVD2qAjpbOPl7IdXB
z+9CRHq60XR1oPmbbjwerB4T/+bvFyY5SIHSh1bwPm65x4fUVhRnm5KOQZYXi6lWuvpI2QsKyjyR
jkoUx4X4lgzILXacFY5DJJkTShrHUmOyoDK0nv3PBka2rmrkMN/eYlrp5RojkIYXYBzettEfxwIN
Rt2ON5nUWAa+6YDUWO4FwnmsPZ7tre1E714HLA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
q2ylf/9YixYeLD+UehTYpcft3WwRfugQ+xTVZdc6hF9KHIt6xmp0whjinO4ZjOENQL8DtHwVYsh1
RNfFkNPRfDzqxFZgbZTIchx8HfFMWRGCaPXqR73EnzfJFJLZzn1L8cadm4PqW/TDFNerMrQZQJx6
48UGxelTTlzKNbeVHIdrIdErQPgdQzXVsizGivtFoshVFCwLkKLI37eNeYcQq5LyynxAR/Y3NiEM
hi3HVK4dKbzjM18YH+32OYlBiXd7D07U69CwO9/35eNwUPH/p29FYnIz1db1SxV45y7/nn3u9N/k
WHBK++1l/tdz/bfmzYGPjM3VEkOADOZsfKK11g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
aXWY4PXsXO6zOqT7FpcbFP88rcvjRydS3h/haLGyEYO1Bq0kOoioFz1f/gGxw3mN38dleGx29CZa
zmC5Q8q+mGOzx3NeUFdapYzsiVI+xDoXNBTzg0I3ljYwBEVl2p8MxtD8WmJkmPJWV6siQkVKxd21
Zj55QiyWB/UIKaQfCJxXr5ju1u46KIH96tNmSRoxOyStc7bOTQrmVHDwFV3QPTc3ylUhKT5EZcp7
WrMhYLFyLjRcuOyHzFRDmCQCsK1x9HPQ1FuqUand1KQMof2UERhSwcmvZQB0xbFc6w6lu9t58zQV
J7lRQf1LWNnWbZAAwKrCWM9R1zN7NSqOHHXGIg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9504)
`pragma protect data_block
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
`pragma protect end_protected
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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
