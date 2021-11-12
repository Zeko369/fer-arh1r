# CONAS v3.0 output file
#
# Processor name: ARM 7
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:/Users/zekan/FER_ARH/ARM/zadatak1.a
#
#
<1,0>	                      ;; Lab1, zadatak1.a
<2,0>	                      ;; Fran Zekan
<3,0>	                      ;
<4,0>	                      ;        ORG 0
<5,0>	00000000  50 DC A0 E3 ;        MOV SP, #0x5000
<6,0>	00000004  50 0E A0 E3 ;        MOV R0, #DATA
<7,0>	                      ;
<8,0>	00000008  53 6E A0 E3 ;        MOV R6, #STOP
<9,0>	0000000C  04 70 96 E4 ;        LDR R7, [R6], #4
<10,0>	00000010  40 6D A0 E3 ;        MOV R6, #OUTPUT
<11,0>	                      ;
<12,0>	00000014  04 10 90 E4 ;LOOP    LDR R1, [R0], #4
<13,0>	00000018  07 00 51 E1 ;        CMP R1, R7
<14,0>	0000001C  17 00 00 0A ;        BEQ END
<15,0>	                      ;
<16,0>	00000020  04 20 90 E4 ;        LDR R2, [R0], #4
<17,0>	00000024  04 30 90 E4 ;        LDR R3, [R0], #4
<18,0>	                      ;
<19,0>	00000028  00 00 51 E3 ;        CMP R1, #0x0
<20,0>	0000002C  06 00 00 0A ;        BEQ SUM_NUM
<21,0>	00000030  01 00 51 E3 ;        CMP R1, #0x1
<22,0>	00000034  06 00 00 0A ;        BEQ SUB_NUM
<23,0>	00000038  02 00 51 E3 ;        CMP R1, #0x2
<24,0>	0000003C  06 00 00 0A ;        BEQ MULTIPL
<25,0>	00000040  03 00 51 E3 ;        CMP R1, #0x3
<26,0>	00000044  06 00 00 0A ;        BEQ DIV_NUM
<27,0>	                      ;
<28,0>	00000048  0C 00 00 EA ;        B END                  ; if not 1/2/3/4 or 8080, die
<29,0>	                      ;
<30,0>	                      ;
<31,0>	0000004C  03 10 82 E0 ;SUM_NUM ADD R1, R2, R3
<32,0>	00000050  08 00 00 EA ;        B CONTIN
<33,0>	00000054  03 10 42 E0 ;SUB_NUM SUB R1, R2, R3
<34,0>	00000058  06 00 00 EA ;        B CONTIN
<35,0>	0000005C  92 03 01 E0 ;MULTIPL MUL R1, R2, R3
<36,0>	00000060  04 00 00 EA ;        B CONTIN
<37,0>	00000064  01 10 A0 E3 ;DIV_NUM MOV R1, #1
<38,0>	                      ;        ; SUB SP, SP, #4         ; This breaks for some reason?
<39,0>	00000068  0C 00 2D E9 ;        STMFD SP!, {R2, R3}
<40,0>	0000006C  08 00 00 EB ;        BL DIJELI
<41,0>	00000070  08 D0 8D E2 ;        ADD SP, SP, #8
<42,0>	00000074  00 10 9D E5 ;        LDR R1, [SP]
<43,0>	                      ;
<44,0>	00000078  04 10 86 E4 ;CONTIN  STR R1, [R6], #4
<45,0>	0000007C  E4 FF FF EA ;        B LOOP
<46,0>	                      ;
<47,0>	                      ;
<48,0>	00000080  90 20 A0 E3 ;END     MOV R2, #END_SEQ
<49,0>	00000084  04 10 92 E4 ;        LDR R1, [R2], #4
<50,0>	00000088  04 10 86 E4 ;        STR R1, [R6], #4
<51,0>	0000008C  56 34 12 EF ;        SWI 0x123456
<52,0>	                      ;
<53,0>	00000090! FF FF FF FF ;END_SEQ DW 0xFFFFFFFF          ; END
<54,0>	                      ;
<55,0>	00000094  07 00 2D E9 ;DIJELI  STMFD SP!, {R0, R1, R2}; Integer divide subroutine
<56,0>	00000098  00 00 A0 E3 ;        MOV R0, #0x0
<57,0>	0000009C  0C 10 9D E5 ;        LDR R1, [SP, #12]
<58,0>	000000A0  10 20 9D E5 ;        LDR R2, [SP, #16]
<59,0>	                      ;
<60,0>	000000A4  00 00 52 E3 ;        CMP R2, #0x0           ; check for zero division
<61,0>	000000A8  0F 00 00 0A ;        BEQ RET
<62,0>	                      ;
<63,0>	000000AC  00 50 A0 E3 ;        MOV R5, #0
<64,0>	000000B0  80 04 11 E3 ;        TST R1, #0x80000000
<65,0>	000000B4  02 00 00 0A ;        BEQ R1_POS
<66,0>	000000B8  01 50 85 E2 ;        ADD R5, R5, #1
<67,0>	000000BC  01 10 E0 E1 ;        MVN R1, R1
<68,0>	000000C0  01 10 81 E2 ;        ADD R1, R1, #1       
<69,0>	                      ;
<70,0>	000000C4  80 04 12 E3 ;R1_POS  TST R2, #0x80000000
<71,0>	000000C8  02 00 00 0A ;        BEQ DIVLOOP
<72,0>	000000CC  01 50 85 E2 ;        ADD R5, R5, #1
<73,0>	000000D0  02 20 E0 E1 ;        MVN R2, R2
<74,0>	000000D4  01 20 82 E2 ;        ADD R2, R2, #1
<75,0>	                      ;
<76,0>	000000D8  02 00 51 E1 ;DIVLOOP CMP R1, R2
<77,0>	000000DC  02 00 00 3A ;        BLO RET
<78,0>	000000E0  02 10 41 E0 ;        SUB R1, R1, R2
<79,0>	000000E4  01 00 80 E2 ;        ADD R0, R0, #1
<80,0>	000000E8  FA FF FF EA ;        B DIVLOOP
<81,0>	                      ;
<82,0>	000000EC  01 00 55 E3 ;RET     CMP R5, #1
<83,0>	000000F0  01 00 00 1A ;        BNE EXIT
<84,0>	000000F4  01 00 40 E2 ;        SUB R0, R0, #1
<85,0>	000000F8  00 00 E0 E1 ;        MVN R0, R0   
<86,0>	                      ;
<87,0>	000000FC  14 00 8D E5 ;EXIT    STR R0, [SP, #20]
<88,0>	00000100  07 00 BD E8 ;        LDMFD SP!, {R0, R1, R2}
<89,0>	00000104  0E F0 A0 E1 ;        MOV PC, LR
<90,0>	                      ;
<91,0>	                      ;
<92,0>	                      ;        ORG 0x500
<93,0>	00000500! 03 00 00 00 ;DATA    DW 0x0003, 0xFFFFFEFF, 0x0010, 0x0001, 0x01F4, 0xFFFFFD44, 0x0002, 0xFFFFFFFE, 0x000A, 0x0003, 0xFFFFF000, 0xFFFFFFC0
|         FF FE FF FF
|         10 00 00 00
|         01 00 00 00
|         F4 01 00 00
|         44 FD FF FF
|         02 00 00 00
|         FE FF FF FF
|         0A 00 00 00
|         03 00 00 00
|         00 F0 FF FF
|         C0 FF FF FF
<94,0>	                      ;;DATA    DW 0x0003, 0xFFFFFFFE, 0xFFFFFFFE, 0x0001, 0x01F4, 0xFFFFFD44, 0x0002, 0xFFFFFFFE, 0x000A, 0x0003, 0xFFFFF000, 0xFFFFFFC0
<95,0>	00000530! 80 80 80 80 ;STOP    DW 0x80808080          ; STOP SEQUENCE
<96,0>	                      ;
<97,0>	                      ;        ORG 0x1000
<98,0>	00001000! 00 00 00 00 ;OUTPUT  DW 0, 0, 0, 0, 0, 0, 0 ; Output space
|         00 00 00 00
|         00 00 00 00
|         00 00 00 00
|         00 00 00 00
|         00 00 00 00
|         00 00 00 00
<99,0>	                      ;
<100,0>	                      ;        ORG 0x5000
<101,0>	00005000! 00 00 00 00 ;DEBUG   DW 0, 0, 0, 0, 0, 0, 0 ; debug
|         00 00 00 00
|         00 00 00 00
|         00 00 00 00
|         00 00 00 00
|         00 00 00 00
|         00 00 00 00
#
# Debug Data
#
.debug:
<!98,0> <!101,0> 
#
#
# Assembling: OK