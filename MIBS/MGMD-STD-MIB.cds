                                              7"The MIB module for MGMD management.
        A new version of MGMD combining RFC 2933 and RFC 3019.
        Includes IGMPv3 and MLDv2 source filtering changes.

        Copyright (c) 2009 IETF Trust and the persons
        identified as authors of the code.  All rights reserved.

        Redistribution and use in source and binary forms, with or
        without modification, are permitted provided that the
        following conditions are met:

        - Redistributions of source code must retain the above copyright
          notice, this list of conditions and the following disclaimer.

        - Redistributions in binary form must reproduce the above
          copyright notice, this list of conditions and the following
          disclaimer in the documentation and/or other materials
          provided with the distribution.

        - Neither the name of Internet Society, IETF or IETF Trust,
          nor the names of specific contributors, may be used to endorse
          or promote products derived from this software without
          specific prior written permission.

        THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
        CONTRIBUTORS 'AS IS' AND ANY EXPRESS OR IMPLIED WARRANTIES,
        INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
        MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
        DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
        CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
        SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
        NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
        LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
        HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
        CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
        OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
        EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

        This version of this MIB module is part of RFC 5519;
        see the RFC itself for full legal notices." �"Julian Chesterfield
        University of Cambridge,
        Computer Laboratory,
        15 JJ Thompson Avenue,
        Cambridge,
        CB3 0FD
        UK

        EMail: julian.chesterfield@cl.cam.ac.uk" "200903300000Z" 0"This MIB obsoletes both RFC 2933 and RFC 3019."       -- March 30, 2009
           ^"The (conceptual) table listing the interfaces on which
             IGMP or MLD is enabled."                       c"An entry (conceptual row) representing an interface on
            which IGMP or MLD is enabled."                       �"The ifIndex value of the interface for which IGMP or MLD is
             enabled.  The table is indexed by the ifIndex value and the
             InetAddressType to allow for interfaces that may be
             configured in both IPv4 and IPv6 modes."                      �"The address type of this interface.  This entry along with
             the ifIndex value acts as an index to the mgmdHostInterface
             table.  A physical interface may be configured in multiple
             modes concurrently, e.g., in IPv4 and IPv6 modes connected
             to the same interface; however, the traffic is considered
             to be logically separate."           --{ ipv4(1), ipv6(2) }
          "The address of the IGMP or MLD Querier on the IP subnet to
             which this interface is attached.  The InetAddressType,
             e.g., IPv4 or IPv6, is identified by the
             mgmdHostInterfaceQuerierType variable in the
             mgmdHostInterface table."                       �"The activation of a row enables the host side of IGMP or
            MLD on the interface.  The destruction of a row disables
            the host side of IGMP or MLD on the interface."                      �"The maximum version of MGMD that the host can run on
            this interface.  A value of 1 is only applicable for IPv4,
            and indicates that the host only supports IGMPv1 on the

            interface.  A value of 2 indicates that the host also
            supports IGMPv2 (for IPv4) or MLDv1 (for IPv6).  A value of
            3 indicates that the host also supports IGMPv3 (for IPv4)
            or MLDv2 (for IPv6)."                      "The time remaining until the host assumes that there are
            no IGMPv1 routers present on the interface.  While this is
            non-zero, the host will reply to all queries with version 1
            membership reports.  This variable applies to IGMPv2 or 3
            hosts that are forced to run in v1 for compatibility with
            v1 routers present on the interface.  This object may only
            be present when the corresponding value of
            mgmdHostInterfaceQuerierType is ipv4." 1"RFC 2236, Section 4 and RFC 3376, Section 7.2.1"                    �"The time remaining until the host assumes that there are
            no MGMDv2 routers present on the interface.  While this is
            non-zero, the host will reply to all queries with version 1
            or 2 membership reports.  This variable applies to MGMDv3
            hosts that are forced to run in v2 for compatibility with
            v2 hosts or routers present on the interface." 5"RFC 3376, Section 7.2.1 and RFC 3810, Section 8.2.1"                    d"The robustness variable utilised by an MGMDv3 host in
            sending state-change reports for multicast routers.  To
            ensure the state-change report is not missed, the host
            retransmits the state-change report
            [mgmdHostInterfaceVersion3Robustness - 1] times.  The
            variable must be a non-zero value." 4"RFC 3376, Section 8.1 and RFC 3810, Section 9.14.1"                     ]"The (conceptual) table listing the interfaces on which
            IGMP or MLD is enabled."                       c"An entry (conceptual row) representing an interface on
            which IGMP or MLD is enabled."                       �"The ifIndex value of the interface for which IGMP or MLD
            is enabled.  The table is indexed by the ifIndex value and
            the InetAddressType to allow for interfaces that may be
            configured in both IPv4 and IPv6 modes."                      �"The address type of this interface.  This entry along with
            the ifIndex value acts as the index to the
            mgmdRouterInterface table.  A physical interface may be
            configured in multiple modes concurrently, e.g., in IPv4
            and IPv6 modes connected to the same interface; however,
            the traffic is considered to be logically separate."           --{ ipv4(1), ipv6(2) }
          "The address of the IGMP or MLD Querier on the IP subnet to
            which this interface is attached.  The InetAddressType,
            e.g., IPv4 or IPv6, is identified by the
            mgmdRouterInterfaceQuerierType variable in the
            mgmdRouterInterface table."                       g"The frequency at which IGMP or MLD Host-Query packets are
            transmitted on this interface."                       �"The activation of a row enables the router side of IGMP or
            MLD on the interface.  The destruction of a row disables
            the router side of IGMP or MLD on the interface."                      �"The version of MGMD that is running on this interface.
            Value 1 applies to IGMPv1 routers only.  Value 2 applies
            to IGMPv2 and MLDv1 routers, and value 3 applies to IGMPv3
            and MLDv2 routers.

            This object can be used to configure a router capable of
            running either version.  For IGMP and MLD to function
            correctly, all routers on a LAN must be configured to run
            the same version on that LAN."                       l"The maximum query response interval advertised in MGMDv2
            or IGMPv3 queries on this interface." "RFC 3810, Section 9.3"                     J"The time since mgmdRouterInterfaceQuerier was last
            changed."                       �"The amount of time remaining before the Other Querier
            Present Timer expires.  If the local system is the querier,
            the value of this object is zero."                      �"The number of general queries received whose IGMP or MLD
            version does not match the equivalent
            mgmdRouterInterfaceVersion, over the lifetime of the row
            entry.  Both IGMP and MLD require that all routers on a LAN
            be configured to run the same version.  Thus, if any general
            queries are received with the wrong version, this indicates
            a configuration error."                      3"The number of times a group membership has been added on
            this interface, that is, the number of times an entry for
            this interface has been added to the Cache Table.  This
            object can give an indication of the amount of activity
            between samples over time."                      <"Some devices implement a form of IGMP or MLD proxying
            whereby memberships learned on the interface represented by
            this row cause Host Membership Reports to be sent on the
            interface whose ifIndex value is given by this object.
            Such a device would implement the mgmdV2RouterBaseMIBGroup
            only on its router interfaces (those interfaces with
            non-zero mgmdRouterInterfaceProxyIfIndex).  Typically, the
            value of this object is 0, indicating that no proxying is
            being done."                       \"The current number of entries for this interface in the
            mgmdRouterCacheTable."                      "The Robustness Variable allows tuning for the expected
            packet loss on a subnet.  If a subnet is expected to be
            lossy, the Robustness Variable may be increased.  IGMP and
            MLD are robust to (Robustness Variable-1) packet losses."                      "The Last Member Query Interval is the Max Query Response
            Interval inserted into group-specific queries sent in
            response to leave group messages, and is also the amount
            of time between group-specific query messages.  This value
            may be tuned to modify the leave latency of the network.  A
            reduced value results in reduced time to detect the loss of
            the last member of a group.  The value of this object is
            irrelevant if mgmdRouterInterfaceVersion is 1."                       �"Represents the number of group-specific and group-and-
            source-specific queries sent by the router before it assumes
            there are no local members."                       m"Represents the number of Queries sent out on startup,
            separated by the Startup Query Interval."                       j"This variable represents the interval between General
            Queries sent by a Querier on startup."                       �"The (conceptual) table listing the IP multicast groups for
             which the host is a member on a particular interface."                       6"An entry (conceptual row) in the mgmdHostCacheTable."                       �"The address type of the mgmdHostCacheTable entry.  This
            value applies to both the mgmdHostCacheAddress and the
            mgmdHostCacheLastReporter entries."           --{ ipv4(1), ipv6(2) }
           �"The IP multicast group address for which this entry
            contains information.  The InetAddressType, e.g., IPv4 or
            IPv6, is identified by the mgmdHostCacheAddressType variable
            in the mgmdHostCache table."                       i"The interface for which this entry contains information
            for an IP multicast group address."                       0"The time elapsed since this entry was created."                      �"The IP address of the source of the last membership report
            received for this IP multicast group address on this
            interface.  If no membership report has been received, this
            object has a value of 0.  The InetAddressType, e.g., IPv4 or
            IPv6, is identified by the mgmdHostCacheAddressType variable
            in the mgmdHostCache table."                       �"The state in which the interface is currently set.  The
            value indicates the relevance of the corresponding source
            list entries in the mgmdHostSecListTable for MGMDv3
            interfaces."                       �"The (conceptual) table listing the IP multicast groups for
            which there are members on a particular router interface."                       8"An entry (conceptual row) in the mgmdRouterCacheTable."                       �"The address type of the mgmdRouterCacheTable entry.  This
            value applies to both the mgmdRouterCacheAddress and the
            mgmdRouterCacheLastReporter entries."           --{ ipv4(1), ipv6(2) }
           �"The IP multicast group address for which this entry
            contains information.  The InetAddressType, e.g., IPv4 or
            IPv6, is identified by the mgmdRouterCacheAddressType
            variable in the mgmdRouterCache table."                       i"The interface for which this entry contains information
            for an IP multicast group address."                      �"The IP address of the source of the last membership report
            received for this IP multicast group address on this
            interface.  If no membership report has been received, this
            object has the value 0.  The InetAddressType, e.g., IPv4 or
            IPv6, is identified by the mgmdRouterCacheAddressType
            variable in the mgmdRouterCache table."                       0"The time elapsed since this entry was created."                       �"This value represents the time remaining before the Group
            Membership Interval state expires.  The value must always be
            greater than or equal to 1."                      1"This value is applicable only to MGMDv3-compatible nodes
            and represents the time remaining before the interface
            EXCLUDE state expires and the interface state transitions
            to INCLUDE mode.  This value can never be greater than
            mgmdRouterCacheExpiryTime."                      U"The time remaining until the local router will assume that
            there are no longer any MGMD version 1 members on the IP
            subnet attached to this interface.  This entry only applies
            to IGMPv1 hosts, and is not implemented for MLD.  Upon
            hearing any MGMDv1 Membership Report (IGMPv1 only), this
            value is reset to the group membership timer.  While this

            time remaining is non-zero, the local router ignores any
            MGMDv2 Leave messages (IGMPv2 only) for this group that it
            receives on this interface."                      "The time remaining until the local router will assume that
            there are no longer any MGMD version 2 members on the IP
            subnet attached to this interface.  This entry applies to
            both IGMP and MLD hosts.  Upon hearing any MGMDv2 Membership
            Report, this value is reset to the group membership timer.
            Assuming no MGMDv1 hosts have been detected, the local
            router does not ignore any MGMDv2 Leave messages for this
            group that it receives on this interface."                       �"The current cache state, applicable to MGMDv3-compatible
            nodes.  The value indicates whether the state is INCLUDE or
            EXCLUDE."                       �"The (conceptual) table listing the interfaces that are
            members of a particular group.  This is an inverse lookup
            table for entries in the mgmdHostCacheTable."                       J"An entry (conceptual row) in the
            mgmdInverseHostCacheTable."                       :"The interface for which this entry contains information."                       :"The address type of the mgmdInverseHostCacheTable entry."           --{ ipv4(1), ipv6(2) }
          "The IP multicast group address for which this entry
            contains information about an interface.  The
            InetAddressType, e.g., IPv4 or IPv6, is identified by the
            mgmdInverseHostCacheAddressType variable in the
            mgmdInverseHostCache table."                       �"The (conceptual) table listing the interfaces that
            are members of a particular group.  This is an inverse
            lookup table for entries in the mgmdRouterCacheTable."                       L"An entry (conceptual row) in the
            mgmdInverseRouterCacheTable."                       i"The interface for which this entry contains information
            for an IP multicast group address."                       <"The address type of the mgmdInverseRouterCacheTable entry."           --{ ipv4(1), ipv6(2) }
          "The IP multicast group address for which this entry
            contains information.  The InetAddressType, e.g., IPv4 or
            IPv6, is identified by the mgmdInverseRouterCacheAddressType
            variable in the mgmdInverseRouterCache table."                       �"The (conceptual) table listing the Source List entries
             corresponding to each interface and multicast group pair
             on a host."                       8"An entry (conceptual row) in the mgmdHostSrcListTable."                       �"The address type of the InetAddress variables in this
            table.  This value applies to the mgmdHostSrcListHostAddress
            and mgmdHostSrcListAddress entries."           --{ ipv4(1), ipv6(2) }
           X"The IP multicast group address for which this entry
            contains information."                       i"The interface for which this entry contains information
            for an IP multicast group address."                       �"The host address to which this entry corresponds.  The
            mgmdHostCacheSourceFilterMode value for this group address
            and interface indicates whether this host address is
            included or excluded."                       �"This value indicates the relevance of the SrcList entry,
            whereby a non-zero value indicates this is an INCLUDE state
            value, and a zero value indicates this to be an EXCLUDE
            state value."                       �"The (conceptual) table listing the Source List entries
            corresponding to each interface and multicast group pair on
            a Router."                       :"An entry (conceptual row) in the mgmdRouterSrcListTable."                       �"The address type of the InetAddress variables in this
            table.  This value applies to the
            mgmdRouterSrcListHostAddress and mgmdRouterSrcListAddress
            entries."           --{ ipv4(1), ipv6(2) }
           X"The IP multicast group address for which this entry
            contains information."                       i"The interface for which this entry contains information
            for an IP multicast group address."                       �"The host address to which this entry corresponds.  The
            mgmdRouterCacheSourceFilterMode value for this group address
            and interface indicates whether this host address is
            included or excluded."                       �"This value indicates the relevance of the SrcList entry,
            whereby a non-zero value indicates this is an INCLUDE state
            value, and a zero value indicates this to be an EXCLUDE
            state value."                               �"A read-only compliance statement for hosts running IGMPv1
            [RFC1112] and implementing the MGMD MIB.  IGMPv1 hosts must
            support the IPv4 address type."   v"Read-write or read-create access is not required and only
             the value 'active(1)' needs to be supported." T"Write access is not required.  Only version 1 needs to be
             supported." �"Supporting this group can be especially useful in
             an environment with a router that does not support the
             MGMD MIB."            �"A read-only compliance statement for routers running
            IGMPv1 [RFC1112] and implementing the MGMD MIB.  IGMPv1
            routers only support the IPv4 address type.

            Non-accessible index objects that only need IPv4
            support are:

            OBJECT mgmdRouterCacheAddressType
            SYNTAX InetAddressType { ipv4(1) }

            OBJECT mgmdRouterCacheAddress
            SYNTAX InetAddress (SIZE(4))

            OBJECT mgmdRouterInterfaceQuerierType
            SYNTAX InetAddressType { ipv4(1) }

            OBJECT mgmdInverseRouterCacheAddressType
            SYNTAX InetAddressType { ipv4(1) }
            "   -"IGMPv1 routers only support IPv4 addresses." -"IGMPv1 routers only support IPv4 addresses." -"IGMPv1 routers only support IPv4 addresses." T"Write access is not required.  Only version 1 needs to
             be supported." v"Read-write or read-create access is not required and only
             the value 'active(1)' needs to be supported." "Write access is not required."            �"A read-create compliance statement for routers running
            IGMPv1 [RFC1112] and implementing the MGMD MIB.  IGMPv1
            routers only support the IPv4 address type.

            Non-accessible index objects that only need IPv4
            support are:

            OBJECT mgmdRouterCacheAddressType
            SYNTAX InetAddressType { ipv4(1) }

            OBJECT mgmdRouterCacheAddress
            SYNTAX InetAddress (SIZE(4))

            OBJECT mgmdRouterInterfaceQuerierType
            SYNTAX InetAddressType { ipv4(1) }

            OBJECT mgmdInverseRouterCacheAddressType
            SYNTAX InetAddressType { ipv4(1) }
            "   7"Only IPv4 addresses needed for IGMPv1 router support." 7"Only IPv4 addresses needed for IGMPv1 router support." 7"Only IPv4 addresses needed for IGMPv1 router support." T"Write access is not required.  Only version 1 needs to
             be supported."            "A read-only compliance statement for hosts running IGMPv2
            [RFC2236] or MLDv1 [RFC2710] and implementing the MGMD
            MIB.  IGMPv2 hosts only support the IPv4 address type and
            MLDv1 hosts only support the IPv6 address type."   v"Read-write or read-create access is not required and only
             the value 'active(1)' needs to be supported." Z"Write access is not required.  Only versions 1 and 2 need
             to be supported." �"Supporting this group can be especially useful in an
             environment with a router that does not support the
             MGMD MIB."            "A read-create compliance statement for hosts running
            IGMPv2 [RFC2236] or MLDv1 [RFC2710] and implementing
            the MGMD MIB.  IGMPv2 hosts only support the IPv4 address
            type and MLDv1 hosts only support the IPv6 address type."   -"Only versions 1 and 2 need to be supported."            "A read-only compliance statement for routers running
            IGMPv2 [RFC2236] or MLDv1 [RFC2710] and implementing
            the MGMD MIB.  IGMPv2 routers only support the IPv4
            address type and MLDv1 routers only support the IPv6
            address type."   "Write access is not required." "Write access is not required." "Write access is not required." Z"Write access is not required.  Only versions 1 and 2
             need to be supported." v"Read-write or read-create access is not required and only
             the value 'active(1)' needs to be supported." "Write access is not required." "Write access is not required."            T"A read-create compliance statement for routers running
            IGMPv2 [RFC2236], IGMPv3 [RFC3376], MLDv1 [RFC2710], or
            MLDv2 [RFC3810] and implementing the MGMD MIB.  IGMPv2 and
            IGMPv3 routers only support the IPv4 address type, while
            MLDv1 and MLDv2 routers only support the IPv6 address type."   !"Read-create access is required."             �"The compliance statement for hosts running IGMPv3
            [RFC3376] or MLDv2 [RFC3810] and implementing the
            MGMD MIB.  IGMPv3 hosts only support the IPv4 address
            type and MLDv2 hosts only support the IPv6 address type."   "Write access is not required." v"Read-write or read-create access is not required and only
             the value 'active(1)' needs to be supported." "Write access is not required." �"Supporting this group can be especially useful in
             an environment with a router that does not support the
             MGMD MIB."             �"The compliance statement for hosts running IGMPv3
            [RFC3376] or MLDv2 [RFC3810] and implementing the
            MGMD MIB.  IGMPv3 hosts only support the IPv4 address
            type and MLDv2 hosts only support the IPv6 address type."   �"Supporting this group can be especially useful in
             an environment with a router that does not support the
             MGMD MIB."            "A read-only compliance statement for routers running
            IGMPv3 [RFC3376] or MLDv2 [RFC3810] and implementing
            the MGMD MIB.  IGMPv3 routers only support the IPv4
            address type and MLDv2 routers only support the IPv6
            address type."   "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." v"Read-write or read-create access is not required and only
             the value 'active(1)' needs to be supported." "Write access is not required." "Write access is not required."                 i"The basic collection of objects providing management of
            MGMD version 1, 2, or 3 for hosts."                 k"The basic collection of objects providing management of
            MGMD version 1, 2, or 3 for routers."                 �"A collection of additional read-only objects for management
            of IGMP version 2 in hosts for MGMD version 2 compliance."                 2"A collection of optional objects for MGMD hosts."                 h"A collection of additional read-only objects for
            management of MGMD version 2 in routers."                 c"A collection of additional read-create objects for
            management of MGMD proxy devices."                 \"A collection of additional objects for
            management of MGMD version 3 in hosts."                 h"A collection of additional read-only objects for
            management of MGMD version 3 in routers."                    