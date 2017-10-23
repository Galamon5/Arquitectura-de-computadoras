// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.9.0.99.2
// Netlist written on Fri Sep 29 11:36:41 2017
//
// Verilog Description of module registro
//

module registro (clr, indiv0, outdiv0, Ent, Key, Sal);   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(8[8:16])
    input clr;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(10[3:6])
    input [3:0]indiv0;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(11[3:9])
    output outdiv0 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(12[3:10])
    input [7:0]Ent;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(13[3:6])
    input [1:0]Key;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(14[3:6])
    output [7:0]Sal;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(15[3:6])
    
    wire outdiv0_c /* synthesis is_clock=1, SET_AS_NETWORK=outdiv0_c */ ;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(12[3:10])
    wire sclk /* synthesis SET_AS_NETWORK=sclk, is_clock=1 */ ;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(19[8:12])
    
    wire GND_net, clr_c, indiv0_c_3, indiv0_c_2, indiv0_c_1, indiv0_c_0, 
        Ent_c_7, Ent_c_6, Ent_c_5, Ent_c_4, Ent_c_3, Ent_c_2, Ent_c_1, 
        Ent_c_0, Key_c_1, Key_c_0, Sal_c_7, Sal_c_6, Sal_c_5, Sal_c_4, 
        Sal_c_3, Sal_c_2, Sal_c_1, Sal_c_0;
    wire [7:0]Q;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(20[8:9])
    
    wire VCC_net, outdiv0_c_enable_8, n106, n107, n108, n109, n110, 
        n111, n112, n113, n2, n2_adj_212, n2_adj_213, n2_adj_214, 
        n2_adj_215, n2_adj_216, n2_adj_217, n2_adj_218;
    
    VHI i28 (.Z(VCC_net));
    div00 UD01 (.sclk(sclk), .indiv0_c_1(indiv0_c_1), .indiv0_c_2(indiv0_c_2), 
          .indiv0_c_3(indiv0_c_3), .indiv0_c_0(indiv0_c_0), .outdiv0_c(outdiv0_c), 
          .GND_net(GND_net));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(26[8:13])
    OB outdiv0_pad (.I(outdiv0_c), .O(outdiv0));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(12[3:10])
    FD1P3IX Q__i3 (.D(n110), .SP(outdiv0_c_enable_8), .CD(clr_c), .CK(outdiv0_c), 
            .Q(Q[3]));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(34[2] 102[11])
    defparam Q__i3.GSR = "ENABLED";
    FD1P3IX Q__i4 (.D(n109), .SP(outdiv0_c_enable_8), .CD(clr_c), .CK(outdiv0_c), 
            .Q(Q[4]));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(34[2] 102[11])
    defparam Q__i4.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(Key_c_1), .B(clr_c), .C(Key_c_0), .Z(outdiv0_c_enable_8)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i2_3_lut.init = 16'hefef;
    FD1P3IX Q__i5 (.D(n108), .SP(outdiv0_c_enable_8), .CD(clr_c), .CK(outdiv0_c), 
            .Q(Q[5]));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(34[2] 102[11])
    defparam Q__i5.GSR = "ENABLED";
    FD1S3IX Sal__i1 (.D(Q[0]), .CK(outdiv0_c), .CD(clr_c), .Q(Sal_c_0));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(34[2] 102[11])
    defparam Sal__i1.GSR = "ENABLED";
    LUT4 mux_28_Mux_3_i3_3_lut (.A(Ent_c_3), .B(n2_adj_218), .C(Key_c_1), 
         .Z(n110)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(36[4] 101[11])
    defparam mux_28_Mux_3_i3_3_lut.init = 16'hcaca;
    LUT4 mux_28_Mux_3_i2_3_lut (.A(Q[4]), .B(Q[2]), .C(Key_c_0), .Z(n2_adj_218)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(36[4] 101[11])
    defparam mux_28_Mux_3_i2_3_lut.init = 16'hcaca;
    LUT4 mux_28_Mux_4_i3_3_lut (.A(Ent_c_4), .B(n2_adj_216), .C(Key_c_1), 
         .Z(n109)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(36[4] 101[11])
    defparam mux_28_Mux_4_i3_3_lut.init = 16'hcaca;
    LUT4 mux_28_Mux_4_i2_3_lut (.A(Q[5]), .B(Q[3]), .C(Key_c_0), .Z(n2_adj_216)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(36[4] 101[11])
    defparam mux_28_Mux_4_i2_3_lut.init = 16'hcaca;
    LUT4 mux_28_Mux_5_i3_3_lut (.A(Ent_c_5), .B(n2_adj_215), .C(Key_c_1), 
         .Z(n108)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(36[4] 101[11])
    defparam mux_28_Mux_5_i3_3_lut.init = 16'hcaca;
    LUT4 mux_28_Mux_5_i2_3_lut (.A(Q[6]), .B(Q[4]), .C(Key_c_0), .Z(n2_adj_215)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(36[4] 101[11])
    defparam mux_28_Mux_5_i2_3_lut.init = 16'hcaca;
    LUT4 mux_28_Mux_1_i3_3_lut (.A(Ent_c_1), .B(n2_adj_212), .C(Key_c_1), 
         .Z(n112)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(36[4] 101[11])
    defparam mux_28_Mux_1_i3_3_lut.init = 16'hcaca;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 mux_28_Mux_1_i2_3_lut (.A(Q[2]), .B(Q[0]), .C(Key_c_0), .Z(n2_adj_212)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(36[4] 101[11])
    defparam mux_28_Mux_1_i2_3_lut.init = 16'hcaca;
    LUT4 mux_28_Mux_2_i3_3_lut (.A(Ent_c_2), .B(n2_adj_213), .C(Key_c_1), 
         .Z(n111)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(36[4] 101[11])
    defparam mux_28_Mux_2_i3_3_lut.init = 16'hcaca;
    OB Sal_pad_7 (.I(Sal_c_7), .O(Sal[7]));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(15[3:6])
    LUT4 mux_28_Mux_2_i2_3_lut (.A(Q[3]), .B(Q[1]), .C(Key_c_0), .Z(n2_adj_213)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(36[4] 101[11])
    defparam mux_28_Mux_2_i2_3_lut.init = 16'hcaca;
    FD1P3IX Q__i1 (.D(n112), .SP(outdiv0_c_enable_8), .CD(clr_c), .CK(outdiv0_c), 
            .Q(Q[1]));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(34[2] 102[11])
    defparam Q__i1.GSR = "ENABLED";
    FD1P3IX Q__i2 (.D(n111), .SP(outdiv0_c_enable_8), .CD(clr_c), .CK(outdiv0_c), 
            .Q(Q[2]));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(34[2] 102[11])
    defparam Q__i2.GSR = "ENABLED";
    IB Key_pad_0 (.I(Key[0]), .O(Key_c_0));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(14[3:6])
    IB Key_pad_1 (.I(Key[1]), .O(Key_c_1));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(14[3:6])
    IB Ent_pad_0 (.I(Ent[0]), .O(Ent_c_0));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(13[3:6])
    IB Ent_pad_1 (.I(Ent[1]), .O(Ent_c_1));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(13[3:6])
    IB Ent_pad_2 (.I(Ent[2]), .O(Ent_c_2));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(13[3:6])
    IB Ent_pad_3 (.I(Ent[3]), .O(Ent_c_3));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(13[3:6])
    IB Ent_pad_4 (.I(Ent[4]), .O(Ent_c_4));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(13[3:6])
    IB Ent_pad_5 (.I(Ent[5]), .O(Ent_c_5));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(13[3:6])
    IB Ent_pad_6 (.I(Ent[6]), .O(Ent_c_6));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(13[3:6])
    IB Ent_pad_7 (.I(Ent[7]), .O(Ent_c_7));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(13[3:6])
    IB indiv0_pad_0 (.I(indiv0[0]), .O(indiv0_c_0));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(11[3:9])
    IB indiv0_pad_1 (.I(indiv0[1]), .O(indiv0_c_1));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(11[3:9])
    IB indiv0_pad_2 (.I(indiv0[2]), .O(indiv0_c_2));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(11[3:9])
    IB indiv0_pad_3 (.I(indiv0[3]), .O(indiv0_c_3));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(11[3:9])
    IB clr_pad (.I(clr), .O(clr_c));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(10[3:6])
    OB Sal_pad_0 (.I(Sal_c_0), .O(Sal[0]));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(15[3:6])
    OB Sal_pad_1 (.I(Sal_c_1), .O(Sal[1]));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(15[3:6])
    OB Sal_pad_2 (.I(Sal_c_2), .O(Sal[2]));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(15[3:6])
    LUT4 mux_28_Mux_6_i3_3_lut (.A(Ent_c_6), .B(n2), .C(Key_c_1), .Z(n107)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(36[4] 101[11])
    defparam mux_28_Mux_6_i3_3_lut.init = 16'hcaca;
    OB Sal_pad_3 (.I(Sal_c_3), .O(Sal[3]));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(15[3:6])
    OB Sal_pad_4 (.I(Sal_c_4), .O(Sal[4]));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(15[3:6])
    OB Sal_pad_5 (.I(Sal_c_5), .O(Sal[5]));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(15[3:6])
    OB Sal_pad_6 (.I(Sal_c_6), .O(Sal[6]));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(15[3:6])
    LUT4 mux_28_Mux_0_i2_3_lut (.A(Q[1]), .B(Q[7]), .C(Key_c_0), .Z(n2_adj_214)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(36[4] 101[11])
    defparam mux_28_Mux_0_i2_3_lut.init = 16'hcaca;
    LUT4 mux_28_Mux_0_i3_3_lut (.A(Ent_c_0), .B(n2_adj_214), .C(Key_c_1), 
         .Z(n113)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(36[4] 101[11])
    defparam mux_28_Mux_0_i3_3_lut.init = 16'hcaca;
    LUT4 mux_28_Mux_6_i2_3_lut (.A(Q[7]), .B(Q[5]), .C(Key_c_0), .Z(n2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(36[4] 101[11])
    defparam mux_28_Mux_6_i2_3_lut.init = 16'hcaca;
    FD1S3IX Sal__i8 (.D(Q[7]), .CK(outdiv0_c), .CD(clr_c), .Q(Sal_c_7));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(34[2] 102[11])
    defparam Sal__i8.GSR = "ENABLED";
    LUT4 mux_28_Mux_7_i3_3_lut (.A(Ent_c_7), .B(n2_adj_217), .C(Key_c_1), 
         .Z(n106)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(36[4] 101[11])
    defparam mux_28_Mux_7_i3_3_lut.init = 16'hcaca;
    LUT4 mux_28_Mux_7_i2_3_lut (.A(Q[0]), .B(Q[6]), .C(Key_c_0), .Z(n2_adj_217)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(36[4] 101[11])
    defparam mux_28_Mux_7_i2_3_lut.init = 16'hcaca;
    FD1P3IX Q__i6 (.D(n107), .SP(outdiv0_c_enable_8), .CD(clr_c), .CK(outdiv0_c), 
            .Q(Q[6]));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(34[2] 102[11])
    defparam Q__i6.GSR = "ENABLED";
    FD1P3IX Q__i7 (.D(n106), .SP(outdiv0_c_enable_8), .CD(clr_c), .CK(outdiv0_c), 
            .Q(Q[7]));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(34[2] 102[11])
    defparam Q__i7.GSR = "ENABLED";
    FD1P3IX Q__i0 (.D(n113), .SP(outdiv0_c_enable_8), .CD(clr_c), .CK(outdiv0_c), 
            .Q(Q[0]));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(34[2] 102[11])
    defparam Q__i0.GSR = "ENABLED";
    TSALL TSALL_INST (.TSALL(GND_net));
    GSR GSR_INST (.GSR(VCC_net));
    FD1S3IX Sal__i7 (.D(Q[6]), .CK(outdiv0_c), .CD(clr_c), .Q(Sal_c_6));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(34[2] 102[11])
    defparam Sal__i7.GSR = "ENABLED";
    FD1S3IX Sal__i6 (.D(Q[5]), .CK(outdiv0_c), .CD(clr_c), .Q(Sal_c_5));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(34[2] 102[11])
    defparam Sal__i6.GSR = "ENABLED";
    FD1S3IX Sal__i5 (.D(Q[4]), .CK(outdiv0_c), .CD(clr_c), .Q(Sal_c_4));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(34[2] 102[11])
    defparam Sal__i5.GSR = "ENABLED";
    FD1S3IX Sal__i4 (.D(Q[3]), .CK(outdiv0_c), .CD(clr_c), .Q(Sal_c_3));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(34[2] 102[11])
    defparam Sal__i4.GSR = "ENABLED";
    FD1S3IX Sal__i3 (.D(Q[2]), .CK(outdiv0_c), .CD(clr_c), .Q(Sal_c_2));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(34[2] 102[11])
    defparam Sal__i3.GSR = "ENABLED";
    FD1S3IX Sal__i2 (.D(Q[1]), .CK(outdiv0_c), .CD(clr_c), .Q(Sal_c_1));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(34[2] 102[11])
    defparam Sal__i2.GSR = "ENABLED";
    VLO i1 (.Z(GND_net));
    osc00 UD00 (.GND_net(GND_net), .sclk(sclk));   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(24[8:13])
    
endmodule
//
// Verilog Description of module div00
//

module div00 (sclk, indiv0_c_1, indiv0_c_2, indiv0_c_3, indiv0_c_0, 
            outdiv0_c, GND_net);
    input sclk;
    input indiv0_c_1;
    input indiv0_c_2;
    input indiv0_c_3;
    input indiv0_c_0;
    output outdiv0_c;
    input GND_net;
    
    wire sclk /* synthesis SET_AS_NETWORK=sclk, is_clock=1 */ ;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(19[8:12])
    wire outdiv0_c /* synthesis is_clock=1, SET_AS_NETWORK=outdiv0_c */ ;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(12[3:10])
    wire [20:0]sdiv;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/div00vhdl/div00.vhdl(18[8:12])
    
    wire sclk_enable_22, n438;
    wire [20:0]n89;
    
    wire n952, n4, n1070, n889, n934, n1083, n1054, n1053, n1055, 
        n1006, n6, n1002, n998, n58, n990, n22, n1081, n1056, 
        n976, n1023, n992, n966, n789, n1010, n781, n1085, n1084, 
        n1086, n16, n20, n940, n40, n40_adj_210, n306, n22_adj_211, 
        n434, n982, n436, n24, outdiv_N_195, n842, n841, n840, 
        n839, n838, n837, n836, n835, n834, n833, sclk_enable_18;
    
    FD1P3IX sdiv_87__i15 (.D(n89[15]), .SP(sclk_enable_22), .CD(n438), 
            .CK(sclk), .Q(sdiv[15])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87__i15.GSR = "ENABLED";
    FD1P3IX sdiv_87__i16 (.D(n89[16]), .SP(sclk_enable_22), .CD(n438), 
            .CK(sclk), .Q(sdiv[16])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87__i16.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(n952), .B(n4), .C(n1070), .D(indiv0_c_1), .Z(n889)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;
    defparam i2_4_lut.init = 16'hfcee;
    LUT4 i2_3_lut_rep_13 (.A(n934), .B(sdiv[14]), .C(sdiv[13]), .Z(n1083)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_13.init = 16'hfefe;
    PFUMX i865 (.BLUT(n1054), .ALUT(n1053), .C0(indiv0_c_2), .Z(n1055));
    LUT4 i850_4_lut (.A(n1006), .B(n6), .C(indiv0_c_1), .D(n1002), .Z(n438)) /* synthesis lut_function=(!((B+!((D)+!C))+!A)) */ ;
    defparam i850_4_lut.init = 16'h2202;
    LUT4 n998_bdd_4_lut_864 (.A(n998), .B(n58), .C(indiv0_c_3), .D(indiv0_c_1), 
         .Z(n1053)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B (C (D))+!B (C)))) */ ;
    defparam n998_bdd_4_lut_864.init = 16'h05cd;
    LUT4 i839_4_lut (.A(sdiv[20]), .B(indiv0_c_2), .C(n990), .D(indiv0_c_0), 
         .Z(n1006)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;
    defparam i839_4_lut.init = 16'hfaee;
    LUT4 i2_4_lut_adj_1 (.A(indiv0_c_3), .B(n1055), .C(n22), .D(indiv0_c_2), 
         .Z(n6)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B)) */ ;
    defparam i2_4_lut_adj_1.init = 16'hecee;
    LUT4 n34_bdd_4_lut (.A(n1081), .B(indiv0_c_2), .C(sdiv[18]), .D(sdiv[17]), 
         .Z(n1056)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (C)+!B (C (D)))) */ ;
    defparam n34_bdd_4_lut.init = 16'hf8e0;
    LUT4 i810_3_lut (.A(sdiv[15]), .B(sdiv[16]), .C(n1083), .Z(n976)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i810_3_lut.init = 16'hecec;
    LUT4 indiv0_c_0_bdd_4_lut (.A(indiv0_c_0), .B(sdiv[15]), .C(sdiv[16]), 
         .D(n1083), .Z(n1070)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+(D))+!B (C))) */ ;
    defparam indiv0_c_0_bdd_4_lut.init = 16'hf4d0;
    LUT4 i826_4_lut (.A(indiv0_c_0), .B(indiv0_c_3), .C(n1023), .D(n976), 
         .Z(n992)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i826_4_lut.init = 16'heeea;
    LUT4 i836_4_lut (.A(sdiv[18]), .B(n992), .C(n966), .D(n789), .Z(n1002)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i836_4_lut.init = 16'hc8c0;
    LUT4 i852_3_lut (.A(indiv0_c_3), .B(indiv0_c_2), .C(indiv0_c_1), .Z(n1010)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/div00vhdl/div00.vhdl(23[4] 74[13])
    defparam i852_3_lut.init = 16'hfefe;
    LUT4 i824_4_lut (.A(sdiv[19]), .B(indiv0_c_1), .C(n781), .D(n1085), 
         .Z(n990)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;
    defparam i824_4_lut.init = 16'heeec;
    LUT4 i1_2_lut_3_lut_4_lut (.A(sdiv[20]), .B(sdiv[19]), .C(sdiv[17]), 
         .D(sdiv[18]), .Z(n4)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i832_4_lut (.A(sdiv[17]), .B(indiv0_c_1), .C(n1084), .D(n781), 
         .Z(n998)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i832_4_lut.init = 16'hc8c0;
    LUT4 i1_4_lut (.A(n1086), .B(indiv0_c_0), .C(n952), .D(n1085), .Z(n58)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hcccd;
    LUT4 i3_2_lut (.A(sdiv[12]), .B(sdiv[6]), .Z(n16)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i7_3_lut (.A(sdiv[2]), .B(sdiv[10]), .C(sdiv[7]), .Z(n20)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i7_3_lut.init = 16'hfefe;
    LUT4 i2_4_lut_adj_2 (.A(n940), .B(sdiv[14]), .C(sdiv[13]), .D(n934), 
         .Z(n952)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i2_4_lut_adj_2.init = 16'hfeee;
    LUT4 indiv_3__I_0_i1_4_lut (.A(n40), .B(n40_adj_210), .C(indiv0_c_0), 
         .D(sdiv[20]), .Z(n306)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/div00vhdl/div00.vhdl(23[4] 74[13])
    defparam indiv_3__I_0_i1_4_lut.init = 16'hfac0;
    LUT4 i9_4_lut (.A(sdiv[4]), .B(sdiv[5]), .C(sdiv[8]), .D(sdiv[1]), 
         .Z(n22_adj_211)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut.init = 16'hfffe;
    FD1P3IX sdiv_87__i17 (.D(n89[17]), .SP(sclk_enable_22), .CD(n438), 
            .CK(sclk), .Q(sdiv[17])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87__i17.GSR = "ENABLED";
    FD1P3IX sdiv_87__i18 (.D(n89[18]), .SP(sclk_enable_22), .CD(n438), 
            .CK(sclk), .Q(sdiv[18])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87__i18.GSR = "ENABLED";
    LUT4 indiv_3__I_0_i7_3_lut_4_lut (.A(n1056), .B(n1086), .C(indiv0_c_3), 
         .D(n889), .Z(n434)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam indiv_3__I_0_i7_3_lut_4_lut.init = 16'hfe0e;
    FD1P3IX sdiv_87__i19 (.D(n89[19]), .SP(sclk_enable_22), .CD(n438), 
            .CK(sclk), .Q(sdiv[19])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87__i19.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_3 (.A(n1086), .B(n982), .C(n1085), .D(indiv0_c_0), 
         .Z(n22)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_4_lut_adj_3.init = 16'h0100;
    PFUMX indiv_3__I_0_i15 (.BLUT(n306), .ALUT(n434), .C0(n1010), .Z(n436)) /* synthesis LSE_LINE_FILE_ID=24, LSE_LCOL=8, LSE_RCOL=13, LSE_LLINE=26, LSE_RLINE=26 */ ;
    LUT4 i1_2_lut (.A(sdiv[16]), .B(sdiv[15]), .Z(n940)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    FD1P3IX sdiv_87__i20 (.D(n89[20]), .SP(sclk_enable_22), .CD(n438), 
            .CK(sclk), .Q(sdiv[20])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87__i20.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_14_3_lut (.A(sdiv[20]), .B(sdiv[19]), .C(sdiv[18]), 
         .Z(n1084)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_14_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_15 (.A(sdiv[18]), .B(sdiv[17]), .Z(n1085)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_15.init = 16'heeee;
    LUT4 i1_rep_4_3_lut_4_lut (.A(sdiv[18]), .B(sdiv[17]), .C(sdiv[19]), 
         .D(sdiv[20]), .Z(n1023)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_rep_4_3_lut_4_lut.init = 16'hfffe;
    LUT4 i12_4_lut (.A(sdiv[11]), .B(n24), .C(n20), .D(sdiv[3]), .Z(n934)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i280_2_lut (.A(outdiv0_c), .B(n436), .Z(outdiv_N_195)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/div00vhdl/div00.vhdl(23[4] 74[13])
    defparam i280_2_lut.init = 16'h6666;
    LUT4 i151_2_lut_rep_11_3_lut (.A(sdiv[15]), .B(n1083), .C(sdiv[16]), 
         .Z(n1081)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i151_2_lut_rep_11_3_lut.init = 16'hfefe;
    LUT4 i134_2_lut_3_lut_4_lut (.A(n1081), .B(sdiv[17]), .C(sdiv[19]), 
         .D(sdiv[18]), .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i134_2_lut_3_lut_4_lut.init = 16'hfffe;
    FD1P3IX sdiv_87__i3 (.D(n89[3]), .SP(sclk_enable_22), .CD(n438), .CK(sclk), 
            .Q(sdiv[3])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87__i3.GSR = "ENABLED";
    FD1P3IX sdiv_87__i1 (.D(n89[1]), .SP(sclk_enable_22), .CD(n438), .CK(sclk), 
            .Q(sdiv[1])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87__i1.GSR = "ENABLED";
    FD1P3IX sdiv_87__i7 (.D(n89[7]), .SP(sclk_enable_22), .CD(n438), .CK(sclk), 
            .Q(sdiv[7])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87__i7.GSR = "ENABLED";
    LUT4 i11_4_lut (.A(sdiv[0]), .B(n22_adj_211), .C(n16), .D(sdiv[9]), 
         .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11_4_lut.init = 16'hfffe;
    FD1P3IX sdiv_87__i4 (.D(n89[4]), .SP(sclk_enable_22), .CD(n438), .CK(sclk), 
            .Q(sdiv[4])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87__i4.GSR = "ENABLED";
    LUT4 i152_2_lut_3_lut_4_lut (.A(n1081), .B(sdiv[17]), .C(sdiv[19]), 
         .D(sdiv[18]), .Z(n40_adj_210)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i152_2_lut_3_lut_4_lut.init = 16'hf0e0;
    FD1P3IX sdiv_87__i8 (.D(n89[8]), .SP(sclk_enable_22), .CD(n438), .CK(sclk), 
            .Q(sdiv[8])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87__i8.GSR = "ENABLED";
    FD1P3IX sdiv_87__i5 (.D(n89[5]), .SP(sclk_enable_22), .CD(n438), .CK(sclk), 
            .Q(sdiv[5])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87__i5.GSR = "ENABLED";
    LUT4 i855_4_lut (.A(indiv0_c_0), .B(indiv0_c_3), .C(indiv0_c_1), .D(indiv0_c_2), 
         .Z(sclk_enable_22)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (B (D)+!B !(C+(D)))) */ ;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/div00vhdl/div00.vhdl(23[4] 74[13])
    defparam i855_4_lut.init = 16'he423;
    LUT4 n998_bdd_4_lut (.A(n789), .B(sdiv[19]), .C(sdiv[18]), .D(indiv0_c_0), 
         .Z(n1054)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam n998_bdd_4_lut.init = 16'h0001;
    CCU2D sdiv_87_add_4_21 (.A0(sdiv[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(sdiv[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n842), .S0(n89[19]), .S1(n89[20]));   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87_add_4_21.INIT0 = 16'hfaaa;
    defparam sdiv_87_add_4_21.INIT1 = 16'hfaaa;
    defparam sdiv_87_add_4_21.INJECT1_0 = "NO";
    defparam sdiv_87_add_4_21.INJECT1_1 = "NO";
    CCU2D sdiv_87_add_4_19 (.A0(sdiv[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(sdiv[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n841), .COUT(n842), .S0(n89[17]), .S1(n89[18]));   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87_add_4_19.INIT0 = 16'hfaaa;
    defparam sdiv_87_add_4_19.INIT1 = 16'hfaaa;
    defparam sdiv_87_add_4_19.INJECT1_0 = "NO";
    defparam sdiv_87_add_4_19.INJECT1_1 = "NO";
    CCU2D sdiv_87_add_4_17 (.A0(sdiv[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(sdiv[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n840), .COUT(n841), .S0(n89[15]), .S1(n89[16]));   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87_add_4_17.INIT0 = 16'hfaaa;
    defparam sdiv_87_add_4_17.INIT1 = 16'hfaaa;
    defparam sdiv_87_add_4_17.INJECT1_0 = "NO";
    defparam sdiv_87_add_4_17.INJECT1_1 = "NO";
    LUT4 i502_2_lut_rep_16 (.A(sdiv[20]), .B(sdiv[19]), .Z(n1086)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i502_2_lut_rep_16.init = 16'heeee;
    CCU2D sdiv_87_add_4_15 (.A0(sdiv[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(sdiv[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n839), .COUT(n840), .S0(n89[13]), .S1(n89[14]));   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87_add_4_15.INIT0 = 16'hfaaa;
    defparam sdiv_87_add_4_15.INIT1 = 16'hfaaa;
    defparam sdiv_87_add_4_15.INJECT1_0 = "NO";
    defparam sdiv_87_add_4_15.INJECT1_1 = "NO";
    CCU2D sdiv_87_add_4_13 (.A0(sdiv[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(sdiv[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n838), .COUT(n839), .S0(n89[11]), .S1(n89[12]));   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87_add_4_13.INIT0 = 16'hfaaa;
    defparam sdiv_87_add_4_13.INIT1 = 16'hfaaa;
    defparam sdiv_87_add_4_13.INJECT1_0 = "NO";
    defparam sdiv_87_add_4_13.INJECT1_1 = "NO";
    CCU2D sdiv_87_add_4_11 (.A0(sdiv[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(sdiv[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n837), .COUT(n838), .S0(n89[9]), .S1(n89[10]));   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87_add_4_11.INIT0 = 16'hfaaa;
    defparam sdiv_87_add_4_11.INIT1 = 16'hfaaa;
    defparam sdiv_87_add_4_11.INJECT1_0 = "NO";
    defparam sdiv_87_add_4_11.INJECT1_1 = "NO";
    CCU2D sdiv_87_add_4_9 (.A0(sdiv[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sdiv[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n836), 
          .COUT(n837), .S0(n89[7]), .S1(n89[8]));   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87_add_4_9.INIT0 = 16'hfaaa;
    defparam sdiv_87_add_4_9.INIT1 = 16'hfaaa;
    defparam sdiv_87_add_4_9.INJECT1_0 = "NO";
    defparam sdiv_87_add_4_9.INJECT1_1 = "NO";
    CCU2D sdiv_87_add_4_7 (.A0(sdiv[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sdiv[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n835), 
          .COUT(n836), .S0(n89[5]), .S1(n89[6]));   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87_add_4_7.INIT0 = 16'hfaaa;
    defparam sdiv_87_add_4_7.INIT1 = 16'hfaaa;
    defparam sdiv_87_add_4_7.INJECT1_0 = "NO";
    defparam sdiv_87_add_4_7.INJECT1_1 = "NO";
    FD1P3IX sdiv_87__i6 (.D(n89[6]), .SP(sclk_enable_22), .CD(n438), .CK(sclk), 
            .Q(sdiv[6])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87__i6.GSR = "ENABLED";
    LUT4 i816_2_lut_3_lut (.A(sdiv[15]), .B(n1083), .C(sdiv[16]), .Z(n982)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i816_2_lut_3_lut.init = 16'he0e0;
    FD1P3IX sdiv_87__i13 (.D(n89[13]), .SP(sclk_enable_22), .CD(n438), 
            .CK(sclk), .Q(sdiv[13])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87__i13.GSR = "ENABLED";
    FD1P3IX sdiv_87__i14 (.D(n89[14]), .SP(sclk_enable_22), .CD(n438), 
            .CK(sclk), .Q(sdiv[14])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87__i14.GSR = "ENABLED";
    CCU2D sdiv_87_add_4_5 (.A0(sdiv[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sdiv[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n834), 
          .COUT(n835), .S0(n89[3]), .S1(n89[4]));   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87_add_4_5.INIT0 = 16'hfaaa;
    defparam sdiv_87_add_4_5.INIT1 = 16'hfaaa;
    defparam sdiv_87_add_4_5.INJECT1_0 = "NO";
    defparam sdiv_87_add_4_5.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut (.A(sdiv[15]), .B(n1083), .C(sdiv[17]), .D(sdiv[16]), 
         .Z(n789)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    CCU2D sdiv_87_add_4_3 (.A0(sdiv[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sdiv[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n833), 
          .COUT(n834), .S0(n89[1]), .S1(n89[2]));   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87_add_4_3.INIT0 = 16'hfaaa;
    defparam sdiv_87_add_4_3.INIT1 = 16'hfaaa;
    defparam sdiv_87_add_4_3.INJECT1_0 = "NO";
    defparam sdiv_87_add_4_3.INJECT1_1 = "NO";
    LUT4 i800_3_lut (.A(sdiv[20]), .B(indiv0_c_2), .C(sdiv[19]), .Z(n966)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i800_3_lut.init = 16'hfefe;
    CCU2D sdiv_87_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sdiv[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n833), 
          .S1(n89[0]));   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87_add_4_1.INIT0 = 16'hF000;
    defparam sdiv_87_add_4_1.INIT1 = 16'h0555;
    defparam sdiv_87_add_4_1.INJECT1_0 = "NO";
    defparam sdiv_87_add_4_1.INJECT1_1 = "NO";
    FD1P3IX sdiv_87__i0 (.D(n89[0]), .SP(sclk_enable_22), .CD(n438), .CK(sclk), 
            .Q(sdiv[0])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87__i0.GSR = "ENABLED";
    FD1P3IX sdiv_87__i12 (.D(n89[12]), .SP(sclk_enable_22), .CD(n438), 
            .CK(sclk), .Q(sdiv[12])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87__i12.GSR = "ENABLED";
    LUT4 i27_4_lut (.A(indiv0_c_2), .B(indiv0_c_3), .C(indiv0_c_0), .D(indiv0_c_1), 
         .Z(sclk_enable_18)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !(B+!(C+!(D)))) */ ;
    defparam i27_4_lut.init = 16'hb819;
    FD1P3AX outdiv_43 (.D(outdiv_N_195), .SP(sclk_enable_18), .CK(sclk), 
            .Q(outdiv0_c)) /* synthesis LSE_LINE_FILE_ID=24, LSE_LCOL=8, LSE_RCOL=13, LSE_LLINE=26, LSE_RLINE=26 */ ;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/div00vhdl/div00.vhdl(22[3] 75[10])
    defparam outdiv_43.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut (.A(n934), .B(sdiv[14]), .C(sdiv[13]), .D(n940), 
         .Z(n781)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hfffe;
    FD1P3IX sdiv_87__i9 (.D(n89[9]), .SP(sclk_enable_22), .CD(n438), .CK(sclk), 
            .Q(sdiv[9])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87__i9.GSR = "ENABLED";
    FD1P3IX sdiv_87__i10 (.D(n89[10]), .SP(sclk_enable_22), .CD(n438), 
            .CK(sclk), .Q(sdiv[10])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87__i10.GSR = "ENABLED";
    FD1P3IX sdiv_87__i2 (.D(n89[2]), .SP(sclk_enable_22), .CD(n438), .CK(sclk), 
            .Q(sdiv[2])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87__i2.GSR = "ENABLED";
    FD1P3IX sdiv_87__i11 (.D(n89[11]), .SP(sclk_enable_22), .CD(n438), 
            .CK(sclk), .Q(sdiv[11])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.9_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam sdiv_87__i11.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module osc00
//

module osc00 (GND_net, sclk);
    input GND_net;
    output sclk;
    
    wire sclk /* synthesis SET_AS_NETWORK=sclk, is_clock=1 */ ;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/registro.vhdl(19[8:12])
    
    OSCH OSCInst0 (.STDBY(GND_net), .OSC(sclk)) /* synthesis NOM_FREQ="2.08", syn_instantiated=1, LSE_LINE_FILE_ID=24, LSE_LCOL=8, LSE_RCOL=13, LSE_LLINE=24, LSE_RLINE=24 */ ;   // c:/users/carmatchmx/desktop/practicas1erparcial/1617mux_y_registro-rot/registro/div00vhdl/osc00.vhdl(24[13:17])
    defparam OSCInst0.NOM_FREQ = "2.08";
    
endmodule
//
// Verilog Description of module \OSCH("2.08")(1,4) 
// module not written out since it is a black-box. 
//

