                                           4"This private MIB module defines GMRP private MIBs." W"5488 Marvell Lane
					Santa Clara, CA 95054
					USA

					Website:  www.marvell.com" "200701020000Z" "Initial revision."               )"Is Gmrp supported in the device or not."                       *"MIB's version, the current version is 1."                       a"A table of Gmrp timer values for every bridge
         port.  This is indexed by dot1dBasePort."                       &"Gmrp timer values for a bridge port."                       &"The Gmrp Join time, in centiseconds."                       '"The Gmrp Leave time, in centiseconds."                       *"The Gmrp LeaveAll time, in centiseconds."                       �"If enabled{1}, Gmrp timer values for this port are
         determined by the values in this entry. Otherwise, they
         are determined by the values in dot1dPortGarpTable."                       3"This table is to Enable/Disable Gmrp in the vlan."                       ""An entry in the rlGmrpVlanTable."                       @"The tag of the VLAN for which this entry contains information."                       ""Enable/Disable Gmrp in the vlan."                                  