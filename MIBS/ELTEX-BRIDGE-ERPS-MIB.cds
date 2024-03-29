v-- -----------------------------------------------------------------------------
-- MIB NAME : ERPS (ITU-T G.8032) Common mib
-- FILE NAME: ELTEX-BRIDGE-ERPS-V2-MIB.mib
-- DATE     : 2013/04/22
-- VERSION  : 1.00
-- PURPOSE  : To construct the MIB structure of ERPS for proprietary enterprise
-- -----------------------------------------------------------------------------
 "ITU-T G.8032"  "Ethernet ring port id.
       "             "ITU-T G.8032" -"Indicates Ethernet ring port state.
       "             "ITU-T G.8032" G"Indicates whether the state of object is enabled or disabled.
       "                                                                     A"The MIB module for managing Ethernet Ring Protection Switching." "http://www.eltex.nsk.ru"                   5"This object indicates the ERPS state of the bridge."                       9"This object indicates the ERPS log state of the bridge."                       :"This object indicates the ERPS trap state of the bridge."                       �"The action to be done with the pending configuration.
	         copyPendingActive - to copy the pending erps configuration to the active one.
	         copyActivePending - to copy the active erps configuration to the pending one. "                       �"Variable is associated with eltexErpsPendingAction and determines vlan_tag
             number in config for action copying/revert on pending config"                       "Set config id fot snmp get."                               :"This table contains ERPS ring configuration information."                       0"A list of ERPS ring configuration information."                       -"The RAPS VLAN is an index of configuration."                       {"This is one of the Ethernet ring ports.
            The value 0 indicates the west port is a virtual channel.
           "                       �"This is the west port state. It may change sometimes. When the west port
            is configured on a virtual channel, the west port state is always fowarding.
           "                       y"This is the other Ethernet ring port.
            The value 0 indicates the west port is a virtual channel.
           "                       �"This is the east port state. It may change sometimes. When the east port
            is configured on a virtual channel, the east port state is always fowarding.
           "                       �"When the port Enable state is enabled, the RPL port's current port role is defined by the application of the ERPS.
           "                       �"The administrative value of the RPL owner state.
             The RPL owner is an Ethernet Ring Node adjacent to the RPL that
             is responsible for blocking its end of the RPL under normal
             conditions."                       �"The ring MEL is the maintenance entity group (MEG) level providing a communication channel for
                ring automatic protection switching (RAPS) information."                       J"In order to coordinate timing of protection switches at multiple layers."                       K"This is used to prevent ring nodes from receiving outdated RAPS messages."                       �"In the revertive mode of operation, to prevent frequent operation of the protection switch due to an
                intermittent defect, a failed working transport entity must become stable in a fault-free state."                       I"This indicates the state of the ring: begin, init, idle, or protection."                       6"This indicates the administrative state of the ring."                      "The current operational value of the RPL owner state. The value 'active'
             is used to indicate that the RPL owner administrative state is enabled
             and the device is operated as the active RPL owner. The value 'inactive'
             is used to indicate that the RPL owner administrative state is enabled,
             but the device is operated as the inactive RPL owner. The value
             'disabled' is used to indicate that the RPL owner administrative
             state of the device is disabled."                       Y"This object indicates the VLAN range (1-1024)
			 that belongs to the protection VLANs."                       \"This object indicates the VLAN range (1025-2048)
			 that belongs to the protection VLANs."                       \"This object indicates the VLAN range (2049-3072)
			 that belongs to the protection VLANs."                       \"This object indicates the VLAN range (3073-4094)
			 that belongs to the protection VLANs."                       $"This indicates the revertive mode."                       \"This object indicates the ERPS protocol compatibility with other versions of ITU-T G.8032."                       "Forced switch port."                       "Manual switch port."                       4"This object indicates the RowStatus of this entry."                       >"This table contains ERPS sub-ring configuration information."                       4"A list of ERPS sub-ring configuration information."                       -"The RAPS VLAN is an index of configuration."                       Y"This indicates the ring control VLAN-ID of the sub-ring which connects to another ring."                       C"This indicates the state of sub-ring topology change propagation."                       4"This object indicates the RowStatus of this entry."                               8"When the signal fail occurs, a trap will be generated."                 8"When the signal fail clears, a trap will be generated."                 3"When a conflict occurs, a trap will be generated."                     +"This used trap object means the node MAC."                              