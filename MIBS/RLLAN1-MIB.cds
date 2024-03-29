     "group id."              e"Each octet within this value specifies a set of eight
        groups, with the first octet specifying groups 1 through
        8, the second octet specifying groups 9 through 16, etc.
        Within each octet, the most significant bit represents
        the lowest numbered group, and the least significant bit
        represents the highest numbered group.  Thus, each group
        is represented by a single bit within the value of this
        object.  If that bit has a value of '1' then that group
        is included in the set of groups; the group is not
        included if its bit has a value of '0'."               "group id."                                                                     2"The Lan1 MIB module for supporting Lan1 fetaure." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "201506300000Z" "Initial version."               9"Specifies the Ethernet type identifying the S-VLAN tag."                       ="Specifies the CP VLAN ID.
         0 indicateds no CP vlan."                       Y"Specifies the cos assigned to ingress traffic on module ports into
        the CP VLAN."                       �"Specifies the interface-id of the Ethernet port connecting LAN1 to the
        x86 environment implementing  Virtual Functions (VFs).
         0 indicateds no x86 port defined."                       >"A table that contains information mapping s-tag to group id."                       )"A mapping of incoming s-tag to a group."                       "The s-tag to mapped to group"                       "group for filtering traffic"                       1"This object indicates the status of this entry."                       9"A table that contains information mapping Mac to s-tag."                       )"A mapping of incoming s-tag to a group."                       "destination mac address"                       "The s-tag"                       �" cp - Specifies the VF which S-VLAN-ID is assigned to multicast/broadcast traffic bridged into the CP VLAN from modules to x86
          noncp - Specifies the VF which S-VLAN-ID is assigned to multicast/broadcast traffic "                       1"This object indicates the status of this entry."                       :"A table that contains information on a LAN1 module port."                       )"A mapping of incoming s-tag to a group."                       "Specifies the interface-id."                       o"Specifies that CP traffic is allowed on the port, it is used to
        allow CP multicast/broadcast traffic."                       �"Specifies that multicast/broadcast traffic is allowed on the CP VLAN
        or on non-CP VLAN.
        If the parameter is not configured then only unicast traffic is allowed."                       I"Specifies the group number assigned to the input frame on the interface"                       ,"Specifies the list of egress group numbers"                       1"This object indicates the status of this entry."                       V"A table that contains information on a LAN1 x86 port PFC configuration per priority."                       "PFC information per priority"                       "Specifies the priority index."                       ,"Specifies if priority is lossy or lossless"                       Q"Specifies the value of triggering pause frames when crossing over the threshold"                       U"Specifies the value of triggering continue frames when crossing under the threshold"                              