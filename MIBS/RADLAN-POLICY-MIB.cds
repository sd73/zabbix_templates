    �"Specifies one of 3 classifier types for which offset bytes can
         be specified. For Ip and Ipx, the offsets indicated are relative
         to the beginning of the L3 data (IP options field is skipped).  For
         the Bridged type, the offsets are relative to L2 (and any 802.1D tag
         is skipped).
         A value of notUsed is applied, if the classifier uses one set of
         offsets for bridge, IP and IPX"               "Interface type."              �"Configure the port trust state
        cos     - Classifies ingress packets with the packet CoS values.
                  For untagged packets, the port default CoS is used.
        dscp    - Classifies ingress packets with the packet DSCP values.
                  For non-ip tagged packets, the packet CoS value is used
                  with the Cos-to-DSCP table .For non-IP untagged packets,
                  the default port CoS is used with the Cos-to-DSCP table
        tcp-udp - v750 deprecated.
                  port to dscp - Classifies ingress packets with the packet
                  destination port values. For non-ip tagged packets, the packet CoS
                  value is used with the Cos-to-DSCP table. For non-IP untagged packets,
                  the default port CoS is used with the Cos-to-DSCP table.
        none    - v750 deprecated.
                  802.1p is disabled for this port and the packet gets best effort queue.
        cos-dscp- Classifies ingress packets with the packet DSCP values.
                  For non-ip tagged packets, the packet CoS value is used
                  with the Cos-to-Queue table .For non-IP untagged packets,
                  the default port CoS is used with the Cos-to-Queue table
        "               u"specify to Layer 4 protocol type for which the port number will refer
          at the rlPolicyTcpUdpPortDscpTable."               P"The counter can be of different sizes - 32 bit, 48 bit, 64 bit. Maximum is 64."               �"Specifies port's type to which a classifier is applied. It is
         only used for the DiffServ mode. For the non-DiffServ mode
         the normal value may be used."               {"Bitmap that includes days of week.
                 Each bit in the bitmap associated with corresponding day of the week."              �"The user can set the system to operate either in the Basic mode or in the Advanced mode.
          The setting of the mode applies to all ports in the system.
          configuring the system to work in the advanced mode,
          all setting for the basic mode are not in affect.
          For example, 802.1p is not available when operating in the advanced mode.
          When changing from basic mode to advanced mode and then back to basic mode,
          the user assignments in the basic mode are restored.
          Same for moving from advanced to basic and back again to advanced mode,
          here again the user assignments are kept.
          The different modes are mutually exclusive, i.e., only one can be
          active at a given time. For example, when configuring the system to work
          in the advanced mode, all setting for the basic mode are not in affect.
          This means that 802.1p is not available when operating in the advanced mode.
          When changing between modes (Basic, Advanced, Service, none), some of
          the user settings are reset to their default values. Specifically:
          1. When changing from the advanced mode to any other mode,
             the CCL definitions are lost.
          2. When changing from any mode to any other mode, the interface assignments:
             associated Policy map, trust mode of the Basic mode, shaper and scheduler
             settings are lost.
          3. When changing from service mode to any other mode, all service mode
             settings are lost.
          4. When changing to service mode, ACL are lost. The user is prompted if
             he wants to whether to import his active ACLs to the service mode.
          5. All other user configurations are kept.
          When the system is configured to the Basic mode and the user changes the
          trust mode, the CCL assignment per port and the shaper settings are reset
          to their default values."               "The Action Drop Type."               '"Clear action, value for clear scalar."               "Drop preceedence type."              s"Specifies the packet redirection options.
     Redirection is applied only on permitted packets.
      1 - disabled  - no redirect
      2 - trap - trap to local_host (CPU)
      3 - redirectToInterface - redirect to a output interface (port, trunk or vlan)
      4 - redirectToAllPorts - redirect to all ports, exept the ingress port.
      5 - mirror - forward the packet and sent a copy to local_host (CPU)
      6 - analyzerPort - forward the packet and sent a copy to egress port.
      7 - loopback - redirect the packet the the port it was recieved.
      8 - redirectToPortGroup - send to group of ports, defined in rlUserAssignedVidxTable table.
      9 - mirror_and_redirectToInterface - send the packet to interface and send a copy to local_host(CPU)
      10 -mirror_and_redirectToInterfacesGroup - send the packet to group of ports and send a copy to local_host(CPU)  "               �"Specifies the mark vlan action type in the class map table.
      1 - noMark - No vlan marking
      2 - mark  - mark vlan tagged.
      3 - markNestedVlan - add vlan tag to the packet. "               �"The counter can be of different types, depends on actions adhered to
                    rules that the counter is working on."                                                                         M"The private MIB module definition generic traffic policy in Radlan devices." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "200503140000Z" "200502070000Z" "200501270000Z" "200310070000Z" "200309220000Z" "200504140000Z" "200504170000Z" "200604080000Z" "200605200000Z" "200606260000Z" !"Initial V2 version of this MIB." �"Added  rlPolicyPortCfgPortRateLimitStatus,rlPolicyPortCfgCirPortRateLimit
                   rlPolicyPortCfgCbsPortRateLimit to rlPolicyPortConfigurationTable"("Added rlPolicyFlowClassificationOffsetsGroupUseVPTId and
                         rlPolicyFlowClassificationOffsetsGroupUseEtherTypeId To
                         rlPolicyFlowClassificationOffsetsTable
                   Added rlPolicyClassifierVPTID And
                         rlPolicyClassifierEtherTypeID To
                         rlPolicyClassifierTable
                   Added Vpt and Ethertype support to rlPolicyClassifierAdditionalCriteriaSupported
                   Added rlPolicyFlowClassificationOffsetsGroupUseInnerVlanId To
                         rlPolicyFlowClassificationOffsetsTable
                   Added rlPolicyClassifierInnerVID To
                         rlPolicyClassifierTable
                   Added Inner vlan id support to rlPolicyClassifierAdditionalCriteriaSupported" '"Added cos-dscp to RlPolicyTrustTypes." _"Add to RlPolicyQosMode service ,Add rlPolicyRulesDownloadMarker,Added rlPolicyDscpVptTable  ." K"Added rlPolicyDefaultForwardingProtocol to rlPolicyDefaultForwardingTable" "Added rlPolicyDscpToDpTable" !"Added branch rlPolicyStatistics" ,"Added branch rlPolicyClassifierUtilization" &"Added rlPolicyVlanConfigurationTable"              w"MIB's version, the current version is 14
         1 - original version
         2 - two new fields
                rlPolicyActionChangeDscpNonConform
                rlPolicyActionNewDscpNonConform
             were added.
         3 - added support new policy features
                QoS modes: basic and advanced
                support for trusted mode  operations
                mapping tables for trusted ports
                dscp, tcpUdp, mutation, remarking.
         4 - I) added support to service mode.
             II)DSCP to VPT mapping table
             III) download marker
         5 - Added cos-Dscp to RlPolicyTrustTypes
         6 - Added rlPolicyFlowClassificationOffsetsGroupUseVPTId and
                   rlPolicyFlowClassificationOffsetsGroupUseEtherTypeId To
                   rlPolicyFlowClassificationOffsetsTable
             Added rlPolicyClassifierVPTID And
                   rlPolicyClassifierEtherTypeID To
                   rlPolicyClassifierTable
             Added Vpt and Ethertype support to rlPolicyClassifierAdditionalCriteriaSupported
         7 - Added  rlPolicyPortCfgPortRateLimitStatus,rlPolicyPortCfgCirPortRateLimit
                    rlPolicyPortCfgCbsPortRateLimit to rlPolicyPortConfigurationTable
         8 - Added  rlPolicyDefaultForwardingProtocol to rlPolicyDefaultForwardingTable
             Added rlPolicyDscpToDpTable
         9 - Add statistics
         10 - Add classifier utilization
         11 -Added rlPolicyFlowClassificationOffsetsGroupUseInnerVlanId To
                 rlPolicyFlowClassificationOffsetsTable
             Added rlPolicyClassifierInnerVID To
                 rlPolicyClassifierTable
             Added Inner vlan id support to rlPolicyClassifierAdditionalCriteriaSupported
         12 - Added rlPolicyVlanConfigurationTable
         13 - Added rlPolicyIsTCAvailable scalar
         14 - Added rlPolicyCPUSafeGuardEnable"                               �"Some platforms allow Policy statements to examine all packet
         offsets(Opal); other platforms require specification of specific
         byte offsets for routedIp packets, another set of offsets for
         routedIpx, a third set for bridge."                       "For platforms which require an FCOG, indicates the maximum
         number of byte offsets specifiable for each offset group."                       w"Indicates the maximum value of a byte offset in a
         Flow Classification Offset Group. If 0, there is no limit."                       _"indicates the maximum number of byte offsets
         specifiable for each Ompc offset group."                       a"Indicates the maximum value of a byte offset in a
         Ompc Group. If 0, there is no limit."                      -"A bit mask indicating which operators are permissable in an OMPC:
          ----------
          |87654321|
          ----------
          1 - equal operator permitted
          2 - not-equal operator permitted
          3 - greater-than operator permitted
          4 - less-than operator permitted"                       }"Indicates the maximal permissible length of an OMPC using
         bigger' or 'smaller' condition. If 0, there is no limit."                      �"A bit mask indicating which additional Criteria may be supported
       by the classifier:
          ----------
          |87654321|
          ----------
          1 - input port supported
          2 - output port supported
          3 - VLAN ID for bridging supported
          4 - VPT ID for bridging supported
          5 - EtherType ID for bridging supported
          6 - Inner VLAN ID for bridging supported"                       �"Indicates whether the additional FCOG or Classifier criteria
         (ie. inPort, outPort VID count towards the maximum number of offsets
         ie. whether using inPort in the FCOG reduces the maximum number of
         offsets available."                       �"A bit mask indicating which offset types are supported by the
         platform for FCOG and OMPC definitions:
            ----------
            |87654321|
            ----------
            1 - L2 offsets supported
            2 - L3 offsets supported"                       �"A bit mask indicating which operation could be performed with OPMC
            ----------
            |87654321|
            ----------
            1 - equal,
            2 - notEqual,
            3 - bigger,
            4 - smaller."                      "Specifies the byte offsets that the platform can use for
         policy decisions.  This table is used for platforms
         which impose limitations on choosing the OMPCs for classification.
         If the platform does not impose any limitations, the value of
         rlPolicyFlowClassificationOffsetsGroupScheme is allOffsetsPermitted.
         Each entry in the table specifies a combination of byte offsets
         which can be used to specify flow classification.  A rule may
         use a subset of the bytes of its Offset Group.
         The maximum value for each offset is given by
         rlPolicyFlowClassificationOffsetGroupMaximumOffset.
         The maximum number of offsets per Offset Group is given by
         rlPolicyNumberOfOffsetsPerFlowClassificationOffsetGroup."                       W"The flow classification offset table entry includes the
         following parameters"                       F"Specifies a classifier type for which offset bytes can be specified."                      �"The list of offsets to be included in the Flow Classification Offset
         Group are specified as subidentifiers in the OID(after the first 2
         bytes which must be 1.1). The maximal number of permissible offsets
         is given by rlPolicyNumberOfOffsetsPerFlowClassificationOffsetGroup.
         The maximal value that an offset can have is
         rlPolicyFlowClassificationOffsetGroupMaximumOffset."                      D"Indicates whether the corresponding byte denotes an offset from beginning
         of L2, from the beginning of L3 IPv4 packet data or from the beginning
         of L3 IPv6 packet data.
         Each byte in the OID contains either:
            (1) - L2 offset
            (2) - L3 Offset
            (3) - L3 IPv6 Offset"                       �"The list of masks corresponding to the offsets to be included in the
         Flow Classification Offset Group are specified as bytes in the
         OID(after the first 2 bytes which must be 1.1)."                       c"Indicates whether or not the Input Interface Index is usable
         in Policy Rule definitions."                       �"Indicates whether or not the Output Interface Index(ie.
         routing/bridging decision) is usable in Policy Rule definitions"                       g"Indicates whether or not the VlanId is usable in Policy Rule
         definitions for bridged packets"                       V"The status of a table entry.
         It is used to delete an entry from this table."                       d"Indicates whether or not the VPT is usable in Policy Rule
         definitions for bridged packets"                       j"Indicates whether or not the EtherType is usable in Policy Rule
         definitions for bridged packets"                       m"Indicates whether or not the inner VlanId is usable in Policy Rule
         definitions for bridged packets"                       "The table of OMPC statements."                       D"Each classification statement consists of the following parameters"                       F"Specifies a classifier type for which offset bytes can be specified."                       "Index into the OMPC  Table. "                      /"Specifies the offset within the frame (in bytes) from the layer
         according to rlPolicyGroupType. The limitation of this field is
         according to the rlPolicyFlowClassificationOffsetGroupMaximumOffset
         parameter if this OMPC is used by an entry in the
         rlPolicyClassifierTable whose rlPolicyClassifierType is a protocol
         for which predefined offsets in rlPolicyFlowClassificationOffsetsTable
         are required.
         rlPolicyRequiredOffsetGroups indicates for which protocols there is
         such a requirement."                       w"Indicates whether the offset should be interpreted as relative to the
         beginning of L2 or the beginning of L3"                      "Specifies which bits  of the rlPolicyOMPCPattern field are
         significant for packet comparison. The length of the mask,
         in case of 'bigger' or 'smaller' rlPolicyOMPCCondition,
         is limited by rlPolicyMaxOMPCLengthForBiggerSmallerOperation."                       n"Describes the mask field. The length of this object must be equal
        to the length of rlPolicyOMPCMask."                      A"These define the operation carried out on the two 'operands'
        (frame and pattern), i.e. Bigger means that frame bits should be
        bigger than pattern bits. The permitted values are according to
        rlPolicyOMPCPermittedOperators parameter, if this OMPC is used by
        an entry in the rlPolicyClassifierTable whose rlPolicyClassifierType
        is a protocol for which predefined offsets in
        rlPolicyFlowClassificationOffsetsTable are required.
        rlPolicyRequiredOffsetGroups indicates for which protocols there is
        such a requirement."                       ."Free text specifing the nature of this OMPC."                       U"The status of a table entry.
        It is used to delete an entry from this table."                       $"The table of Classifier statement."                       �"Classifiers can be of the ingress, egress, or post-routing phase
         varieties.
         Each multifield classification statement consists of the
         following parameters."                       F"Specifies a classifier type for which offset bytes can be specified."                       '"List Index into the Classifier Table."                       *"SubList Index into the Classifier Table."                       ""Index into the Classifier Table."                       �"The list of OMPCs to check with this Classifier. Each
         subidentifier together with rlPolicyClassifierType specify one OMPC."                       �"Input interface index to be compared with received packet,
         a value of 0 denotes that the classifier is applied to all ports."                       �"Output interface index to be compared with sent packet,
         a value of 0 denotes that the classifier is applied to all ports."                       *"VLAN ID, used only for bridged traffic. "                      �"For a classifier used by the Diffserv Rules table.  Enables
         specification of a classifier that should apply to all
         Diffserv boundary ports or all Diffserv Interior ports.
         If normal is specified, the rlPolicyClassifierInIfIndex field
         is used as it is in the non-diffserv case.  If allBoundary or
         allInterior is selected, rlPolicyClassifierInIfIndex is ignored"                      �"For a classifier used by the Diffserv Rules table.  Enables
         specification of a classifier that should apply to outbound
         traffic on all Diffserv boundary ports or all Diffserv Interior
         ports.
         If normal is specified, the rlPolicyClassifierOutIfIndex field
         is used as it is in the non-diffserv case.  If allBoundary or
         allInterior is selected, rlPolicyClassifierOutIfIndex is ignored"                       V"The status of a table entry.
         It is used to delete an entry from this table."                       �"allow to define list of ports for the specific classifier
         for ingress classification. if rlPolicyClassifierInIfIndex equal to zero
         then the following list should be reffered , if the list is empty we refer
         to ALL Ports"                       �"allow to define list of ports for the specific classifier
         for egress classification. if rlPolicyClassifierOutIfIndex equal to zero
         then the following list should be reffered , if the list is empty we refer
         to ALL Ports"                       q"VPT ID - user priority tag to be compared with .
      8 is used to indicate not used value for this classifier"                       r"VPT ID Mask ,mask the user priority field .
      0 is the default indicate Mask all compared with any VPT value"                      ?"EtherType ID, to be compared with.
      65535 is used to indicate not used value for this classifier
      1499 is uded to indicate IPv4 ethertype that is originated from IPv4 ACL with permit/deny any any any
      1500 is uded to indicate IPv6 ethertype that is originated from IPv6 ACL with permit/deny any any any"                       6"INNER VLAN ID, used only for double tagged traffic. "                               `"Indicates whether the dropped packets counter in the
         rlPolicyRulesTable is supported."                       �"A bit mask indicating which operation could be perform
            ----------
            |87654321|
            ----------
            1 - block,
            2 - blockAndTrap,
            3 - permitAndTrap,
            4 - permit."                       T"Specifies whether the platform supports metering in inbound packet
         rules."                       d"Specifies whether the platform supports metering on outbound packet
         rules (for Diffserv)."                      �"The table of rules and Rules statements applied to all incoming traffic
         at the post-routing phase - ie. both the inPort and outPort are
         available for classification
         When Diffserv is not in effect(ie. IPX, bridging, or IP when the global option
         for Diffserv is off), certain table parameters are not available(see
         below). The DiffServ option is enabled or disabled by setting
         rlDiffservModeEnabled."                       Y"Each multifield classification statement consists of the following
         parameters."                       F"Specifies a classifier type for which offset bytes can be specified."                      �"Specifies the direction for this entry on the
         interface. 'inbound' traffic is operated on during
         receipt, while 'outbound' traffic is operated on prior
         to transmission.
         Based on the metering support:
         inbound available while the ingress metering supported,
         outbound available while egress metering supported,
         and none while no metering supported."                       !"Enumerates the rule list entry."                       %"Enumerates the rule sub-list entry."                       ""Enumerates the rule index entry."                       �"Specifies the action for the filter.
         Values 1-10 reserved for the System filtering implemetation;
         Values starting from 11 may be used for user definition about
         future application."                       7"The number of packets blocked by this filtering rule."                      H"This further reference indicate on the entry at the metering or
                 action table, based on the supported features. The
                 rlPolicyRulesFurtherRefPointer points on the metering table if the
                 metering feature is supported, if not this fields points on the
                 Action table"                       ."Free text specifing the nature of this Rule."                        "Row status of the Rules entry."                       4"If not zero, perform counting of matched packets ."                       9"The number of packets that matched this filtering rule."                       �"This further reference indicate on the entry at the
             action table, The rlPolicyRulesActionPointer points on the action
             table if the aggregate metering feature is supported,or
             if meter is not belong to data path. "                       "Time range of the first ACL. "                        "Time range of the second ACL. "                       ,"Start port of port range for source port. "                       *"End port of port range for source port. "                       1"Start port of port range for destination port. "                       /"End port of port range for destination port. "                       �"This field is valid only if rlPolicyRulesFilteringAction is
        not permit. Used to distinguish between Hard and Soft drop."                       B"Indicates when rules download or removing starts and terminates."                              `"Indicates how many meters can be chained in succession (ie. so
         that if the first meter fails, the second can be examined).
         The final meter in a sequence is always 'always-conform', so if
         the value of this parameter is 2, the platform that supports a
         single meter and then a second marking/action for meter failure."                       9"This table defines the Metering classes for the system."                       5"Each statement consists of the following parameters"                       ""This enumerates the table entry."                      "If true, the meter always accepts all traffic; its
         rate is effectively infinite. In such a case, the token
         bucket defined by the MeterRate and Burst-Size
         parameters is ignored.
         also used when there isn't metering support."                       s"The rate in kilobytes/second of traffic considered within the
         bandwidth allocated for this policy entry."                       �"The Burst Size parameter for the aggregate meter leaky bucket.  A
         value of 0 means that the device should choose the Burst Size
         that it thinks is most suitable for the rule.
         The interval can be derived from (burstSizex8/Rate)."                      "A Quantitative Appliction policy rule where each individual
         session requires a guaranteed minimum bandwidth.
         Specifies the Ingress traffic flow meter per session
         indicate a bandwidth limit to be applied to each individual session
         Value 0 at rlPolicyMeteringClassPerSessionMetering
         and rlPolicyMeteringClassMaxSessionLimit
         is interpreted to mean no sepecific requarment and
         the aggregate metering will be done by the system decision.
         The rate in kilobytes/second"                      V"indicate a the maximum number of session for a sepecific rule
         to guarante minimum bandwidth.
         Value 0 at rlPolicyMeteringClassPerSessionMetering
         and rlPolicyMeteringClassMaxSessionLimit
         is interpreted to mean no sepecific requarment and
         the aggregate metering will be done by the system decision."                       �"Specifies the index in the rlPolicyActionTable to be
         accessed for packets that are in-profile.
         Value 0 is interpreted to mean no action.
         A non-zero value may be specified only for RoutedIp
         packets in Diffserv mode."                      )"Specifies an index in the rlPolicyMeterClassTable. This
         is the meter that is to be used if the packet is out-of-profile
         relative to the current meter.
         If non-Diffserv mode, this field is not used.
         If the current meter is AlwaysConform, this field is not used."                       V"The status of a table entry.
         It is used to delete an entry from this table."                       ."Enable metering counter for the meter entry."                       1"meter counter for packets that are in profile ."                       3"meter counter for packets that are out of profile"                               d"Indicates whether the platform supports setting MRED characteristics
         in the packet action"                       q"Indicates whether the platform can maintain a count of
         packets Marked for drop by a particular action."                       <"Indicates whether the platform support at drop precedence."                       �"A bit mask indicating which drop precedence supported
            ----------
            |87654321|
            ----------
            1 - low,
            2 - medium,
            3 - high,
            4 - drop"                       �"A bit mask indicating which drop precedence supported
            ----------
            |87654321|
            ----------
            1 - low,
            2 - medium,
            3 - high,
            4 - drop"                       D"Indicates whether the platform support at DSCP filed modification."                       �"Indicates whether the platform supports at Q managment for implementation,
        mred, randomDrop used by the min/max threshold"                      �"This table defines the Actions for packets that pass the meter table
         ie. the characteristics that are assigned to packets before they
         reach the scheduler.
         When Diffserv is not in effect(ie. IPX, bridging, or IP when the global option
         for Diffserv is off), certain table parameters are not available(see
         below). The DiffServ option is enabled or disabled by setting
         rlDiffservModeEnabled."                       X"Each multifield classification statement consists of the following
         parameters"                       #"This enumerates the Action entry."                       H"Indicates the new DSCP with which the packet should
         be marked"                       �"If true, the packet is re-marked with the value indicated by
         newDscp above. If false, the packet's DSCP value is not changed"                      �"The min-threshold is the queue depth that a random
         drop process will seek to manage the queue's depth to.
         This object is in the action table rather than the
         queue table because Differentiated Services PHBs, such
         as the Assured Service, permit differently classified
         traffic to have different drop parameters even though
         they occupy the same queue."                      �"The max-threshold is the maximum permissible queue
         depth. In tail drop scenarios, the queue will drop if a
         packet is presented to it and it is instantaneously
         full by this measure. In random drop scenarios, the
         queue will drop if a packet is presented to it and the
         average queue depth exceeds the max-threshold.
         This object is in the action table rather than the
         queue table because Differentiated Services PHBs, such
         as the Assured Service, permit differently classified
         traffic to have different drop parameters even though
         they occupy the same queue."                       ""                       ."The number of packets dropped by this action"                       �"This paramer is used at non diffserv mode to attached the drop precedence
         for packet InProfile (metering), only if there is a support for drop precedence
         and with what level."                       �"This paramer is used at non diffserv mode to attached the drop precedence
         for packet OutProfile (metering), only if there is a support for drop precedence
         and with what level."                       �"Routed packets that run through the Rules receive VPT as define at the
              service class they attached to, bridge packets receive through the
              802.1p operation unless we define to change the VPT for those packets."                       0"Priority Tag that will be written to packets ."                      i"Specifies the index in rlPolicyServiceClassTable denoting
         the service class to which the packet should be assigned
         after the action specified in this entry is carried out.
         A value of 0 means that no Service class is assigned.  A
         value of 0 is legal only for routedIp packets in Diffserv
         mode on Inbound processing."                       "The status of the table entry"                       �"If true, the packet is re-marked with the value indicated by
         newDscp for non conforming packets.
         If false, the packet's DSCP value is not changed"                       H"Indicates the new DSCP with which the packet should
         be marked"                       n"Indicates if egress queue is assigned for packets match
        rule according to global trust mode or note."                       R"Indicates the new Ip- Precedence with which the packet should
         be marked"                       �"If true, the packet is re-marked with the value indicated by
         newIpPrecedence above. If false, the packet's DSCP value is not changed"                       #"Specified the redirection action/"                      "Relevant if rlQosClassMapRedirect is either
        'redirectToInterface' or 'analyzerPort'.
        Specified the output interface the packet is redireted to or
        the port that gets copy of the packet in addition to the port
        it was farwarded. "                      "If 'mark', than the classified
         traffic will be remarked with new VLAN id.
         If 'disabled' VLAN id is not changed.
         If markNestedVlan, if the egress interface defined as
         VLAN tagged member then a new VLAN tag is added  to the packet."                       `"If rlPolicyActionChangeVid is true,
         specify the new Vlan id to assigned to the packet"                       �"If now zero, Indicates the trap type id the matched packets arrives with,
      relevant when RedirectAction is trap or mirror."                       3"If not zero - Tunnel is added to matched packets."                               �"Indicates the number of service classes supported on each
         port of the platform.  Service classes can be neither
         created nor destroyed."                       �"Indicates whether the platform supports setting an upper limit
         to the bandwidth of traffic transmitted on queues operating in
         Strict Priority mode."                       U"Indicates which service class is default one for packets whose COS is undetermined."                      �"Specifies the Service Class table preform active action
        (usuarlly after set of entries at the service class tentative table).
         Specifies the current status of a table, there could be two options,
         tentative/active table. only the tentative table is the read-write
         and the active table is read-only. at set to activeAction the
         tentative table will be copied to the active table."                      L"This table defines the service classes for the system ie. the queue
         discipline and weight characteristics that are implemented on each
         port unless the user configures a port specific value in ....
         The total number of service classes defined can not exceed
         rlPolicyNumberOfTransmitQueuesPerPort."                       Y"Each multifield classification statement consists of the following
          parameters"                       3"This enumerates the ServiceClass Tentative entry."                       :"The name given by the system administrator to the class."                       �"Indicates the type of Diffserv per-hop behaviour that this service
         class is intended to support. This object can be set by the user
         only in DiffServ mode (i.e. rlDiffservModeEnabled = enabled)."                      �"Specifies either the minimum throughput of the queue as a percentage
         of the throughput of  each output port on which the service class is
         implemented.  If zero, there is no minimum rate. This field can not
         be set by the user if rlDiffservModeEnabled = disabled and
         rlPolicyServiceClassPriority > 0 or rlDiffservModeEnabled = enabled
         and rlPolicyServiceClassPhbType = expeditedForwarding."                      	"Specifies either the upper limit on the throughput of the queue as a
         percentage of the throughput of  each output port on which the service
         class is implemented.  If zero, there is no maximum rate.
         This field can not be set by the user
         if rlDiffservModeEnabled = disabled and
         rlPolicyServiceClassPriority = 0 or
         rlDiffservModeEnabled = enabled and
         rlPolicyServiceClassPhbType != expeditedForwarding or
         rlBoundedPriorityQueueSupport = notSupported."                      m"If non-zero, this service class will operate as a priority service
         class with the specified priority value.  This object can not be set
         in Diffserv mode (i.e. rlDiffservModeEnabled = enabled), in which case
         rlServiceClassPhbType should be used instead. It can't be set when
         rlBoundedPriorityQueueSupport = notSupported as well."                       �"802.1D Priority Tag that will be written to routed packets and
         untagged bridged packets transmitted with this service class."                       "Status of this entry."                       H"Tail Drop Threshold for Drop Precedence 0.
        UNITS percent 0-100"                       H"Tail Drop Threshold for Drop Precedence 1.
        UNITS percent 0-100"                       H"Tail Drop Threshold for Drop Precedence 2.
        UNITS percent 0-100"                       G"WRED Min Threshold for Drop Precedence 0.
        UNITS percent 0-100"                       G"WRED Max Threshold for Drop Precedence 0.
        UNITS percent 0-100"                       )"WRED probability for Drop Precedence 0."                       G"WRED Min Threshold for Drop Precedence 1.
        UNITS percent 0-100"                       G"WRED Max Threshold for Drop Precedence 1.
        UNITS percent 0-100"                       )"WRED probability for Drop Precedence 1."                       H"WRED Min Threshold for Drop Precedence 2.
         UNITS percent 0-100"                       G"WRED Max Threshold for Drop Precedence 2.
        UNITS percent 0-100"                       )"WRED probability for Drop Precedence 2."                       e"additional parameter for the WRED algorithem supporting
        the Queue weight exponentail factor"                       !"If there is shaper on the Queue"                       k"The CIR for the Queue shaper.
         N/A when the shper is disabled.
         UNITS bps bits per second"                       ]"The CBS for the Queue shaper.
         N/A when the shper is disabled.
         UNITS bytes"                      L"This table defines the service classes for the system ie. the queue
         discipline and weight characteristics that are implemented on each
         port unless the user configures a port specific value in ....
         The total number of service classes defined can not exceed
         rlPolicyNumberOfTransmitQueuesPerPort."                       Y"Each multifield classification statement consists of the following
          parameters"                       0"This enumerates the ServiceClass Active entry."                       :"The name given by the system administrator to the class."                       �"Indicates the type of Diffserv per-hop behaviour that this service
         class is intended to support. This object can be set by the user
         only in DiffServ mode (i.e. rlDiffservModeEnabled = enabled)."                      �"Specifies either the minimum throughput of the queue as a percentage
         of the throughput of  each output port on which the service class is
         implemented.  If zero, there is no minimum rate. This field can not
         be set by the user if rlDiffservModeEnabled = disabled and
         rlPolicyServiceClassPriority > 0 or rlDiffservModeEnabled = enabled
         and rlPolicyServiceClassPhbType = expeditedForwarding."                      	"Specifies either the upper limit on the throughput of the queue as a
         percentage of the throughput of  each output port on which the service
         class is implemented.  If zero, there is no maximum rate.
         This field can not be set by the user
         if rlDiffservModeEnabled = disabled and
         rlPolicyServiceClassPriority = 0 or
         rlDiffservModeEnabled = enabled and
         rlPolicyServiceClassPhbType != expeditedForwarding or
         rlBoundedPriorityQueueSupport = notSupported."                      m"If non-zero, this service class will operate as a priority service
         class with the specified priority value.  This object can not be set
         in Diffserv mode (i.e. rlDiffservModeEnabled = enabled), in which case
         rlServiceClassPhbType should be used instead. It can't be set when
         rlBoundedPriorityQueueSupport = notSupported as well."                       �"802.1D Priority Tag that will be written to routed packets and
         untagged bridged packets transmitted with this service class."                       H"Tail Drop Threshold for Drop Precedence 0.
        UNITS percent 0-100"                       H"Tail Drop Threshold for Drop Precedence 1.
        UNITS percent 0-100"                       H"Tail Drop Threshold for Drop Precedence 2.
        UNITS percent 0-100"                       G"WRED Min Threshold for Drop Precedence 0.
        UNITS percent 0-100"                       G"WRED Max Threshold for Drop Precedence 0.
        UNITS percent 0-100"                       )"WRED probability for Drop Precedence 0."                       G"WRED Min Threshold for Drop Precedence 1.
        UNITS percent 0-100"                       G"WRED Max Threshold for Drop Precedence 1.
        UNITS percent 0-100"                       )"WRED probability for Drop Precedence 1."                       G"WRED Min Threshold for Drop Precedence 2.
        UNITS percent 0-100"                       G"WRED Max Threshold for Drop Precedence 2.
        UNITS percent 0-100"                       )"WRED probability for Drop Precedence 2."                       e"additional parameter for the WRED algorithem supporting
        the Queue weight exponentail factor"                       !"If there is shaper on the Queue"                       j"The CIR for the queue shaper.
         N/A when the shper is disabled
         UNITS bps bits per second"                       ]"The CBS for the queue shaper.
         N/A when the shper is disabled.
         UNITS bytes"                       �"This table enables the network administrator to fine-tune
         the bandwidth given to each service class on each port.
         The values in this table will thus override those of the
         rlServiceClassTable (THIS TABLE IS MANAGE FROM 3SW). "                       7"Configuration parameters for each port/service class."                       "Interface index."                       �"The list of objects contain parameters at Precents type for the minimal bandwidth
         to this port/service class at WWR . The OID length is based on the number of the
         service class number,  every OID define parameter of service class."                       �"The list of objects contain parameters at Precents type for the maximal bandwidth
         to this port/service class at SP . The OID length is based on the number of the
         service class number,  every OID define parameter of service class."                       "Status of this entry."                       u"pointing to drop algorithem profile.
        the profile describs the drop algorithem
        (tail, red)and params"                       !"If there is shaper on the Queue"                       j"The CIR for the Queue shaper.
         N/A when the shper is disabled
         UNITS bps bits per second"                       ]"The CBS for the Queue shaper.
         N/A when the shper is disabled.
         UNITS bytes"                        "If there is shaper on the port"                       i"The CIR for the port shaper.
         N/A when the shper is disabled
         UNITS bps bits per second"                       \"The CBS for the port shaper.
         N/A when the shper is disabled.
         UNITS bytes"                       $"If there is Rate Limit on the port"                       r"The CIR for the port Rate limit.
         N/A when the Rate limit is disabled
         UNITS bps bits per second"                       e"The CBS for the port Rate Limit.
         N/A when the Rate Limit is disabled.
         UNITS bytes"                       a" this table defines drop profile
          which describ the queue's drop
          algorithems"                       7"Configuration parameters for each port/service class."                       "Interface index."                       "Interface Queue number."                       I"Tail Drop Threshold for Drop Precedence 0.
        UNITS  percent 0-100"                       H"Tail Drop Threshold for Drop Precedence 1.
        UNITS percent 0-100"                       H"Tail Drop Threshold for Drop Precedence 2.
        UNITS percent 0-100"                       G"WRED Min Threshold for Drop Precedence 0.
        UNITS percent 0-100"                       M"WRED Max Threshold for Drop Precedence 0.
        UNITS percent 0-100 0-100"                       )"WRED probability for Drop Precedence 0."                       G"WRED Min Threshold for Drop Precedence 1.
        UNITS percent 0-100"                       G"WRED Max Threshold for Drop Precedence 1.
        UNITS percent 0-100"                       )"WRED probability for Drop Precedence 1."                       G"WRED Min Threshold for Drop Precedence 2.
        UNITS percent 0-100"                       G"WRED Max Threshold for Drop Precedence 2.
        UNITS percent 0-100"                       )"WRED probability for Drop Precedence 2."                       e"additional parameter for the WRED algorithem supporting
        the Queue weight exponentail factor"                       "Status of this entry."                       �"This table enables the network administrator to fine-tune
         the rate limit given to each vlan.
         The values in this table will thus override those of the
         rlQosIfPolicyTable (THIS TABLE IS MANAGED FROM 3SW). "                       )"Configuration parameters for each vlan."                       "Interface index."                       $"If there is Rate Limit on the vlan"                       r"The CIR for the port Rate limit.
         N/A when the Rate limit is disabled
         UNITS bps bits per second"                       e"The CBS for the port Rate Limit.
         N/A when the Rate Limit is disabled.
         UNITS bytes"                       "Status of this entry."                               ?"Indicates whether Diffserv mode is supported on the platform."                       7"Indicates whether Diffserv mode is currently enabled."                       h"Indicates whether a port is considered a boundary or an interior
         node of  the Diffserv domain"                       X"Each boundary/interior ports table entry consists of the following
         parameters"                       1"The Interface index whose type is being defined"                       ""The boundary status of the port."                       "Status of this entry."                           0"Indicates whether Policy is currently enabled."                       N"Indicates whether or not the unmach traffic
        is forwarded or blocked."                       u"define the the min number of seconds between successive traps.
         0 means no traps will be sent, uints in Sec"                       G"show the time out elaps from the last trap sent
        uints in Sec."                       �"V750 DEPRECATED - replaced with rlPolicyGlobalQosMode field in rlPolicyQosModeGlobalCfg table.
        user can set the system to operate either in the Basic mode or in the Advanced mode"                       �"V750 DEPRECATED - replaced with rlPolicyGlobalTrustMode field in rlPolicyQosModeGlobalCfg table.
        Global Trust state. the value refered to Basic mode and specify
        the trust mode the device is support. all phisical ports are trusted  "                       ]"Indicates if the system support basic
         or advanced mode  or Both basic and Advanced"                       P"mutation over the ingress packet dscp field
         supported for the device."                       �"Indicates if the system support
         classification according ip precedence
         most significant 3 bits in the TOS byte"                       ;"Indicates the shaper shaper type supported for the device"                       ?"Indicates if dscp remarking
         supported for the device"                       |"indicates if the system support scheduling
         configuration per port or per device.
         device (1 ) or port (2)"                           B"This table specifies The DSCP
         to ServiceClass map table"                       �"Each entry in this table describes The ServiceClass assigned to a Dscp value.
         The index is DSCP represent by rlPolicyDscpIndex"                       "DSCP value."                       "ServiceClass value."                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       F"This table specifies TCP/UDP
         Port to ServiceClass map table"                       �"Each entry in this table describes The
         ServiceClass Value.
         The index is TCP/UDP port represent by rlPolicyTcpUdpPort"                       "TCP/UDP port type. "                       "TCP/UDP port number. "                       "ServiceClass value."                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       5"This table specifies The DSCP
         Remark table"                       �"Each entry in this table describes the new
         DSCP for the packet.
         The index is Old DSCP represent by rlPolicyOldDscp"                       "Old DSCP."                       $"New DSCP for the violation action."                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       !"New DSCP for the exceed action."                       7"This table specifies The DSCP
         Mutation table"                       �"Each entry in this table describes the new
         DSCP for the packet.
         The index is Old DSCP represent by rlPolicyOldDscp"                       "Old DSCP."                       "New DSCP."                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       @"This table specifies the port state for the trusted basic mode"                       G"describes the ports status  that belongs to the global trusted state "                       "phisical port number ."                       l"the port state for the trusted mode.
        the port can be enabled or disabled for the basic trust mode "                       0"This table specifies The DSCP to VPT map table"                       �"Each entry in this table describes The VPT assigned to a Dscp value.
         The index is DSCP represent by rlPolicyDscpValue."                       "DSCP value."                       "VPT value."                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       4"This table specifies The DSCP
         To Dp table"                       }"Each entry in this table describes the new
         DP for the packet.
         The index is DSCP represent by rlPolicyDscp"                       "Packet DSCP."                       	"New DP."                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       q"This table specifies The default forwarding
         values : permit or deny for list of specific ports , vlans"                       �"Since the table is search to find match according to first match
         Entries with specific protocol should be set before entries for entire layer."                       "Default Forwarding Index."                       "Default Forwarding Port List."                       #"Default Forwarding VlanId List 1."                       #"Default Forwarding VlanId List 2."                       #"Default Forwarding VlanId List 3."                       #"Default Forwarding VlanId List 4."                       7"Default Forwarding Action specify layer l2 l3 l3-ipv6"                       3"Default Forwarding Action specify permit or deny "                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       :"The protocol type to be applied with the default action."                           L"This table specifies statistics counter for policies with specific actions"                       �"Each entry in this table describes counter per port.
        The index is port represent by rlIfIndex.
        In each entry represents counter, it's type , it's size and whether it's enabled. "                       "Interface index."                       "Counter type."                       "Counter size in bits."                       ,"Indication whether the counter is enabled."                       " Counter value. "                      R"Each entry in this table describes counter per any permutation of
        Port/VLAN/Queue/Drop Precedence . Each of the above can a group off 'All'.
        The index is port represent by  rlPolicyOutQueueStatisticsCountrID.
        In each entry there are fields representing
        whether the counter is enabled and counters value. "                       K"Each entry includes port, vlan, queue, drop precedence and counter value."                       #"Counter id, the key of the table."                       %"Port for which the flow is counted."                       I"Indication for whether the port is configured as range of all the ports"                       %"VLAN for which the flow is counted."                       I"Indication for whether the Vlan is configured as range of all the Vlans"                       &"Queue for which the flow is counted."                       K"Indication for whether the Queue is configured as range of all the Queues"                       0"Drop Precedence for which the flow is counted."                       E"Indication for whether the DP is configured as range of all the DPs"                       %"The counter for tail dropped value."                       $"The counter for all traffic value."                       '"Counter size in bits for the counter."                       V"The status of a table entry.
         It is used to delete an entry from this table."                       x"This table specifies statistics global counters  for specific rules for
         all ports that they are connected to "                       '"Each entry represents global counter."                       "Counter type."                       "Counter size in bits."                       "Counter value."                       V"The status of a table entry.
         It is used to delete an entry from this table."                       2"This scalar indicates to clear all the counters."                           �"A table containing Classifier utilization information.
           Each row represents objects for a particular Unit
           present in this system."                       ?"A Single entry containing Classifier utilization information."                       h"The Unit ID of this Classifier. must be unique per entry.
            This is an index into the table."                       )"The classifier utilization percentage. "                       M"The classifier utilization number of used rules, in short rules resolution."                       e"This scalar indicates the number of currently reserved amount
             of traffic conditioners."                       -"This scalar enables/disables CPU Safeguard."                       �"This table responsible to set the global qos mode configuration:
        qos mode, qos trust mode, and if port are trusted by default in qos advanced
        mode."                       �"This table responsible to set the global qos mode configuration:
        qos mode, qos trust mode, and if port are trusted by default in qos advanced
        mode.
        Current implemnetaion assumes only one entry exist."                       U"Entry index - currenly only one entry can exist, indexes hard coded with value '1'."                       �"This field replaces deprecated scalar rlPolicyCliQosMode.
        Defines the global qos operation mode: disable, basic or advnaced. "                       �"This field replaces deprecated scalar rlPolicyCliBasicModeCfg.
        Defines the global qos trust operation mode when qos mode is basic. "                       �"This field replaces deprecated scalar rlPolicyCliBasicModeCfg.
        Defines the global qos trust operation mode when qos mode is advanced. "                       }"This field specified whether ports are set to trused or not-trusted by
        default when switching to qos advanced mode."                      <"This field indicates if dscp to dscp mutation mode is enable.
        It can be set to true in the following terms:
        1.rlQosGlobalTrustMode is in {dscp, vpt-dscp} ( rlQosGlobalQoSMode must be basic or advanced)
        2.if rlQosGlobalQoSMode is advanced then rlQoSPortTrustAdvancedMode must be set to true."                       �"This status of entry action.
        In current implementation only one entry exist, therefor only status = active is
        acceptable."                              