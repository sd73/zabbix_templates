           "<description>" Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "200811250000Z" 3"The private MIB module definition for dot1q MIBs."               ,"An augmentation to dot1qStaticUnicastTable"                       ,"An augmentation to dot1qStaticUnicastEntry"                       �"The learned status of this entry:
            static(1) - address has added by user.
            learned(2)- address has added by device."                       $"An augmentation to dot1qTpFdbTable"                       $"An augmentation to dot1qTpFdbEntry"                      >"The sub status of this entry.  The meanings of the values
        are:
            none(1) -
                non of the following.
            dynamic-static(2) -
                the value of the corresponding instance of dot1qTpFdbPort was
                learned dynamically in SW but kept as static address in HW."                       2"Counters for FDB table. Per VLAN, port and type."                       E"Count the number of MAC address for a specific VLAN, port and type."                        "Vlan Tag. Zero means all vlans"                       "Port. Zero means all ports"                       0"Type of the address:
            TODO
        "                       5"Number of address per selected vlan, port and type."                                      