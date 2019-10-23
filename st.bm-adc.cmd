require dmsc_detector_interface,master
require stream,2.8.8
require autosave,5.10.0

epicsEnvSet("TOP", "$(E3_CMD_TOP)/..")
epicsEnvSet("IOCNAME", "bm-adc")



epicsEnvSet("SYS", "BM-ADC")
epicsEnvSet("PCI_SLOT", "1:0.0")
epicsEnvSet("DEVICE", "EVR-01")
epicsEnvSet("EVR", "$(DEVICE)")
epicsEnvSet("MRF_HW_DB", "evr-pcie-300dc-ess.db")
epicsEnvSet("E3_MODULES", "/epics/iocs/e3")
epicsEnvSet("EPICS_CMDS", "/epics/iocs/cmds")
epicsEnvSet("TMP", "/tmp")

iocshLoad("$(autosave_DIR)/autosave.iocsh", "AS_TOP=$(TOP),IOCNAME=$(IOCNAME)")

# Load EVR database
dbLoadRecords("$(MRF_HW_DB)","EVR=$(EVR),SYS=$(SYS),D=$(DEVICE),FEVT=88.0525,PINITSEQ=0")


############# -------- Detector Readout Interface ----------------- ##################
epicsEnvSet("DETINT_CMD_TOP","/epics/iocs/cmds/bm-adc") 
#epicsEnvSet("DETINT_DB_TOP", "$(E3_MODULES)/e3-detectorinterface/m-epics-detectorinterface/db")
epicsEnvSet("STREAM_PROTOCOL_PATH","/epics/base-7.0.3/require/3.1.2/siteApps/dmsc_detector_interface/master/db")


system "/bin/bash $(DETINT_CMD_TOP)/find_usb_bus_id.bash"
< "/tmp/usb_bus_id"

# Load the detector interface module

system "/usr/bin/python $(DETINT_CMD_TOP)/generate_cmd_file.py --path $(DETINT_CMD_TOP) --serial_ports $(USB_BUS_NUMA) $(USB_BUS_NUMB)"
iocshLoad("$(TMP)/detint.cmd", "DEV1=RO1, DEV2=RO2, COM1=COM1, COM2=COM2, SYS=$(SYS),EVR=$(EVR) ")




iocInit()

 
