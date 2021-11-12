# CONAS v3.0 output file
#
# Processor name: ARM 7
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:/Users/zekan/FER_ARH/ARM/blokovi1.a
#
#
<1,0>	00000000  3C 10 A0 E3 ;        MOV R1, #BLOK_1
<2,0>	00000004  4C 20 A0 E3 ;        MOV R2, #BLOK_2
<3,0>	00000008  04 40 A0 E3 ;        MOV R4, #4
<4,0>	                      ;
<5,0>	0000000C  04 00 91 E4 ;LOOP    LDR R0, [R1], #4
<6,0>	00000010  04 00 82 E4 ;        STR R0, [R2], #4
<7,0>	                      ;
<8,0>	00000014  01 40 54 E2 ;        SUBS R4, R4, #1
<9,0>	00000018  FB FF FF 1A ;        BNE LOOP
<10,0>	                      ;
<11,0>	0000001C  04 40 A0 E3 ;        MOV R4, #4
<12,0>	00000020  4C 20 A0 E3 ;        MOV R2, #BLOK_2
<13,0>	00000024  00 00 92 E5 ;LOOP2   LDR R0, [R2]
<14,0>	00000028  01 00 80 E2 ;        ADD R0, R0, #1
<15,0>	0000002C  04 00 82 E4 ;        STR R0, [R2], #4
<16,0>	                      ;
<17,0>	00000030  01 40 54 E2 ;        SUBS R4, R4, #1
<18,0>	00000034  FA FF FF 1A ;        BNE LOOP2
<19,0>	                      ;
<20,0>	00000038  56 34 12 EF ;        SWI 0x123456
<21,0>	                      ;
<22,0>	0000003C! 4E 61 BC 00 ;BLOK_1  DW  12345678, 1234, 55667788, 0xABCD0044
|         D2 04 00 00
|         4C 6C 51 03
|         44 00 CD AB
<23,0>	                      ;
<24,0>	0000004C! 00 00 00 00 ;BLOK_2  DW  0, 0, 0, 0
|         00 00 00 00
|         00 00 00 00
|         00 00 00 00
#
# Debug Data
#
.debug:
<!22,0> <!24,0> 
#
#
# Assembling: OK