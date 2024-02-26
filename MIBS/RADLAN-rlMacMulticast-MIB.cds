     "MLD version."               "IGMP version."                                             �"Warning trap indicating - Setting Mac Unregistered Filtering on port is failed. The bound variable rndErrorDesc provides the interface number. "                 P"Informational trap indicating that a query was recieved on a triple play port."                 ^"Warning trap indicating that duplicate ip\ipv6 address 
         occured between two queries"                                     6"Enable/Disable MAC Multicast bridging in the device."                           S"MIB's version, the current version is 3.
          IGMP Snooping supports IGMPv3."                       -"Enable/Disable IGMP Snooping in the switch."                       w"The amount of time that should pass before aging out
         an entry in the rlIgmpSnoopGroupTable will be aged out."                       w"The amount of time that should pass before aging out
     an entry in the rlIgmpSnoopInterfaceTable will be aged out."                       |"The table listing the per vlan parameters : enable/disable ,
         aging-out timers , filter ports and permanent ports."                       8"An entry (conceptual row) in the rlIgmpSnoopVlanTable."                       e"The tag of the VLAN for which this entry contains
          information for an IP Multicast Router."                       +"Enable/Disable IGMP Snooping in the vlan."                       4"Enable/Disable of Learning of routers in the vlan."                       z"The amount of time that should pass before aging out
          an entry in the rlIgmpSnoopMembershipTable for this vlan."                       Q"The amount of time where no query is heard until
          querier is activated"                       �"The amount of time that should pass before aging out
          a port in the router ports dynamically learnt for
          this vlan."                       �"The amount of time that should pass before aging out
          an entry in the rlIgmpSnoopMembershipTable for this vlan,
          after  recieving a leave/exclude message from the port of
          the entry."                       8"The current IGMP protocol version running on the VLAN."                       r"List of router ports learned dynamically on this VLAN
          from PIM, DVMRP, MRDISC and IGMP Query messages "                       �"This varaiable indicates whether to allow IGMP reports for groups in the
        224.0.0.X range when the group address is already manually configured or to ignore."                       $" multicast vlan used for this port"                       " entry of multicast ip"                       &"Specify the multicast ip to be used."                       &"Specify the multicast ip to be used."                       ^"The row status variable, used according to
        row installation and removal conventions."                       D"The number of addresses starting with rlIgmpSnoopMulticastTvGroup."                       1"The table listing the IP multicast memberships."                       >"An entry (conceptual row) in the rlIgmpSnoopMembershipTable."                       N"The VLAN tag for which this entry contains multicast membership information."                       "The multicast group address."                       "The unicast source address."                       �"Included ports, where a report message was heard for the group
         (IGMP version 2|1) or group and source address (IGMP version 3)."                       w"Excluded ports where an exclude report message
         was heard for the group and source address (IGMP version 3). "                       "Time till entry will expire."                        "IGMP group compatibility mode."                       p"A table that contains IGMP Snooping Querier information about
        every vlan. This is indexed by vlan tag."                       ?"An entry (conceptual row) in the rlIgmpSnoopQuerierVlanTable."                       '"An IGMP Snoop Querier entry vlan tag."                       E"The desired administrative state of IGMP Snoop Querier on the vlan."                       B"The current operational state of IGMP Snoop Querier on the vlan."                       R"The desired IP address is being used in IGMP Snoop Querier messages on the vlan."                       ^"The current operational IP address is being used in IGMP Snoop Querier messages on the vlan."                       @"The highest version number of IGMP Snoop Querier for the vlan."                       L"The current operational version number of IGMP Snoop Querier for the vlan."                      "Whether or not to participate in querier election.
         When true, the snooping querier participates in querier election.
         When false, the snooping querier is the elected querier until a general
         query is heard from another router on the vlan (always lose)."                       >"Globally enable/disable IGMP Snooping Querier in the switch."                       B"The maximum number of Mac Multicast entries the device supports."                           L"Each bit represent a port whether Unregistered Multicast Filtering enable "                           ,"Enable/Disable Mld Snooping in the switch."                       v"The amount of time that should pass before aging out
         an entry in the rlMldSnoopGroupTable will be aged out."                       v"The amount of time that should pass before aging out
     an entry in the rlMldSnoopInterfaceTable will be aged out."                       1"The table listing the IP multicast memberships."                       A"An entry (conceptual row) in the rlIgmpMldSnoopMembershipTable."                       N"The VLAN tag for which this entry contains multicast membership information."                       "Inet type IPv4/IPv6."                       "The multicast group address."                       "Inet type IPv4/IPv6."                       "The unicast source address."                       �"Included ports, where a report message was heard for the group
         (IGMPv2/V1 or MLDv1) or group and source address (IGMPv3/MLDv2)."                       �"list of excluded ports to which an exclude report message
         was heard for the group and source address (IGMPv3/MLDv2 ). "                       "Time till entry will expire."                       $"IGMP/MLD group compatibility mode."                       y"The table lists the per vlan parameters : enable/disable ,
        aging-out timers , filter ports and permanent ports."                       8"An entry (conceptual row) in the rlIgmpSnoopVlanTable."                       "Inet type ipv6/ipv4."                       d"The tag of the VLAN for which this entry contains
         information for an IP Multicast Router."                       +"Enable/Disable IGMP Snooping in the vlan."                       4"Enable/Disable of Learning of routers in the vlan."                       y"The amount of time that should pass before aging out
         an entry in the rlIgmpSnoopMembershipTable for this vlan."                       P"The amount of time where no query is heard until
         querier is activated"                       �"The amount of time that should pass before aging out
         a port in the router ports dynamically learnt for
         this vlan."                       �"The amount of time that should pass before aging out
         an entry in the rlIgmpSnoopMembershipTable for this vlan,
         after  recieving a leave/exclude message from the port of
         the entry."                       8"The current IGMP protocol version running on the VLAN."                       |"List of router ports learned dynamically
         from PIM, DVMRP, MRDISC, MOSPF and IGMP/MLD Query messages on this VLAN "                       :"List of router ports configured statically on this VLAN."                       R"List of ports statically configured to NOT
         be router ports on this VLAN"                       +"Enable/Disable overriding of Query values"                      "The Robustness Variable allows tuning for the expected
            packet loss on a subnet.  If a subnet is expected to be
            lossy, the Robustness Variable may be increased.  IGMP and
            MLD are robust to (Robustness Variable-1) packet losses."                       �"The frequency at which IGMP or MLD Host-Query packets are
            transmitted on this interface. This variable must be a
            non-zero value."                       g"The maximum query response interval advertised in MGMDv2
            or v3 queries on this interface." "RFC 3810 section 9.3"                    "The Last Member Query Interval is the Max Query Response
            Interval inserted into group-specific queries sent in
            response to leave group messages, and is also the amount
            of time between group-specific query messages.  This value
            may be tuned to modify the leave latency of the network. A
            reduced value results in reduced time to detect the loss of
            the last member of a group.  The value of this object is
            irrelevant if mgmdRouterInterfaceVersion is 1."                       �"Represents the number of group-specific and
            group-and-source-specific queries sent by the router before
            it assumes there are no local members."                       i"This variable represents the interval between General
            Queries sent by a Querier on startup."                       k"Represents the number of Queries sent out on startup
            separated by the Startup Query Interval."                      ,"The amount of time that should pass before aging out
          an entry in the rlIgmpSnoopMembershipTable for this vlan.
          DEFVAL  { rlIgmpMldSnoopVlanOperRobustness *
                    rlIgmpMldSnoopVlanOperQueryInterval +
                    rlIgmpMldSnoopVlanOperQueryMaxResponseTime }"                       �"The amount of time that should pass before aging out
          a port in the router ports dynamically learnt for
          this vlan.
          DEFVAL  { rlIgmpMldSnoopVlanOperRobustness *
                    rlIgmpMldSnoopVlanOperQueryInterval }"                      X"The amount of time that should pass before aging out
          an entry in the rlIgmpSnoopMembershipTable for this vlan,
          after  recieving a leave/exclude message from the port of
          the entry.
          DEFVAL  { rlIgmpMldSnoopVlanOperLastMemberQueryCount *
                    rlIgmpMldSnoopVlanOperLastMemberQueryInterval }"                      "The Robustness Variable allows tuning for the expected
            packet loss on a subnet.  If a subnet is expected to be
            lossy, the Robustness Variable may be increased.  IGMP and
            MLD are robust to (Robustness Variable-1) packet losses."                       �"The frequency at which IGMP or MLD Host-Query packets are
            transmitted on this interface. This variable must be a
            non-zero value."                       g"The maximum query response interval advertised in MGMDv2
            or v3 queries on this interface." "RFC 3810 section 9.3"                    "The Last Member Query Interval is the Max Query Response
            Interval inserted into group-specific queries sent in
            response to leave group messages, and is also the amount
            of time between group-specific query messages.  This value
            may be tuned to modify the leave latency of the network. A
            reduced value results in reduced time to detect the loss of
            the last member of a group.  The value of this object is
            irrelevant if mgmdRouterInterfaceVersion is 1."                      "Represents the number of group-specific and
            group-and-source-specific queries sent by the router before
            it assumes there are no local members. Value 0 is used to indicate 
             usage of default value. DEFVAL  { rlIgmpMldSnoopVlanAdminRobustness }"                       i"This variable represents the interval between General
            Queries sent by a Querier on startup."                       k"Represents the number of Queries sent out on startup
            separated by the Startup Query Interval."                      /"The amount of time that should pass before aging out
          an entry in the rlIgmpSnoopMembershipTable for this vlan.
          DEFVAL  { rlIgmpMldSnoopVlanAdminRobustness *
                    rlIgmpMldSnoopVlanAdminQueryInterval +
                    rlIgmpMldSnoopVlanAdminQueryMaxResponseTime }"                       �"The amount of time that should pass before aging out
          a port in the router ports dynamically learnt for
          this vlan.
          DEFVAL  { rlIgmpMldSnoopVlanAdminRobustness *
                    rlIgmpMldSnoopVlanAdminQueryInterval }"                      Z"The amount of time that should pass before aging out
          an entry in the rlIgmpSnoopMembershipTable for this vlan,
          after  recieving a leave/exclude message from the port of
          the entry.
          DEFVAL  { rlIgmpMldSnoopVlanAdminLastMemberQueryCount *
                    rlIgmpMldSnoopVlanAdminLastMemberQueryInterval }"                       ." Enable/Disable immediate leave on this Vlan"                       $" multicast vlan used for this port"                       " entry of multicast ip"                       "Inet type ipv6/ipv4."                       &"Specify the multicast ip to be used."                       "Inet type ipv6/ipv4."                       &"Specify the multicast ip to be used."                       ^"The row status variable, used according to
        row installation and removal conventions."                       o"A table that contains MLD Snooping Querier information about
        every vlan. This is indexed by vlan tag."                       >"An entry (conceptual row) in the rlMldSnoopQuerierVlanTable."                       &"An MLD Snoop Querier entry vlan tag."                       D"The desired administrative state of MLD Snoop Querier on the vlan."                       A"The current operational state of MLD Snoop Querier on the vlan."                       "Inet type IPv6/IPv4."                       Q"The desired IP address is being used in MLD Snoop Querier messages on the vlan."                       "Inet type IPv6/IPv4."                       ]"The current operational IP address is being used in MLD Snoop Querier messages on the vlan."                       ?"The highest version number of MLD Snoop Querier for the vlan."                       K"The current operational version number of MLD Snoop Querier for the vlan."                      "Whether or not to participate in querier election.
         When true, the snooping querier participates in querier election.
         When false, the snooping querier is the elected querier until a general
         query is heard from another router on the vlan (always lose)."                       ="Globally enable/disable MLD Snooping Querier in the switch."                       A"A table that contains IGMP/MLD Snooping Querier global address."                       K"An entry (conceptual row) in the rlIgmpMldSnoopQuerierGlobalAddressTable."                       �"The IP version of this PIM interface.  A physical interface
            may be configured in multiple modes concurrently, e.g., IPv4
            and IPv6; however, the traffic is considered to be logically
            separate."                       "Inet type IPv6/IPv4."                       {"The desired address to used in IGMP/MLD Snoop Querier messages if
         such an address is not configured on the vlan."                      