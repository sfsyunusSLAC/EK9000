#!../../../../bin/linux-x86/ek9000Test

< envPaths
dbLoadDatabase("../../../../dbd/ek9000Test.dbd")

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/ek9000Test.dbd"
ek9000Test_registerRecordDeviceDriver pdbbase

# Configure the device
ek9000Configure("EK9K1", "192.168.1.3", 502, 5)
ek9000ConfigureTerminal("EK9K1", "TestTerm1-BO", "EL2008", 1)
ek9000ConfigureTerminal("EK9K1", "TestTerm2-AI", "EL3064", 2)
ek9000ConfigureTerminal("EK9K1", "TestTerm3-BO", "EL2008", 3)
ek9000ConfigureTerminal("EK9K1", "TestTerm4-AI", "EL3054", 4)
ek9000ConfigureTerminal("EK9K1", "TestTerm5-BI", "EL1004", 5)
#ek9000EnableDebug("EK9K1")

cd "${TOP}/src/ek9000/iocBoot/${IOC}"

#dbLoadTemplate("EL4004.substitutions")
dbLoadTemplate("Test2.substitutions")

iocInit
iocInit