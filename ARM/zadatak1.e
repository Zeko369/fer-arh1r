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
<1,0>	                      ;; Lab2, zadatak1.a
<2,0>	                      ;; Fran Zekan
<3,0>	                      ;
<4,0>	                      ;        ORG 0
<5,0>	00000000  05 00 00 EA ;        B MAIN
<6,0>	                      ;        ORG 0x18
<7,0>	00000018  13 00 00 EA ;        B RUN_IRQ
<8,0>	                      ;
<9,0>	                      ;MAIN
<10,0>	                      ;        ; init and reset outputs
<11,0>	0000001C  D4 11 9F E5 ;        LDR R1, GPIO
<12,0>	                      ;        
<13,0>	00000020  E0 20 A0 E3 ;        MOV R2, #0b11100000
<14,0>	00000024  08 20 81 E5 ;        STR R2, [R1, #8]
<15,0>	00000028  CC 21 9F E5 ;        LDR R2, LEDS
<16,0>	0000002C  00 20 81 E5 ;        STR R2, [R1, #0]
<17,0>	                      ;
<18,0>	                      ;        ; init irq
<19,0>	00000030  D2 F0 29 E3 ;        MSR CPSR, #0b11010010
<20,0>	00000034  40 DB A0 E3 ;        MOV R13, #0x10000
<21,0>	                      ;
<22,0>	00000038  D3 F0 29 E3 ;        MSR CPSR, #0b11010011
<23,0>	0000003C  FC DC A0 E3 ;        MOV R13, #0xFC00
<24,0>	                      ;
<25,0>	                      ;        ; init RTC
<26,0>	00000040  AC 01 9F E5 ;        LDR R0, RTC
<27,0>	                      ;
<28,0>	00000044  00 10 A0 E3 ;        MOV R1, #0
<29,0>	00000048  0C 10 80 E5 ;        STR R1, [R0, #0x0C] ; reset count
<30,0>	                      ;
<31,0>	0000004C  05 10 A0 E3 ;        MOV R1, #5
<32,0>	00000050  04 10 80 E5 ;        STR R1, [R0, #0x04] ; when to trigger
<33,0>	                      ;
<34,0>	00000054  01 10 A0 E3 ;        MOV R1, #1
<35,0>	00000058  10 10 80 E5 ;        STR R1, [R0, #0x10] ; allow interrupts
<36,0>	                      ;
<37,0>	0000005C  00 00 0F E1 ;        MRS R0, CPSR
<38,0>	00000060  80 00 C0 E3 ;        BIC R0, R0, #0b10000000
<39,0>	00000064  00 F0 29 E1 ;        MSR CPSR, R0
<40,0>	                      ;
<41,0>	00000068  FE FF FF EA ;LOOP    B LOOP
<42,0>	                      ;
<43,0>	0000006C  0F 00 2D E9 ;RUN_IRQ STMFD SP!, {R0-R3}
<44,0>	                      ;        
<45,0>	                      ;        ; set leds
<46,0>	00000070  80 01 9F E5 ;        LDR R0, GPIO
<47,0>	00000074  7F 2F A0 E3 ;        MOV R2, #LEDS
<48,0>	00000078  80 31 9F E5 ;        LDR R3, LED_IND    ; load curr index
<49,0>	0000007C  03 10 D2 E7 ;        LDRB R1, [R2, R3]  ; load curr state
<50,0>	00000080  00 10 C0 E5 ;        STRB R1, [R0, #0]
<51,0>	                      ;
<52,0>	00000084  03 00 53 E3 ;        CMP R3, #3 ; index 3
<53,0>	00000088  01 00 00 0A ;        BEQ RST_CNT
<54,0>	0000008C  01 30 83 E2 ;        ADD R3, R3, #1
<55,0>	00000090  00 00 00 EA ;        B DONE
<56,0>	00000094  00 30 A0 E3 ;RST_CNT MOV R3, #0
<57,0>	                      ;
<58,0>	00000098  60 31 8F E5 ;DONE    STR R3, LED_IND
<59,0>	0000009C  0F 00 BD E8 ;        LDMFD SP!, {R0-R3}
<60,0>	                      ;
<61,0>	                      ;        ; reset counter
<62,0>	000000A0  4C 01 9F E5 ;        LDR R0, RTC
<63,0>	000000A4  00 10 A0 E3 ;        MOV R1, #0
<64,0>	000000A8  0C 10 80 E5 ;        STR R1, [R0, #0x0C]
<65,0>	000000AC  08 10 80 E5 ;        STR R1, [R0, #0x08]
<66,0>	                      ;
<67,0>	000000B0  04 F0 5E E2 ;        SUBS PC, LR, #4
<68,0>	                      ;
<69,0>	                      ;        ORG 500
<70,0>	                      ;
<71,0>	                      ;; devices
<72,0>	000001F4! 00 0E FF FF ;RTC     DW 0xFFFF0E00
<73,0>	000001F8! 00 0B FF FF ;GPIO    DW 0xFFFF0B00
<74,0>	                      ;
<75,0>	                      ;; stores
<76,0>	000001FC! 20 60 80 40 ;LEDS    DB 0b00100000, 0b01100000, 0b10000000, 0b01000000
<77,0>	00000200! 01 00 00 00 ;LED_IND DW 1 ; since we start with state[0] on load
<78,0>	                      ;
<79,0>	                      ;
<80,0>	                      ;
#
# Debug Data
#
.debug:

#
#
# Assembling: OK