# Set up asyn for stream device
drvAsynSerialPortConfigure "$(COM1)", "/dev/ttyUSB$(COM1_USB_DEV_NUM)"
asynOctetSetInputEos ("$(COM1)",0,"\r\n")
asynOctetSetOutputEos ("$(COM1)",0,"\r\n")
asynSetOption ("$(COM1)", 0, "baud", "230400")
asynSetOption ("$(COM1)", 0, "bits", "8")
asynSetOption ("$(COM1)", 0, "parity", "none")
asynSetOption ("$(COM1)", 0, "stop", "1")

# Set up asyn for stream device
drvAsynSerialPortConfigure "$(COM2)", "/dev/ttyUSB$(COM2_USB_DEV_NUM)"
asynOctetSetInputEos ("$(COM2)",0,"\r\n")
asynOctetSetOutputEos ("$(COM2)",0,"\r\n")
asynSetOption ("$(COM2)", 0, "baud", "230400")
asynSetOption ("$(COM2)", 0, "bits", "8")
asynSetOption ("$(COM2)", 0, "parity", "none")
asynSetOption ("$(COM2)", 0, "stop", "1")

# Load FPGA database
dbLoadRecords("detector_controls.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), PRO=ics-dg-o.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("detector_controls.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), PRO=ics-dg-o.proto, SCAN_EVNT=$(SCAN_EVNT)")

dbLoadRecords("ro_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=GIT,	DESC=git hash,			OFF=0, 	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")		
dbLoadRecords("ro_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=BUILD,	DESC=build time,		OFF=1, 	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")	
dbLoadRecords("ro_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=ID-H,	DESC=device ID_H,		OFF=2, 	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("ro_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=ID-M, 	DESC=device ID_M,		OFF=3, 	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("ro_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=ID-L, 	DESC=device ID_L,		OFF=4, 	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=LPBK, 	DESC=loopback test register,	OFF=5, 	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")


dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=RST, 	DESC=reset/enable vector,	OFF=6,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
#dbLoadRecords("reset_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), DESC=reset/enable vector,	OFF=6,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")


dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=ADC-SEL,	DESC=ADC channel select,	OFF=7, 	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=ADC-DEC,	DESC=ADC DEC,			OFF=8, 	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=BPZ,	DESC=ADC Bypass Zeros,		OFF=9, 	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=CH0-T,	DESC=ADC Ch0 Threshold,		OFF=10,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=CH1-T,	DESC=ADC Ch1 Threshold,		OFF=11,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=CH2-T,	DESC=ADC Ch2 Threshold,		OFF=12,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=CH3-T,	DESC=ADC Ch3 Threshold,		OFF=13,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=RH-B2,	DESC=Rising Hold B2,		OFF=14,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=FH-B2,	DESC=Falling Hold B2,		OFF=15,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=SMPSB,	DESC=Samples B B2,		OFF=16,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=SMPSA,	DESC=Samples A B2,		OFF=17,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=MING,	DESC=ADC min gap b2,		OFF=18,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=SMACU,	DESC=Src MAC Adr Upper 2 bytes,	OFF=19,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=SMACL,	DESC=Src MAC Adr Lower 4 bytes,	OFF=20,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=DMACU,	DESC=Dst MAC Adr Upper 2 bytes,	OFF=21,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=DMACL,	DESC=Dst MAC Adr Lower 4 bytes,	OFF=22,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=SIP,	DESC=Source IP Address,		OFF=23,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=DIP,	DESC=Destination IP Address,	OFF=24,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=UDPS,	DESC=UDP Source Port,		OFF=25,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=UDPD,	DESC=UDP Destination Port,	OFF=26,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=PTO,	DESC=Packet Timeout,		OFF=27,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=Gain0,	DESC=Ch 0 Gain,			OFF=28,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=Gain1,	DESC=Ch 1 Gain,			OFF=29,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=Gain2,	DESC=Ch 2 Gain,			OFF=30,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=Gain3,	DESC=Ch 3 Gain,			OFF=31,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=Off0,	DESC=Ch 0 Offset,		OFF=32,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=Off1,	DESC=Ch 1 Offset,		OFF=33,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=Off2,	DESC=Ch 2 Offset,		OFF=34,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=Off3,	DESC=Ch 3 Offset,		OFF=35,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=SPI,	DESC=ADC SPI,			OFF=36,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=SI570-B,	DESC=SI570 base,		OFF=37,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=SI570-D,	DESC=SI570 data,		OFF=38,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=SI570-T,	DESC=SI570 trig,		OFF=39,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=LEDSEL, 	DESC=LED select,		OFF=40,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=PCNT01,	DESC=Pulse count C01,		OFF=41,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=PCNT23, 	DESC=Pulse count C23,		OFF=42,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=FCNT01,	DESC=FRM count C01,		OFF=43,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=FCNT23,	DESC=FRM count C23,		OFF=44,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=PKCNT,	DESC=Packet Count,		OFF=45,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=SNAP01,	DESC=C01 Snap,			OFF=46,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=SNAP23,	DESC=C23 Snap,			OFF=47,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("ro_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=STATUS0,	DESC=Status 0,			OFF=48,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("ro_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=STATUS1,	DESC=Status 1,			OFF=49,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("ro_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=STATUS2,	DESC=Status 2,			OFF=50,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=CLKSEL,	DESC=internal or external clk,	OFF=51,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=PAYSEL,	DESC=Payload select, ADC or TST,OFF=52,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("ro_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=TSU, 	DESC=TS MSB RBV,		OFF=53, 	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("ro_register.db", "SYS=$(SYS), DEV=$(DEV1), COM=$(COM1), REG=TSL, 	DESC=TS LSB RBV,		OFF=54, 	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")


#Load register map for device 2

dbLoadRecords("ro_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=GIT,	    DESC=git hash,			OFF=0, 	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")		
dbLoadRecords("ro_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=BUILD,	DESC=build time,		OFF=1, 	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")	
dbLoadRecords("ro_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=ID-H,	DESC=device ID_H,		OFF=2, 	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("ro_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=ID-M, 	DESC=device ID_M,		OFF=3, 	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("ro_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=ID-L, 	DESC=device ID_L,		OFF=4, 	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=LPBK, 	DESC=loopback test register,	OFF=5, 	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")

dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=RST, 	DESC=reset/enable vector,	OFF=6,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")

#dbLoadRecords("reset_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), DESC=reset/enable vector,	OFF=6,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")

dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=ADC-SEL,	DESC=ADC channel select,	OFF=7, 	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=ADC-DEC,	DESC=ADC DEC,			OFF=8, 	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=BPZ,	DESC=ADC Bypass Zeros,		OFF=9, 	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=CH0-T,	DESC=ADC Ch0 Threshold,		OFF=10,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=CH1-T,	DESC=ADC Ch1 Threshold,		OFF=11,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=CH2-T,	DESC=ADC Ch2 Threshold,		OFF=12,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=CH3-T,	DESC=ADC Ch3 Threshold,		OFF=13,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=RH-B2,	DESC=Rising Hold B2,		OFF=14,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=FH-B2,	DESC=Falling Hold B2,		OFF=15,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=SMPSB,	DESC=Samples B B2,		OFF=16,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=SMPSA,	DESC=Samples A B2,		OFF=17,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=MING,	DESC=ADC min gap b2,		OFF=18,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=SMACU,	DESC=Src MAC Adr Upper 2 bytes,	OFF=19,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=SMACL,	DESC=Src MAC Adr Lower 4 bytes,	OFF=20,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=DMACU,	DESC=Dst MAC Adr Upper 2 bytes,	OFF=21,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=DMACL,	DESC=Dst MAC Adr Lower 4 bytes,	OFF=22,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=SIP,	DESC=Source IP Address,		OFF=23,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=DIP,	DESC=Destination IP Address,	OFF=24,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=UDPS,	DESC=UDP Source Port,		OFF=25,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=UDPD,	DESC=UDP Destination Port,	OFF=26,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=PTO,	DESC=Packet Timeout,		OFF=27,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=Gain0,	DESC=Ch 0 Gain,			OFF=28,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=Gain1,	DESC=Ch 1 Gain,			OFF=29,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=Gain2,	DESC=Ch 2 Gain,			OFF=30,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=Gain3,	DESC=Ch 3 Gain,			OFF=31,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=Off0,	DESC=Ch 0 Offset,		OFF=32,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=Off1,	DESC=Ch 1 Offset,		OFF=33,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=Off2,	DESC=Ch 2 Offset,		OFF=34,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=Off3,	DESC=Ch 3 Offset,		OFF=35,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=SPI,	DESC=ADC SPI,			OFF=36,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=SI570-B,	DESC=SI570 base,		OFF=37,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=SI570-D,	DESC=SI570 data,		OFF=38,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=SI570-T,	DESC=SI570 trig,		OFF=39,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=LEDSEL, 	DESC=LED select,		OFF=40,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=PCNT01,	DESC=Pulse count C01,		OFF=41,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=PCNT23, 	DESC=Pulse count C23,		OFF=42,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=FCNT01,	DESC=FRM count C01,		OFF=43,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=FCNT23,	DESC=FRM count C23,		OFF=44,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=PKCNT,	DESC=Packet Count,		OFF=45,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=SNAP01,	DESC=C01 Snap,			OFF=46,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=SNAP23,	DESC=C23 Snap,			OFF=47,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("ro_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=STATUS0,	DESC=Status 0,			OFF=48,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("ro_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=STATUS1,	DESC=Status 1,			OFF=49,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("ro_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=STATUS2,	DESC=Status 2,			OFF=50,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=CLKSEL,	DESC=internal or external clk,	OFF=51,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("rw_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=PAYSEL,	DESC=Payload select, ADC or TST,OFF=52,	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("ro_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=TSU, 	DESC=TS MSB RBV,		OFF=53, 	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("ro_register.db", "SYS=$(SYS), DEV=$(DEV2), COM=$(COM2), REG=TSL, 	DESC=TS LSB RBV,		OFF=54, 	PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")


#dbLoadRecords("timestamp_sync.db", "SYS=$(SYS), DEV1=$(DEV1),EVR=$(EVR),TSEVT=$(SYNC_EVNT_LETTER), CODE=$(SYNC_EVNT), RST_ENA_DEL=0.2, ENA_TS_DEL=0.2, N_SEC_DELTA=$(N_SEC_TICKS), COM1=$(COM2), PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("timestamp_sync_2.db", "SYS=$(SYS), DEV1=$(DEV1), DEV2=$(DEV2), EVR=$(EVR),TSEVT=$(SYNC_EVNT_LETTER), CODE=$(SYNC_EVNT), RST_ENA_DEL=0.2, ENA_TS_DEL=0.2, N_SEC_DELTA=$(N_SEC_TICKS), COM1=$(COM1),COM2=$(COM2), PRO=ics-dg.proto, SCAN_EVNT=$(SCAN_EVNT)")
dbLoadRecords("check_timestamp_2.db", "SYS=$(SYS), DEV1=$(DEV1), DEV2=$(DEV2), EVR=$(EVR),TSEVT=EvtG, CODE=16")

#Loadcounters
dbLoadRecords("softEventCounter.db", "SYS=$(SYS), D=$(DEVICE), CODE=$(SCAN_EVNT)")
dbLoadRecords("softEventCounter.db", "SYS=$(SYS), D=$(DEVICE), CODE=15")
dbLoadRecords("softEventCounter.db", "SYS=$(SYS), D=$(DEVICE), CODE=16")

dbLoadRecords("softEventCounter.db", "SYS=$(SYS), D=$(DEVICE), CODE=17")
dbLoadRecords("softEventCounter.db", "SYS=$(SYS), D=$(DEVICE), CODE=14")
