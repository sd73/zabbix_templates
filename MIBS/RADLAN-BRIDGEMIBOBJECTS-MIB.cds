     ,"As VlanList1 but represent vlans 3073-4094"               ,"As VlanList1 but represent vlans 2049-3072"               ,"As VlanList1 but represent vlans 1025-2048"              �"Each octet within this value specifies a set of eight
        vlans, with the first octet specifying vlan 1 through
        8, the second octet specifying vlan 9 through 16, etc.
        Within each octet, the most significant bit represents
        the lowest numbered vlan, and the least significant bit
        represents the highest numbered vlan.  Thus, each vlan
        of the bridge is represented by a single bit within the
        value of this object.  If that bit has a value of '1'
        then that vlan is included in the set of vlans; the vlan
        is not included if its bit has a value of '0'.
        VlanList1 represent vlans 1-1024"                                                                         B"This private MIB module defines bridge MIB objects private MIBs." �"5488 Marvell Lane
                                        Santa Clara, CA 95054
                                        USA

                                        Website:  www.marvell.com" "200701020000Z" "Initial revision."                   *"MIB's version, the current version is 1."                       *"A list of PortGroupNumber for each port."                       d"All ports belonging to a same group have
         the same User Priority to Traffic Class mapping."                       �"A group, that port belongs to. All ports belonging
         to a same group have the same User Priority to
         Traffic Class mapping."                           *"MIB's version, the current version is 2."                       X"Specifies whether the device supports Spanning Tree per device,
         or per group."                       l"Enable / Disable spanning tree. When working in per vlan mode
         enable / disable STP per all vlans."                       ]"Specifies whether a port must belong to a VLAN in order
         to participate in the STP."                       B"Specifies whether the STP uses the extended port fnumber format."                       ]"A table that contains vlan-specific information
            for the Spanning Tree Protocol."                       x"A list of information maintained by every Vlan
         about the Spanning Tree Protocol state for that
         Vlan."                       "The Vlan index."                       6"Specifies whether this vlan is STP enable or disable" " ??  "                     �"The time (in hundredths of a second) since the
         last time a topology change was detected by the
         bridge entity." %"IEEE 802.1D-1990: Section 6.8.1.1.3"                     �"The total number of topology changes detected by
         this bridge since the management entity was last
         reset or initialized." %"IEEE 802.1D-1990: Section 6.8.1.1.3"                    "The bridge identifier of the root of the spanning
         tree as determined by the Spanning Tree Protocol
         as executed by this node.  This value is used as
         the Root Identifier parameter in all Configuration
         Bridge PDUs originated by this node." #"IEEE 802.1D-1990: Section 4.5.3.1"                     E"The cost of the path to the root as seen from
         this bridge." #"IEEE 802.1D-1990: Section 4.5.3.2"                     v"The port number of the port which offers the
         lowest cost path from this bridge to the root
         bridge." #"IEEE 802.1D-1990: Section 4.5.3.3"                     �"The maximum age of Spanning Tree Protocol
         information learned from the network on any port
         before it is discarded, in units of hundredths of
         a second.  This is the actual value that this
         bridge is currently using." #"IEEE 802.1D-1990: Section 4.5.3.4"                    3"The amount of time between the transmission of
         Configuration bridge PDUs by this node on any port
         when it is the root of the spanning tree or trying
         to become so, in units of hundredths of a second.
         This is the actual value that this bridge is
         currently using." #"IEEE 802.1D-1990: Section 4.5.3.5"                     �"This time value determines the interval length
         during which no more than two Configuration bridge
         PDUs shall be transmitted by this node, in units
         of hundredths of a second." $"IEEE 802.1D-1990: Section 4.5.3.14"                    "This time value, measured in units of hundredths
         of a second, controls how fast a port changes its
         spanning state when moving towards the Forwarding
         state.  The value determines how long the port
         stays in each of the Listening and Learning
         states, which precede the Forwarding state.  This
         value is also used, when a topology change has
         been detected and is underway, to age all dynamic
         entries in the Forwarding Database.  [Note that
         this value is the one that this bridge is
         currently using, in contrast to
         dot1dStpBridgeForwardDelay which is the value that
         this bridge and all others would start using
         if/when this bridge were to become the root.]" #"IEEE 802.1D-1990: Section 4.5.3.6"                     g"A table that contains pair <vlan, port> specific information
         for the Spanning Tree Protocol."                       |"A list of information maintained by every pair <vlan, port>
         about the Spanning Tree Protocol state for that pair."                       �"The Vlan number that the port belongs to, and for which this entry
         contains Spanning Tree Protocol management
         information." "IEEE 802.1s/D2-1999 "                     |"The port number of the port for which this entry
         contains Spanning Tree Protocol management
         information." $"IEEE 802.1t/D2-1999: Section 9.2.6"                    "The value of the priority field which is
         contained in the more significant  4 bits of the most
         significant octet of the (2 octet long) Port ID.
         The other octet of the Port ID is given by the value
         of rldot1dStpVlanPort." $"IEEE 802.1t/D2-1999: Section 9.2.6"                    �"The port's current state as defined by application of
         the Spanning Tree Protocol. This state controls what
         action a port takes on reception of a frame.
         If the bridge has detected a port that is malfunctioning
         it will place that port into the broken(6) state.  For ports
         which are disabled (see dot1dStpVlanPortEnable), this object
         will have a value of disabled(1)." #"IEEE 802.1D-1990: Section 4.5.5.2"                     *"The enabled/disabled status of the port." #"IEEE 802.1D-1990: Section 4.5.5.2"                    "The contribution of this port to the path cost of
         paths towards the spanning tree root which include
         this port.  802.1D-1990 recommends that the
         default value of this parameter be in inverse
         proportion to the speed of the attached LAN." #"IEEE 802.1D-1990: Section 4.5.5.3"                     �"The unique Bridge Identifier of the Bridge
         recorded as the Root in the Configuration BPDUs
         transmitted by the Designated Bridge for the
         segment to which the port is attached." #"IEEE 802.1D-1990: Section 4.5.5.4"                     �"The path cost of the Designated Port of the
         segment connected to this port.  This value is
         compared to the Root Path Cost field in received
         bridge PDUs." #"IEEE 802.1D-1990: Section 4.5.5.5"                     �"The Bridge Identifier of the bridge which this
         port considers to be the Designated Bridge for
         this port's segment." #"IEEE 802.1D-1990: Section 4.5.5.6"                     \"The Port Identifier of the port on the Designated
         Bridge for this port's segment." #"IEEE 802.1D-1990: Section 4.5.5.7"                     j"The number of times this port has transitioned
         from the Learning state to the Forwarding state."                           2"The ifIndex of port which STP status was changed"                       H"The VID of VLAN to which the port belongs which STP status was changed"                       H"New mode of spaning tree supported by the device after the next reset."                       U"Factor of hello-time during which a port is monotored to determine if it is stable."                       P"The number of bpdu that need to received for the link to be considered stable."                       g"The last time any object in this table was changed
          by SNMP or other local management means." ""                     @"A table that contains extended pair port specific information."                       o"A list of information maintained by every port
         about the Spanning Tree Protocol state for that port."                       |"The port number of the port for which this entry
         contains Spanning Tree Protocol management
         information." $"IEEE 802.1t/D2-1999: Section 9.2.6"                     1"Specified if dampening is enabled on this port." ""                     ""Specified if the port is stable." ""                     B"Specified if this port should filter bpdus when stp is disabled." ""                     3"Specified the number of bpdu sent from this port." ""                     5"Specified the number of bpdu received in this port." ""                     '"Specified the role of this this port." ""                     6"Specified the type of BPDU transmitted by this port."                       �"If TRUE causes the Port not to be selected as Root Port for the CIST or
         any MSTI, even if it has the best spanning tree priority vector.
         Such a Port will be selected as an Alternate Port after the Root Port
         has been selected." %"IEEE 802.1ad-D3-1: Section 13.24.29"                     �"If TRUE causes the Port when become up, to enter the blocking state,
         and if during 3 seconds it doesn't receive a BPDU, it will enter
         the forwarding state." #"IEEE 802.1D-2004: Section 17.13.3"                     �"Specified loopback was detected on port.
         Usable for only a short period of time if stp loopback guard is enabled
         (since port enters into shutdown state)." ""                     4"Specified BPDU handling operative status for port." ""                     a"Enable / Disable TCN guard on port. TCN guard prevents receiving topology change notifications."                       6"Enable / Disable spanning tree on ports by default ."                       '"flooding can be done in tagged bpdu ."                       7"The default value of rldot1dStpPortMustBelongToVlan ."                       )"The default value of rldot1dStpEnable ."                       0"To order port/s to revert to default setings ."                       *"The type of stp supported by the device."                       2"If EdgePort is supported in stpCompatible mode ."                       C"Specified if the device should filter BPDUs when STP is disabled."                       |"Specified flooding method:
        1 - classic - untagged to all stp disabled ports
        2 - bridging -normal bridging."                           E"Define if separated bridges feature is enabled  for each interface."                       I"Defines the contents of each line in the rlSeparatedBridgesTable table."                       a"This variable indicates whether the separated bridge feature is enabled on a specified ifIndex."                       -"Enable / Disable Separated Bridges Feature."                       ="Enable / Disable Separated Bridges Automatic Configuration."                       @"A table that contains for each port whether it is bpdu guard ."                       S"A list of information maintained by every port
         whether it is bpdu guard."                       2"Specified if bpdu guard is enabled on this port." ""                     ;"Define if STP loopback guard feature is globally enabled."                       �"Define stp port state for each stp disabled interface.
      This is auxiliary MIB emulates stp enabled port behaviour in ASIC for stp disabled port.
      The MIB contains only stp disabled ports entries "                       R"Defines the contents of each line in the rldot1dStpDisabledPortStateTable table."                       �"The port's stp state as defined by  external
            application .  This state controls what action a port takes on
            reception of a frame."                       "Clear the number of bpdu sent and recieved on specific port,
         if Value of 0 is specified then clear counters action is applied to all ports,
         this object behaviors is write-only, when reading this object 
         it will always return 0."                           *"MIB's version, the current version is 1."                      "Indicates the optional parts of private extension of
         IEEE 802.1D and 802.1Q that are implemented by this
         device and are manageable through this MIB.
         Capabilities that are allowed on a per-port basis are
         indicated in dot1dPortCapabilities."      1--    SYNTAX      BITS {
--        rldot1dIGMPSnoopingFilteringServices(0)
--                              ## can perform filtering of
--                              ## individual multicast addresses
--                              ## controlled by IGMP snooping.
--        rldot1dDefaultFilteringAllServices(1)
--                              ## can perform default filtering
--                              ## behavior for All multicast addresses.
--                              ## controlled by Multicast DB.
--        rldot1dDefaultFilteringUnregServices(2)
--                              ## can perform default filtering
--                              ## behavior for Unregistered
--                              ## multicast addresses.
--                              ## controlled by Multicast DB.
--    }
                   m"A table that contains pair <vlan, port> specific information
         for the Rapid Spanning Tree Protocol."                       �"A list of information maintained by every pair <vlan, port>
         about the RAPID Spanning Tree Protocol state for that pair."                      "The Vlan number that the port belongs to, and for which this entry
         contains Spanning Tree Protocol management information,
         If STP per device then only one value of 1 is allowed.
         If STP per a VLAN then all value of 1..4095 are allowed."                       s"The port number of the port for which this entry
         contains Spanning Tree Protocol management information."                       4"Specifies whether this port is an Edge Port or not" ("IEEE 802.1wd6-2000: Section 17.13.3.1 "                     c"A table that contains  <vlan> specific information
         for the Rapid Spanning Tree Protocol."                       x"A list of information maintained by every  <vlan>
         about the RAPID Spanning Tree Protocol state for that pair."                      "The Vlan number that the port belongs to, and for which this entry
         contains Spanning Tree Protocol management information,
         If STP per device then only one value of 1 is allowed.
         If STP per a VLAN then all value of 1..4095 are allowed."                       �"Specifies whether this Bridge uses the normal RSTP algorithm,
         or STP Compatibility algorythm:
         0 - STP Compatibility
         2 - Normal RSTP" &"IEEE 802.1wd9-2000: Section 17.16.1 "                         "enable / disable"                       /"This table hold information the priority maps"                       $"The row definition for this table."                       "The map name"                       "The map holding the queue"                       0"the port that the map, is applied on in config"                       1"the ports that the map, is applied on in actual"                       >"The status of the  table entry. It's used to delete an entry"                           o"A table that contains Mstp instance specific information
            for the Multiple Spanning Tree Protocol."                       �"A list of information maintained by every instance
         about the multiple Spanning Tree Protocol state for
         that instance."                       "The Instance index."                       :"Specifies whether this Instance is STP enable or disable" " ??  "                     �"The time (in hundredths of a second) since the
         last time a topology change was detected by the
         Mstp Instance ." %"IEEE 802.1D-1990: Section 6.8.1.1.3"                     �"The total number of topology changes detected by
         this Instance since the management entity was last
         reset or initialized." %"IEEE 802.1D-1990: Section 6.8.1.1.3"                    "The bridge identifier of the root of the spanning
         tree as determined by the Muliple Spanning Tree Protocol
         as executed by this node.  This value is used as
         the Root Identifier parameter in all Configuration
         Bridge PDUs originated by this node." #"IEEE 802.1D-1990: Section 4.5.3.1"                     E"The cost of the path to the root as seen from
         this bridge." #"IEEE 802.1D-1990: Section 4.5.3.2"                     v"The port number of the port which offers the
         lowest cost path from this bridge to the root
         bridge." #"IEEE 802.1D-1990: Section 4.5.3.3"                     �"The maximum age of Spanning Tree Protocol
         information learned from the network on any port
         before it is discarded, in units of hundredths of
         a second.  This is the actual value that this
         bridge is currently using." #"IEEE 802.1D-1990: Section 4.5.3.4"                    3"The amount of time between the transmission of
         Configuration bridge PDUs by this node on any port
         when it is the root of the spanning tree or trying
         to become so, in units of hundredths of a second.
         This is the actual value that this bridge is
         currently using." #"IEEE 802.1D-1990: Section 4.5.3.5"                     �"This time value determines the interval length
         during which no more than two Configuration bridge
         PDUs shall be transmitted by this node, in units
         of hundredths of a second." $"IEEE 802.1D-1990: Section 4.5.3.14"                    "This time value, measured in units of hundredths
         of a second, controls how fast a port changes its
         spanning state when moving towards the Forwarding
         state.  The value determines how long the port
         stays in each of the Listening and Learning
         states, which precede the Forwarding state.  This
         value is also used, when a topology change has
         been detected and is underway, to age all dynamic
         entries in the Forwarding Database.  [Note that
         this value is the one that this bridge is
         currently using, in contrast to
         dot1dStpBridgeForwardDelay which is the value that
         this bridge and all others would start using
         if/when this bridge were to become the root.]" #"IEEE 802.1D-1990: Section 4.5.3.6"                    _"The value of the write-able portion of the Bridge
            ID, i.e., the first four bits of the first octet
            of the (8 octet long) Bridge ID.The value is a product
            of 4096. The next 12 bit are the msti id .
            The other (last) 6 octets of the Bridge ID are given
            by the value of dot1dBaseBridgeAddress." #"IEEE 802.1S-2001: Section 13.24.2"                     �"This count value determines the amount of hopes
         the information transmited by this bridge on this
         instance can travel." $"IEEE 802.1D-1990: Section 4.5.3.14"                     Y"The logical Instance Id which is binded for this entry from rldot1sMstpSwInstanceTable."                       g"A table that contains pair <msti, port> specific information
         for the Spanning Tree Protocol."                       |"A list of information maintained by every pair <msti, port>
         about the Spanning Tree Protocol state for that pair."                       �"The Vlan group number that the port belongs to, and for which this entry
         contains Spanning Tree Protocol management
         information." "IEEE 802.1s/D11-2001 "                     |"The port number of the port for which this entry
         contains Spanning Tree Protocol management
         information." $"IEEE 802.1t/D2-1999: Section 9.2.6"                    -"The value of the priority field which is
         contained in the more significant  4 bits of the most
         significant octet of the (2 octet long) Port ID.
         The value is a product of 16.
         The other octet of the Port ID is given by the value
         of rldot1dStpVlanGroupPort." $"IEEE 802.1t/D2-1999: Section 9.2.6"                    �"The port's current state as defined by application of
         the Spanning Tree Protocol. This state controls what
         action a port takes on reception of a frame.
         If the bridge has detected a port that is malfunctioning
         it will place that port into the broken(6) state.  For ports
         which are disabled (see dot1dStpVlanPortEnable), this object
         will have a value of disabled(1)." #"IEEE 802.1D-1990: Section 4.5.5.2"                     *"The enabled/disabled status of the port." #"IEEE 802.1D-1990: Section 4.5.5.2"                    "The contribution of this port to the path cost of
         paths towards the spanning tree root which include
         this port.  802.1D-1990 recommends that the
         default value of this parameter be in inverse
         proportion to the speed of the attached LAN." #"IEEE 802.1D-1990: Section 4.5.5.3"                     �"The unique Bridge Identifier of the Bridge
         recorded as the Root in the Configuration BPDUs
         transmitted by the Designated Bridge for the
         segment to which the port is attached." #"IEEE 802.1D-1990: Section 4.5.5.4"                     �"The path cost of the Designated Port of the
         segment connected to this port.  This value is
         compared to the Root Path Cost field in received
         bridge PDUs." #"IEEE 802.1D-1990: Section 4.5.5.5"                     �"The Bridge Identifier of the bridge which this
         port considers to be the Designated Bridge for
         this port's segment." #"IEEE 802.1D-1990: Section 4.5.5.6"                     \"The Port Identifier of the port on the Designated
         Bridge for this port's segment." #"IEEE 802.1D-1990: Section 4.5.5.7"                     j"The number of times this port has transitioned
         from the Learning state to the Forwarding state."                      �"The administratively assigned value for the contribution
         of this port to the path cost of paths towards the spanning
         tree root.

         Writing a value of '0' assigns the automatically calculated
         default Path Cost value to the port.  If the default Path
         Cost is being used, this object returns '0' when read.

         This complements the object dot1dStpPortPathCost, which
         returns the operational value of the path cost." #"IEEE 802.1D-1998: Section 8.5.5.3"                     %"Specify the role of this this port." ""                     C"Max number of hopes that an MST BPDU will travel inside a region."                       @"The active configuration name as will be caried in MST BPDU's."                       "The active revision level."                       K"A table that contains information about the alocation of vlans to groups."                       X"A list of information maintained by every vlan
         about the group it belongs to."                       |"The vlan number of the vlan for which this entry
         contains Spanning Tree Protocol management
         information." $"IEEE 802.1s/D11-2001: Section 13.7"                     9"Specifid the active group number this vlan belonges to." ""                     :"Specifid the pending group number this vlan belonges to." ""                     A"A table that contains MSTP information about ports of the CIST."                       F"A list of information maintained by every port
         of the CIST."                       |"The port number of the port for which this entry
         contains Spanning Tree Protocol management
         information." $"IEEE 802.1t/D2-1999: Section 9.2.6"                    "The contribution of this port to the path cost of
         paths towards the spanning tree regional root which
         include this port.  802.1S-2002 recommends that the
         default value of this parameter be in inverse
         proportion to the speed of the attached LAN."                       �"The unique Bridge Identifier of the Bridge
         recorded as the Root in the Configuration BPDUs
         transmitted by the Designated Bridge for the
         segment to which the port is attached." #"IEEE 802.1D-1990: Section 4.5.5.4"                     �"The regional path cost of the Designated Port of the
         segment connected to this port.  This value is
         compared to the Root Path Cost field in received
         bridge PDUs." #"IEEE 802.1D-1990: Section 4.5.5.5"                     _"Indication if the port is conented to to a lan segment
         outside or inside the region." #"IEEE 802.1D-1990: Section 4.5.5.5"                    �"The administratively assigned value for the contribution
         of this port to the path cost of paths towards the spanning
         tree root.

         Writing a value of '0' assigns the automatically calculated
         default Path Cost value to the port.  If the default Path
         Cost is being used, this object returns '0' when read.

         This complements the object dot1dStpPortPathCost, which
         returns the operational value of the path cost."                       C"Max number of hopes that an MST BPDU will travel inside a region."                       o"CIST Regional Root Identifier (13.16.4).
            The Bridge Identifier of the current CIST Regional Root." #"IEEE 802.1S-2002: Section 13.16.4"                     X"The CIST path cost from the transmitting Bridge to the
            CIST Regional Root." &"IEEE 802.1S-2002: Section 12.8.1.1.3"                     !"The pending configuration name."                       "The pending revision level."                       �"The action to be done with the pending configuration.
         copyPendingActive - to copy the pending mst configuration to the active one.
         copyActivePending - to copy the active mst configuration to the pending one. "                       p"This count value determines the amount of hops
         the information transmitted by this bridge can travel."                       4"This table contains vlan lists per MSTP instances."                       <" The entry contains vlan lists per specific MSTP instance."                       "Specifiy the instance number."                       8"Specifiy which data-base to access: active or pending."                       ."first VlanId List of specific MSTP instance."                       /"second VlanId List of specific MSTP instance."                       ."third VlanId List of specific MSTP instance."                       /"fourth VlanId List of specific MSTP instance."                       H"This table contains logical instance to rldot1sMstpInstanceId mapping."                       2"The entry contains logical instance information."                       !"The STP Instance logical index."                       W"The STP Instance index rldot1sMstpInstanceId which exist at rldot1sMstpInstanceTable."                       A"The status of the entry, used to add, delete or update an entry"                       ""The active configuration digest."                       #"The pending configuration digest."                           f"The min timeout period in seconds for aging out
         dynamically learned forwarding information." ."P802.1d/D9, July 14, 1989: Section 6.7.1.1.3"                     f"The max timeout period in seconds for aging out
         dynamically learned forwarding information." ."P802.1d/D9, July 14, 1989: Section 6.7.1.1.3"                         @"This table contains Per Vlan Spanning-Tree vlan configuration."                       :"The entry contains PVST configuration per specific Vlan."                       C"The Vlan number for this entry which contains PVST configuration."                      _"The time intervals in seconds for the transmission of
          Configuration PVST bridge PDUs by this node on any port
          when it is the root of the spanning tree or trying
          to become so.
          When configuring the Hello time, the following relationship
          should be maintained:
            Max-Age >= 2*(Hello-Time + 1)."                      �"The time interval in seconds, controls how fast a port changes its
         spanning state when moving towards the Forwarding
         state.  The value determines how long the port
         stays in each of the Listening and Learning
         states, which precede the Forwarding state.
         When configuring the forwarding time, the following relationship
         should be maintained:
            2*(Forward-Time - 1) >= Max-Age."                      A"The maximum age time in seconds of PVST Protocol information learned
         from the network on any port before it is discarded.
         When configuring the maximum age, the following relationships
         should be maintained:
            2*(Forward-Time - 1) >= Max-Age
            Max-Age >= 2*(Hello-Time + 1)."                       �"The value of the write-able portion of the Bridge
            ID, i.e., the first four bits of the first octet
            of the (8 octet long) Bridge ID. The value is a product of 4096."                       H"The status of the  table entry, used to add, delete or update an entry"                       G"This table contains Per Vlan Spanning-Tree active vlan configuration."                       A"The entry contains PVST active configuration per specific Vlan."                       J"The Vlan number for this entry which contains PVST active configuration."                       :"Indicates whether this Vlan is enabled for PVST / RPVST."                       q"The time (in miliseconds) since the
         last time a topology change was detected on current PVST Instance."                       �"The total number of topology changes detected by
         this on current PVST Instance since the management entity was last
         reset or initialized."                      "The bridge identifier of the root of the spanning
         tree as determined by the PVST Spanning Tree Protocol
         as executed by this node. This value is used as
         the Root Identifier parameter in all Configuration
         Bridge PDUs originated by this node."                       X"The cost of the path to the root as seen from
         current bridge on current vlan."                       m"The port number of the port which offers the
         lowest cost path from this bridge to the root bridge."                       Z"The rlBrgPvstVlanMaxAge which recieved from the root of current
          PVST instance."                       ]"The rlBrgPvstVlanHelloTime which recieved from the root of current
          PVST instance."                       `"The rlBrgPvstVlanForwardDelay which recieved from the root of current
          PVST instance."                      M"The operational maximum age time in seconds of PVST Protocol information learned
         from the network on any port before it is discarded.
         When configuring the maximum age, the following relationships
         should be maintained:
            2*(Forward-Time - 1) >= Max-Age
            Max-Age >= 2*(Hello-Time + 1)."                      k"The operational time intervals in seconds for the transmission of
          Configuration PVST bridge PDUs by this node on any port
          when it is the root of the spanning tree or trying
          to become so.
          When configuring the Hello time, the following relationship
          should be maintained:
            Max-Age >= 2*(Hello-Time + 1)."                      �"The operational time interval in seconds, controls how fast a port changes its
         spanning state when moving towards the Forwarding
         state.  The value determines how long the port
         stays in each of the Listening and Learning
         states, which precede the Forwarding state.
         When configuring the forwarding time, the following relationship
         should be maintained:
            2*(Forward-Time - 1) >= Max-Age."                       �"The value of the write-able portion of the Bridge
          ID, i.e., the first four bits of the first octet
          of the (8 octet long) Bridge ID. The value is a product of 4096."                       @"This table contains Per Vlan Spanning-Tree Port configuration."                       C"The entry contains PVST configuration per specific Vlan and Port."                       C"The Vlan number for this entry which contains PVST configuration."                       �"The port number of the port for which this entry
         contains Per Vlan Spanning Tree Protocol management
         information."                      �"The contribution of this port to the path cost of
         paths towards the spanning tree root which include
         this port.
         Writing a value of '0' assigns the automatically calculated
         default Path Cost value to the port.  If the default Path
         Cost is being used, this object returns '0' when read.
         Default path cost is determined by port speed and path cost method (long or short)."                      ;"The Admin value of the priority field which is
         contained in the more significant 4 bits of the most
         significant octet of the (2 octet long) Port ID.
         The other octet of the Port ID is given by the value
         of rlBrgPvstPortPort.
         The priority value must be a multiple of 16."                       H"The status of the  table entry, used to add, delete or update an entry"                       G"This table contains Per Vlan Spanning-Tree active Port configuration."                       J"The entry contains PVST active configuration per specific Vlan and Port."                       C"The Vlan number for this entry which contains PVST configuration."                       �"The port number of the port for which this entry
         contains Per Vlan Spanning Tree Protocol management
         information."                       *"The enabled/disabled status of the port."                       �"The Operational contribution of this port to the path cost of
         paths towards the spanning tree root which include
         this port.
         Default path cost is determined by port speed and path cost method
         (long or short)."                      "The Operational value of the priority field which is
         contained in the more significant 4 bits of the most
         significant octet of the (2 octet long) Port ID.
         The other octet of the Port ID is given by the value
         of rlBrgPvstOperPortPort."                      '"The port's current state as defined by application of
         the Spanning Tree Protocol. This state controls what
         action a port takes on reception of a frame.
         If the bridge has detected a port that is malfunctioning
         it will place that port into the broken(6)state."                       )"Specify the STP role of this this port."                       6"Specified the type of BPDU transmitted by this port."                      "The bridge identifier of the root of the spanning
         tree as determined by the Spanning Tree Protocol
         as executed by this node. This value is used as
         the Root Identifier parameter in all Configuration
         Bridge PDUs originated by this node."                       �"The path cost of the Designated Port of the
         segment connected to this port.  This value is
         compared to the Root Path Cost field in received
         bridge PDUs."                       �"The Bridge Identifier of the bridge which this
         port considers to be the Designated Bridge for
         this port's segment." #"IEEE 802.1D-1990: Section 4.5.5.6"                     \"The Port Identifier of the port on the Designated
         Bridge for this port's segment."                       j"The number of times this port has transitioned
         from the Learning state to the Forwarding state."                       �"The operational value of the Edge Port parameter.  The
         object is initialized to the value of
         dot1dStpPortAdminEdgePort and is set FALSE on reception of
         a BPDU." #"IEEE 802.1t clause 14.8.2, 18.3.4"                     3"Specified the number of bpdu sent from this port."                       5"Specified the number of bpdu received in this port."                       V"This table contains Per Vlan Spanning-Tree Ports Inconsistency
         information."                       G"Entry contains Per Vlan Spanning-Tree Port Inconsistency information."                       ]"The Vlan number for this entry which contains PVST Port Inconsistency
         information."                       {"The port number of the port for which this entry
         contains Per Vlan Spanning Tree Port Inconsistency information."                       $"The port PVST Inconsistency state."                                      