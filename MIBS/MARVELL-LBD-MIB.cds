                           ?"The private MIB module definition for Loopback Detection MIB." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "200711070000Z" "Initial version of this MIB."               2"Enable/Disable Loopback Detection in the switch."                       C"The time in seconds that should pass between unicast LBD packets."                       "Loopback detection mode."                       I"The table contains Admin configuration and operational status per port."                       �"Each entry represent a port.
             Per port contains LBD Admin configuration (SET) and status (GET),
             LBD Operational status and LBD Vlan configuration (SET) and status (GET)."                       +"Enable/Disable Loopback Detection on port"                      7"Indicates Loopback Detection operational status on port.
         'inactive' means that the port is not working in loop-detected operational state;
         'active' means that the port is Up and working in state of loop-detecting;
         'loop-detected' means that the system has detected loop on the port."                                  