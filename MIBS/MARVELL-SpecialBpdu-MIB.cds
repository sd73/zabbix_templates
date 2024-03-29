     >"Configured action in the HW. Forward(1), Drop (2) or Trap(3)"               ."Action to be taken. Bridge(1) or Discard (2)"               �"The L2 encapsulation type. In case the entry contains MAC only,
         the encapsulation will be none(1), otherwisw:
         EthernetV2 (2), LLC (2) or LLC-Snap (3)"                                                     "<description>" W"5488 Marvell Lane
					Santa Clara, CA 95054
					USA

					Website:  www.marvell.com" "200805031234Z" ="The private MIB module definition Traffic Segmentation MIB."               8"A table contains entries of Special BPDU configuration"                       ."An entry of Special BPDU configuration table"                       8"Reserved MAC Mc 01:80:C2:00:00:00 - 01:80:C2:00:00:2F."                       6"L2 Encapsulation Type: Ethernet-V2, LLC or LLC-Snap."                       m"Protocol ID. For Ethernet-V2: 0x600 - 0xFFFF; For LLC: 0 - 0xFFFF;
         For LLC-Snap: 0 - 0xFFFFFFFFFF."                       >"Action to be taken on the incoming frame: Discard or Bridge."                       1"This object indicates the status of this entry."                       4"A table contains entries of Special BPDU Hw status"                       *"An entry of Special BPDU Hw status table"                       3"HW action per MAC address: Forward, Drop or Trap."                              