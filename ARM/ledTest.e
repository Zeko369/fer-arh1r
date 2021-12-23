# CONAS v3.0 output file
#
# Processor name: ARM 7
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:/Users/zekan/FER_ARH/ARM/ledTest.a
#
#
<1,0>	                      ;        ORG 0
<2,0>	00000000  EC 11 9F E5 ;        LDR R1, GPIO
<3,0>	                      ;        
<4,0>	00000004  E0 20 A0 E3 ;        MOV R2, #0b11100000
<5,0>	00000008  08 20 81 E5 ;        STR R2, [R1, #8]
<6,0>	0000000C  00 20 A0 E3 ;        MOV R2, #0b00000000
<7,0>	00000010  00 20 81 E5 ;        STR R2, [R1, #0]
<8,0>	                      ;
<9,0>	00000014  7E 9F A0 E3 ;        MOV R9, #LEDS
<10,0>	00000018  00 30 A0 E3 ;        MOV R3, #0
<11,0>	                      ;PETLJA
<12,0>	0000001C  03 40 D9 E7 ;        LDRB R4, [R9, R3]
<13,0>	                      ;
<14,0>	00000020  CC 11 9F E5 ;        LDR R1, GPIO
<15,0>	00000024  00 40 C1 E5 ;        STRB R4, [R1, #0]
<16,0>	                      ;
<17,0>	00000028  03 00 53 E3 ;        CMP R3, #3 ; index 3
<18,0>	0000002C  01 00 00 0A ;        BEQ RST_CNT
<19,0>	00000030  01 30 83 E2 ;        ADD R3, R3, #1
<20,0>	00000034  F8 FF FF EA ;        B PETLJA
<21,0>	00000038  00 30 A0 E3 ;RST_CNT MOV R3, #0
<22,0>	0000003C  F6 FF FF EA ;        B PETLJA
<23,0>	                      ;
<24,0>	                      ;        ORG 500
<25,0>	                      ;
<26,0>	000001F4! 00 0B FF FF ;GPIO DW 0xFFFF0B00
<27,0>	000001F8! 20 60 80 40 ;LEDS DB 0b00100000, 0b01100000, 0b10000000, 0b01000000
<28,0>	                      ;
#
# Debug Data
#
.debug:
<!27,0> 
#
#
# Assembling: OK