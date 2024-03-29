    ["Specifies one of 13 ACE types:
        1- IP ACE.
        2- IP-TCP ACE.
        3- IP-UDP ACE.
        4- IP-offset ACE.
        5- MAC ACE.
        6- MAC-offset ACE.
        7- IP-ICMP ACE.
        8- IP-IGMP ACE.
        9- IPv6 ACE.
        10- IPv6-TCP ACE.
        11- IPv6-UDP ACE.
        12- IPv6-offset ACE.
        13- IPv6-ICMP ACE."               �"Specifies the mark vlan action type in the class map table.
      1 - noMark - No vlan marking
      2 - mark  - mark vlan tagged.
      3 - markNestedVlan - add vlan tag to the packet. "               "Specifies Disable or enable."               "Specifies one of Tuple types "               �"Specifies one of 2 Class-map types:
        1- Match all. logical and between all statements.
        2- Match any. logical or between all statements."               `"Specifies one of 3 ACL types:
         1- MAC ACL.
         2- IPv4 ACL.
         3- IPv6 ACL."               �"Specifies one of 4 Policer Action:
         1- No Action
         2- Drop out of profile packets.
         3- Remark out of profile packets.
         4- Remark to explicit value out of profile packets
         5- this policer is part of cascade chain"              6"Specifies one of 3 QoS mode:
         1- disable no QoS on the system
         2- Basic Qos mode only trust mode with ACL are enabled.
         3- Advance mode all Qos option are enabled.
         4- Service Mode -v750 DEPEREACTED!!!  all Qos option are enabled only in
            service mode configuration"              2"Specifies one of 4 ACE Actions:
         1- Permit- permit to the traffic that define
                by the parameters.
         2- Deny- deny the traffic that define
                by the parameter.
         3- Deny-DisablePort deny the traffic that defined
                by the parameters and disable the port.
         4- Deny-LogInput deny the traffic that defined
                by the parameters and log incoming traffic.
                 5- Permit-LogInput permit the traffic that defined
                by the parameters and log incoming traffic."               "The Action Drop Type."               "Queue type Ef or WRR."               �"Specifies one of 8 Class-map actios:
         1- none - action not specified - use default action.
         2 -Mark IP-Precedence.
         3- Mark DSCP.
         4- Set Egress queue
         5- Mark VPT
         6- Choose queue by global trust mode."               P"The counter can be of different sizes - 32 bit, 48 bit, 64 bit. Maximum is 64."               "Application default actions."               {"Bitmap that includes days of week.
                 Each bit in the bitmap associated with corresponding day of the week."              x"Specifies one of 6 QoS trust mode:
          - none.- v750 DEPRECATED - same as globalMode = disable. means that only ACL can be applied.
         - 802.1p. queue is set by the VPT field.
         - DSCP. queue is set by the DSCP field
         - v750 deprecated. replaced with new scalar rlQosDscpMutationEnable .
           DSCP-Mutation. the DSCP mutate in the ingress and
            then the queue is set by the DSCP
          - tcp/udp.-  v750 - DEPRECATED - not supported. the queue is set by the l4 port number.
          - cos-dscp. Queue is set for l2 traffic
             by VPT field and for l3 traffic by DSCP field. "               �"Specifies one of 3 Policer types:
         1- Single policer only per one class map.
         2- Aggregate policer can be applied to several
            class maps.
         3- Cascade policer."               �"The counter can be of different types, depends on actions adhered to
                    rules that the counter is working on."               "Interface type."              V"Specifies one of 6 offset types:
         1- Absolute-start of the packet.
         2- Layer 2-start of MAC header.
         3- MPLS-start of MPLS header.
         4- Layer 3-start of layer 3 header.
         5- Layer 4-start of layer 4 header.
         6- Layer 5-after TCP/UDP header.
         7- VLAN.
         8- input device port.
         9- input device port.
         10-VPT.
         11-EtherType.
         12-innerVlan.
         13-Layer 3 IPv6 - start of layer 3 IPv6 header.
         14-Layer 4 IPv6 - start of layer 4 IPv6 header.
         15-Source MAC.
         16-Destination MAC."               ."Default action when the ACL reach end point."              s"Specifies the packet redirection options.
     Redirection is applied only on permitted packets.
      1 - disabled  - no redirect
      2 - trap - trap to local_host (CPU)
      3 - redirectToInterface - redirect to a output interface (port, trunk or vlan)
      4 - redirectToAllPorts - redirect to all ports, except the ingress port.
      5 - mirror - forward the packet and sent a copy to local_host (CPU)
      6 - analyzerPort - forward the packet and sent a copy to egress port.
      7 - loopback - redirect the packet the the port it was received.
      8 - redirectToPortGroup - send to group of ports, defined in rlUserAssignedVidxTable table
      9 - mirror_and_redirectToInterface - send the packet to interface and send a copy to local_host(CPU)
      10 -mirror_and_redirectToInterfacesGroup - send the packet to group of ports and send a copy to local_host(CPU)  "                                                                     b"The private MIB module definition for Quality Of Service CLI
                 in Radlan devices." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "201707020000Z" "200602120000Z" "200602120000Z" "200503140000Z" "200502070000Z" "200501270000Z" "200411150000Z" "200309290000Z" "200309210000Z" "200504170000Z" D"Added rlQosPolicyMapIsBoundToInterface, rlQosAclIsBoundToInterface"�"Added:
                     StatisticsCntrNumOfBitsType
                     StatisticsCntrType
                     rlQosStatistics
                     rlQosPortPolicyStatisticsTable
                     rlQosSinglePolicerStatisticsTable
                     rlQosAggregatePolicerStatisticsTable
                     rlQosOutQueueStatisticsTable
                     rlQosGlobalStatisticsCntrsTable." 1"Editorial changes to support new MIB compilers." u"Add rlQosPortRateLimitStatus,rlQosCirPortRateLimit, rlQosCbsPortRateLimit
                  to   rlQosIfPolicyTable" �"Add vpt,ether-type,tcp-flags,icmp-type,icmp-code,igmp-type to ClassTupleType
                 Add mac-Offset,ip-ICMP,ip-IGMP To AceObjectType
                 Add vpt,ethertype To ClassOffsetType" ("Add new advanced action : trustCosDscp" &"Add DSCP to Queue Default map table." 4"Add textual convention to QosObjectMode (service)." �"Added this MODULE-IDENTITY clause, changed IMPORT, removed ranges in
                 SEQUENCE elements, changed access of rlQosCliQosMode, rlQosCliBasicModeCfg and
                 rlQosMaxNumOfAce." "Added rlQosDscpToDpTable"               �" *********This Scalar is deprecated - rlQosGlobalCfgEntry - replaces its
        functionality***************
        This scalar define in which mode the
         system will work: basic , advance or none."                      "*********This Scalar is deprecated - rlQosGlobalCfgEntry - replaces its
        functionality***************
         This scalar define in which trust mode the
                 system will work:802.1p or DSCP or
                 DSCP-Mutation or TCP/UDP or none or vpt-dscp."                       ,"This scalar define the max number of aces."                       /"This table specifies Offset Table information"                      b"Each entry in this table describes one classifier field.
        The information includes: Offset Type the offset the mask and the
        Pattern.
        if the type is vlan then the value will be the vlan tag.
        if the Type is in/out port it will be the device in/out port.
        The index is sequential integer represent by rlQosOffsetIndex"                       ?"An arbitrary incremental Index
         for the offset table."                       "Start of the offset."                       "The Offset value."                       3"Define which bit to be extracted from the offset."                       "The value to match too."                       !"Pointer for the relevant Tuple."                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       ."This table specifies Tuple Table information"                       �"Each entry in this table describes one Tuple.
        The information includes: Tuple Type and the Tuples values.
        The index is sequential integer represent by rlQosTupleIndex"                       ?"An arbitrary incremental Index
         for the offset table."                       "Start of the offset."                       C"The Tuple no.1 value can be regular integer
         values only."                       Y"The Tuple no.2 value can be IPv4/IPv6/MAC address
         or protocol number with mask"                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       ,"This table specifies ACE table information"                       �"Each entry in this table describes one Classifier Element.
        The information includes: Action the ACE's Type the up to 8 tuples
        pointers. The index is sequential integer represent by rlQosAceIndex"                       <"An arbitrary incremental Index
         for the ACE table."                       "ACE Action to take."                       
"ACE Type"                       "ACE Tuple 1 pointer."                       "ACE Tuple 1 pointer."                       "ACE Tuple 1 pointer."                       "ACE Tuple 1 pointer."                       "ACE Tuple 1 pointer."                       "ACE Tuple 1 pointer."                       "ACE Tuple 1 pointer."                       "ACE Tuple 1 pointer."                       |"ACE Accounting state.
         When set to 'enabled' than appropriate statistic's
         counter is provided for an ACE."                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       ,"This table specifies ACL table information"                       �"Each entry in this table describes one Classifier Element.
         The information includes: Action and the row status. The ACE pointer
         are in the ACL-ACE reference table.
         The index is sequential integer represent by rlQosAceIndex"                       D"An arbitrary incremental Index
                 for the ACE table."                       "Name ACL."           )--    Rsyntax OCTET STRING(SIZE(0..255))
           "ACL Type."                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       ""Holds number of aces in the acl."                       ="Indicates whether the ACL is bound to any interface or not."                       <"This table specifies the ACE to ACL
         relationship."                       �"Each entry in this table describes the relationship
         between ACE to ACL. Show which ACE include in one ACL.
         The index is the ACE pointer represent
         by rlQosAclAceRefAcePointer"                       "The Index is the ACE pointer"                       "ACL index Pointer"                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       ,"This table specifies CCL table information"                       �"Each entry in this table describes one Class Map Element.
        The information includes: Classes Name,Class Action,
        Policer pointer, and 1 match statements.
        The index is sequential integer represent by rlQosClassMapIndex"                       "Class Map Index"                       "Name of the Class Map."           )--    Rsyntax OCTET STRING(SIZE(0..255))
           "Class map type"                       "Class Map Action."                       Q"Mark value when mark action has been chosen in
         Class Map Action field."                       '"Policer  pointer. 0-means no policer."                       "Match ACL 1 pointer."                       "Match ACL 2 pointer."                      "If 'mark', than the classified
         traffic will be remarked with new VLAN id.
         If 'disabled' VLAN id is not changed.
         If markNestedVlan, if the egress interface defined as
         VLAN tagged member then a new VLAN tag is added  to the packet."                       �"If rlQosClassMapMarkVlan is not 'noMark',
         than the classified traffic will be
         remarked with new VLAN id.
         The value of this field sets new VLAN id."                       ""Specifiy the redirection action."                      "Relevant if rlQosClassMapRedirect is either
        'redirectToInterface' or 'analyzerPort' or 'toMultipleInterfaces'.
        Specified the output interface the packet is redireted to or
        the port that gets copy of the packet in addition to the port
        it was forwarded."                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       "Match ACL 3 pointer."                       �"If now zero, Indicates the trap type id the matched packets arrives with,
        relevant when RedirectAction is trap or mirror."                       ["Enable/disable counting per class map.
        Counts packets matche the class map rules."                       d"If not zero, then the tunnel data pointed by rlQosClassMapTunnelIdx
        is added to the packet"                       A"This table specifies All the Policers in the system Information"                       �"Each entry in this table describes one policer.
        The information includes: Policer name, Policer type, Committed Rate,
        Committed Burst, Out-of-Profile Action.
        The index is sequential integer represent by rlQosPolicerIndex"                       "Policer Index."                       "Name of the Policer."           )--    Rsyntax OCTET STRING(SIZE(0..255))
           "Policer type"                       "Committed rate value."                       "Committed burst Value."                       "Out of profile Action."                       e"Remark value in case of explicit remark.
         The functionality as cascade pointer is obsolete."                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       �"Peak rate value.
         When both this and rlQosPolicerPbs are 0 this means the mode is Single Rate
         and when they are both non 0 this means the mode is Two Rate."                       �"Peak burst Value.
         When both this and rlQosPolicerPir are 0 this means the mode is Single Rate
         and when they are both non 0 this means the mode is Two Rate."                       "Out of profile peak action."                       3"This table specifies Policy Map Table Information"                       �"Each entry in this table describes one policy map.
        The information includes: Index, Policy Map name,
        Up to 6 class map names.
        The index is sequential integer represent by rlQosPolicerIndex"                       "Policy map Index."                       "Policy map Name."           )--    Rsyntax OCTET STRING(SIZE(0..255))
           Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       D"Indicates whether the policy map is bound to any interface or not."                       P"This table specifies The relationship
         between policy map to class map"                       �"Each entry in this table describes the connection
         between class-map entry to policy map by using pointers.
         The index is Class map pointer
         represent by rlQosPolicyClassRefClassPointer"                       $"The Index is the Class-map pointer"                       "Policy map index Pointer"                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       ]"This table specifies for each interface
                        the Policy Map attach to it"                       �"Each entry in this table describes what policy
         Map attached to specific Interface.
         The index is Interface Index represent by rlIfIndex and
         the interface type represent by rlIfType"                       "Interface Index."                       "Interface Type(vlan/port)."                       "Policy map pointer Input."                       "Policy map pointer Output."                       /"Interface Basic Mode Trust is active or not ."                        "If there is shaper on the port"                       F"The CIR for the port shaper.
         N/A when the shper is disabled"                       F"The CBS for the port shaper.
         N/A when the shper is disabled"                       !"Interface Profile name pointer."                       " Queue Profile name pointer."                       " Queue shape Profile pointer."                       <" When one ACL is enterd then what to do for the last rull."                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       �"Index of an ACL in the rlQosAclTable, which is applied
         to the ingress of an interface.
         0 - means no ACL applied."                       �"Index of an ACL in the rlQosAclTable, which is applied
         to the egress of an interface.
         0 - means no ACL applied."                       �"Index of an Policer in the rlQosPolicerTable, which is applied
         to the ingress of an interface.
         0 - means no Policer applied."                       $"If there is Rate limit on the port"                       O"The CIR for the port rate limit.
         N/A when the Rate limit is disabled"                       O"The CBS for the port Rate limit.
         N/A when the Rate limit is disabled"                       �"Index of an IPv6 ACL in the rlQosAclTable, which is applied
         to the ingress of an interface.
         0 - means no ACL applied."                       �"Index of an IPv6 ACL in the rlQosAclTable, which is applied
         to the egress of an interface.
         0 - means no ACL applied."                       C" When one egress ACL is enterd then what to do for the last rull."                       v"This table specifies for each Queue the Tail
         Drop or WRED parameters and the EF of WRR
         parameters."                      �"Each entry in this table describes one queue
         parameters: Tail-drop threshold for drop precedence
         0,1,3 and the WRED min-max threshold and the probability
         factor for Drop precedence 0,1,2 and the WRED Q factor
         and the EF priority and the WRR weight.
         The index is Interface Index represent by rlIfProfileName
         and queue-id represent by rlQosQueueId"                       "Interface Index."                       "Queue id Index."                       ,"Tail Drop Threshold for Drop Precedence 0."                       ,"Tail Drop Threshold for Drop Precedence 1."                       ,"Tail Drop Threshold for Drop Precedence 2."                       +"WRED Min Threshold for Drop Precedence 2."                       +"WRED Max Threshold for Drop Precedence 0."                       )"WRED probability for Drop Precedence 0."                       +"WRED Min Threshold for Drop Precedence 2."                       +"WRED Max Threshold for Drop Precedence 1."                       )"WRED probability for Drop Precedence 1."                       +"WRED Min Threshold for Drop Precedence 2."                       +"WRED Max Threshold for Drop Precedence 2."                       )"WRED probability for Drop Precedence 2."                       "Q factor for WRED."                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       7"This table specifies The DSCP
         Mutation table"                       �"Each entry in this table describes the new
         DSCP for the packet.
         The index is Old DSCP represent by rlQosOldDscp"                       "Old DSCP."                       "New DSCP."                       5"This table specifies The DSCP
         Remark table"                       �"Each entry in this table describes the new
         DSCP for the packet.
         The index is Old DSCP represent by rlQosOldDscp"                       "Old DSCP."                       -"Specifies new DSCP in the violation action."                       *"Specifies new DSCP in the exceed action."                       :"This table specifies The Cos
         to queue map table"                       c"Each entry in this table describes queue ID.
         The index is CoS represent by rlQosCosIndex"                       "CoS value (0-7)."                       "Queue ID."                       ;"This table specifies The DSCP
         to Queue map table"                       v"Each entry in this table describes The
         Queue Number.
         The index is DSCP represent by rlQosDscpIndex"                       "DSCP value."                       "Queue Number."                       ;"This table specifies TCP
         Port to Queue map table"                       "Each entry in this table describes The
         Queue Number.
         The index is TCP/UDP port represent by rlQosTcpUdpPort"                       "TCP port number."                       "Queue Number."                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       ;"This table specifies UDP
         Port to Queue map table"                       {"Each entry in this table describes The
         Queue Number.
         The index is UDP port represent by rlQosTcpUdpPort"                       "UDP port number."                       "Queue value."                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       :"This table specifies UDP
         Port to DSCP map table"                       |"This Table describes The
         EF management for the system.
         The index is UDP port represent by rlQosEfQueueId"                       "Queue-ID."                       "Enable/disable"                       "The priority of the queue"                       4"This table describes the queue managment profiles "                       �"Each entry in this table describes The
         queue managment profile Value.
         The index is profile name represent by rlQueueProfileName"                       %"Profile name for the Queue profile."                       "EF or WRR"                       %"for EF read-only for wrr the weight"                       "EF or WRR"                       %"for EF read-only for wrr the weight"                       "EF or WRR"                       %"for EF read-only for wrr the weight"                       "EF or WRR"                       %"for EF read-only for wrr the weight"                       "EF or WRR"                       %"for EF read-only for wrr the weight"                       "EF or WRR"                       %"for EF read-only for wrr the weight"                       "EF or WRR"                       %"for EF read-only for wrr the weight"                       "EF or WRR"                       %"for EF read-only for wrr the weight"                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       ;"how many time this entry connected to the if policy table"                       /"This table specifies the queue shaper profile"                       �"Each entry in this table describes The
         shaper profile for all queues.
         The index sequencial index represent by rlQosQueueShapeIndex"                       "Profile Index."                       !"CIR for Queue1 0 for not active"                       !"CBS for Queue1 0 for not active"                       !"CIR for Queue2 0 for not active"                       !"CBS for Queue2 0 for not active"                       !"CIR for Queue3 0 for not active"                       !"CBS for Queue3 0 for not active"                       !"CIR for Queue4 0 for not active"                       !"CBS for Queue4 0 for not active"                       !"CIR for Queue5 0 for not active"                       !"CBS for Queue5 0 for not active"                       !"CIR for Queue6 0 for not active"                       !"CBS for Queue6 0 for not active"                       !"CIR for Queue7 0 for not active"                       !"CBS for Queue7 0 for not active"                       !"CIR for Queue8 0 for not active"                       !"CBS for Queue8 0 for not active"                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       Q"The  table is used to show statistics for
         ACL applied on an interface."                       K"This entry shows value of conter for a
         particular ACE of an ACL."                       *"Interface Index on which ACL is applied."                       1"Index of ACL, which was applied on the IfIndex."                       *"Index of ACE, which is belong to an ACL."                       "The value of the ACE counter."                      "The  table is used to get free indexes of tables to create
         new entries. The algorithm for free indexes depends on
         table's type:
         Tuple table      - first free index.
         Offset table     - first free index.
         ACE table        - last used index + ACE indexes delta.
         ACL table        - first free index.
         Class Map table  - last used index + Class Map indexes delta.
         Policy Map table - first free index.
         Policer Table    - first free index.
         The ACE indexes delta and Class Map indexes delta are used
         to supply QoS MIB user easy insert entry capabilities.
         Values of these deltas depend on the MIB implementation.
         The 'Get and increment' approach is used in all cases. "                       ;"The entry is used to get free index for particular table."                       J"Identification of the table, for which free index
         is retrieved."                       0"Free index for table. 0 means no free entries."                       \"The table is used to get the ACL,Class-Map and Policy-Map
          indexes from the name."                       E"The entry is used to get index form particular name and table type."                       I"Identification of the table, for which the index
         is retrieved."                       "The name of the entry"                       "the index for table"                      8"This scalar object defines queue ID, which is
         used for stack control information transfer.
         For standalone systems the scalar value equals 0.
         This scalar object can be used for warning messages
         when users assign a QoS map item, or a Class to the
         stack control queue."                      T"This scalar object defines CoS (VPT), which is used
         for stack control information transfer.
         For standalone systems the scalar value equals 8
         (not valid for VPT).
         This scalar object can be used for warning messages
         when users assign a stack control CoS to a non-stacking
         control queue."                       <"The table is used to set default 802.1p map (vpt to queue)"                       E"The entry is used to get index form particular name and table type."                       S"vlan priority tag , 3 bits of priority which determine
        the service class."                       M"the queue id vary from the first queue id to Max Number of queues supported"                       �"The table is used apply predefined ACLs to interfaces.
         Predefined ACLs is ACL to filter particular protocol or
         protocol's family. These ACL may operate simultaneously
         with IP and MAC ACLs."                       >"The entry is used to apply predefined ACLs to the interface."                       a"IfIndex of port/trunk or VLAN tag of VLAN
         on which predefined ACLa will be configured."                       "Interface Type(vlan/port)."                      "This bitmap defines predefined ACL which are applied
         on an interface. The table below defines bitmasks for
         supported predefined ACL.
         Protocol/Family     bitmask Description
         =====================================================
         LLC NetBuei/NetBios 0x01    ACL filters out LLC encapsulated
                                      NetBuei/NetBios frames
         IP NetBuei/NetBios  0x02    ACL filters out IP encapsulated
                                      NetBuei/NetBios frames
         "       g--    SYNTAX      BITS {
--            LLCNetBueiNetBios(0),
--            IPNetBueiNetBios(1)
--    }
               Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       ;"This table specifies ACE table with two index information"                      "Each entry in this table describes one Classifier Element.
        The information includes: Action the ACE's Type the up to 11 tuples
        pointers. The index is sequential integer represent by
        rlQosAceTidxAclIndex ACL index and rlQosAceTidxIndex ACE index"                       E"An arbitrary incremental Index
         for the ACL ACE connection."                       <"An arbitrary incremental Index
         for the ACE table."                       "ACE Action to take."                       
"ACE Type"                       "ACE Tuple pointer."                       "ACE Tuple pointer."                       "ACE Tuple pointer."                       "ACE Tuple pointer."                       "ACE Tuple pointer."                       "ACE Tuple pointer."                       "ACE Tuple pointer."                       "ACE Tuple pointer."                       |"ACE Accounting state.
         When set to 'enabled' than appropriate statistic's
         counter is provided for an ACE."                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       "ACE time range name."                       K"ACE time range is rule active state shows is ACE currently active or not."                       "ACE Tuple pointer."                       "ACE Tuple pointer."                       "ACE Tuple pointer."                       P"This field is valid only if AceActionType is
        deny or deny-DisablePort."                      �"MIB's version, the current version is 11
         1 - original version
         2 - Add new two MIB's items.
             - rlQosAceTidxTable - Ace table with two indexes
             - rlQosMibVersion.
             Change the unit in Policer table from bps to kbps
         3 - Add new MIB's value for Textual convention QosObjectMode
         4 - Add new MIBs rlQosDscpQueueDefaultMapTable
         5 - Add new advanced action : trustCosDscp
         6 - Add vpt,ether-type,tcp-flags,icmp-type,icmp-code,igmp-type to ClassTupleType
             Add ip-ICMP,ip-IGMP To AceObjectType
             Add vpt,ethertype To ClassOffsetType
         7-  Add rlQosPortRateLimitStatus,rlQosCirPortRateLimit, rlQosCbsPortRateLimit
             to   rlQosIfPolicyTable
         8 - Add Added rlQosDscpToDpTable
         9 - Add statistics
         10 - Add innerVlan to ClassOffsetType And inner-vlan to ClassTupleType
         11 - Added rlQosCPUSafeGuardEnable"                       4"The table is used to set default dscp to queue map"                       E"The entry is used to get index form particular name and table type."                       F"dscp , 6 bits of priority which determine
        the service class."                       M"the queue id vary from the first queue id to Max Number of queues supported"                       4"This table specifies The DSCP
         To Dp table"                       z"Each entry in this table describes the new
         DP for the packet.
         The index is DSCP represent by rlQosDscp"                       "Packet DSCP."                       	"New DP."                           M"This table specifies statistics counter for policies with specific actions "                       �"Each entry in this table describes counter per port.
        The index is port represent by rlIfIndex.
        In each entry represents counter, it's type , it's size and whether it's enabled."                       "Counter type."                       "Counter size in bits."                       ,"Indication whether the counter is enabled."                       "Counter value."                       9"This table specifies statistics counters per QoS meter "                      M"Each entry in this table describes counter per meter. The index is port represent by                 RlQosMeterStatisticsPort and RlQosMeterStatisticsPolicerPointer. In each entry there are fields representing whether the counter for the meter is enabled and two counters value - for in-profile bytes and for out-of-profile bytes. "                       '" Counter value of in profile traffic."                       ."Counter size in bits for in profile counter."                       (" Counter value of Out Profile traffic."                       /"Counter size in bits for out profile counter."                       V"The status of a table entry.
         It is used to delete an entry from this table."                       C"This table specifies statistics counters per QoS aggregate meter "                      !"Each entry in this table describes counter per aggregate meter.
        The index is rlQosPolicerIndex.
        In each entry there are fields representing whether the counter for the
        meter is enabled and three counters values - for green, yellow and red
        profiles bytes. "                       ."Counter value of In Profile amount of bytes."                       '"Counter size in bits for In Profile ."                       0" Counter value of Out Profile amount of bytes."                       '"Counter size in bits for Out Profile."                       V"The status of a table entry.
         It is used to delete an entry from this table."                       O"This table specifies statistics counters per VLAN/Port/Queue/Drop Precedence "                      M"Each entry in this table describes counter per any permutation of
        Port/VLAN/Queue/Drop Precedence. Each of the above can a group off 'All'.
        The index is port represent by rlQosOutQueueStatisticsCountrID.
        In each entry there are fields representing
        whether the counter is enabled and counters value. "                       #"Counter id, the key of the table."                       %"Port for which the flow is counted."                       I"Indication for whether the port is configured as range of all the ports"                       %"VLAN for which the flow is counted."                       I"Indication for whether the VLAN is configured as range of all the VLANS"                       &"Queue for which the flow is counted."                       K"Indication for whether the queue is configured as range of all the Queues"                       0"Drop Precedence for which the flow is counted."                       E"Indication for whether the DP is configured as range of all the DPs"                       %"The counter for tail dropped value."                       $"The counter for all traffic value."                       '"Counter size in bits for the counter."                       V"The status of a table entry.
         It is used to delete an entry from this table."                       w"This table specifies statistics global counters  for specific rules for all ports
        that they are connected to "                       '"Each entry represents global counter."                       "Counter type."                       "Counter size in bits."                       "Counter value."                       V"The status of a table entry.
         It is used to delete an entry from this table."                       2"This scalar indicates to clear all the counters."                           �"A table containing Classifier utilization information.
           Each row represents objects for a particular Unit
           present in this system."                       ?"A Single entry containing Classifier utilization information."                       h"The Unit ID of this Classifier. must be unique per entry.
            This is an index into the table."                       )"The classifier utilization percentage. "                       M"The classifier utilization number of used rules, in short rules resolution."                       a"The classifier utilization number of not used yet rules on the unit, in short rules resolution."                       0"The system classifier utilization percentage. "                       <"Number of used rules per system, in short rule resolution "                       <"Number of free rules per system, in short rule resolution "                       ?"Maximum number of rules per system, in short rule resolution "                       *"This table maps between port and profile"                       N"Each entry in this table describes
         mapping between port and profile"                       "Port number"                       	"profile"                       -"This scalar enables/disables CPU Safeguard."                       P"This table specifies The relationship
         between policy map to class map"                      U"Each entry in this table describes the connection
         between class-map entry to policy map by using pointers.
         The index is Class map pointer
         represent by rlQosPolicyClassRefClassPointer.
         It is also specifies the class-map priotiry in the policy-map, which set the
         rules order within the policy-map"                       ."The class-map priority within the policy-map"                       "Class-map index Pointer"                       "Policy map index Pointer"                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       ,"This table holds statistics for deny ACEs."                       f"Each entry in this table holds number of hits for deny ACEs
         attached to specific Interface."                       "Interface Index."                       1"Number of hits on deny ACEs for this interface."                       4"Number of hits on deny ACEs for 'Other'-type flow."                       �"Keeps ifIndex a port or trunk or vlan that
         its hit counters should be reset.
                 If the value is 0 then all interfaces counters must be reset. "                       E"This scalar indicates clearing 'Other'-type flow counter operation."                       �"This table responsible to set the global qos mode configuration:
        qos mode, qos trust mode, and if port are trusted by default in qos advanced
        mode."                       �"This table responsible to set the global qos mode configuration:
        qos mode, qos trust mode, and if port are trusted by default in qos advanced
        mode.
        Current implemnetaion assumes only one entry exist."                       U"Entry index - currenly only one entry can exist, indexes hard coded with value '1'."                       �"This field replaces deprecated scalar rlQosCliQosMode.
        Defines the global qos operation mode: disable, basic or advnaced. "                       �"This field replaces deprecated scalar rlQosCliBasicModeCfg.
        Defines the global qos trust operation mode relevant for qos basic mode. "                       �"This field replaces deprecated scalar rlQosCliBasicModeCfg.
        Defines the global qos trust operation mode relevant for qos advanced mode. "                       }"This field specified whether ports are set to trused or not-trusted by
        default when switching to qos advanced mode."                      <"This field indicates if dscp to dscp mutation mode is enable.
        It can be set to true in the following terms:
        1.rlQosGlobalTrustMode is in {dscp, vpt-dscp} ( rlQosGlobalQoSMode must be basic or advanced)
        2.if rlQosGlobalQoSMode is advanced then rlQoSPortTrustAdvancedMode must be set to true."                       �"This status of entry action.
        In current implementation only one entry exist, therefor only status = active is
        acceptable."                       Q"The  table is used to show statistics for
         ACL applied on an interface."                       �"This entry returns the value of the class map counter.
        Entry is added/deleted to this MIB when counting is enabled/disabled
        on the class map.
        The counter is set to zero upon reading its value."                       A"This field returns the current value of the class map counter. "                       �"The  read only table is used to get the trapId
        assisated to application wants to use the trap action in
        the class map table"                       c"This entry holds the trapId for application using the trap
        action in the class map table."                       ?"This field represents the application name and traffic type. "                       C"This field defines the trap id to be use in the class map entry. "                       ;"This scalar specifies application-specific default action"                       J"This table holds a list and  of ACE matched log-input option interfaces."                       ="This table holds only one entry of port list and vlan list."                        "An index is entrie's sequence."                       &"the matched log-input ACEs port list"                       6"the matched log-input ACEs vlan list from 1 to 1024."                       9"the matched log-input ACEs vlan list from 1025 to 2048."                       9"the matched log-input ACEs vlan list from 2049 to 3072."                       9"the matched log-input ACEs vlan list from 3073 to 4094."                       ="This table specifies the Cos to queue map per-profile table"                       �"Each entry in this table describes a QoS profile. The indices are 
         Application index, represented by rlQosCosProfileAppIndex
	 Profile index, represent by rlQosCosProfileIndex 
	 and CoS represent by rlQosCosProfileCosIndex"                       "Application index."                        "Profile index per-application."                       ""CoS value of an incoming packet."                       R"CoS value to (optionally) set in 802.1p User Priority field of matching packets."                       3"Traffic class queue assigned to matching packets."                       4"This table specifies the Cos profile per-interface"                       C"Each entry in this table describes a CoS profile for an interface"                       "Interface index."                       "Application index."                       $"CoS-Profile index per-application."                       3"This table specifies per ACL its bound interfaces"                       �"Each entry in this table describes the interfaces bound to ACL,
		 Ports and Vlans.
         The index is represented by rlQosAclBoundIfAclId"                       "Acl index"                       "Ports list bounded to Acl "                       *"Vlan list bounded to Acl from 1 to 1024."                       -"Vlan list bounded to Acl from 1025 to 2048."                       -"Vlan list bounded to Acl from 2048 to 3072."                       -"Vlan list bounded to Acl from 3073 to 4094."                              