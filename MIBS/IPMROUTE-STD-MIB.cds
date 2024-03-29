    U"An RFC 1766-style language tag, with all alphabetic
            characters converted to lowercase.  This restriction is
            intended to make the lexical ordering imposed by SNMP useful
            when applied to language tags.  Note that it is
            theoretically possible for a valid language tag to exceed
            the allowed length of this syntax, and thus be impossible to
            represent with this syntax.  Sampling of language tags in
            current use on the Internet suggests that this limit does
            not pose a serious problem in practice."                                                                         �"The MIB module for management of IP Multicast routing, but
            independent of the specific multicast routing protocol in
            use." �" Dave Thaler
              Microsoft Corporation
              One Microsoft Way
              Redmond, WA  98052-6399
              US

              Phone: +1 425 703 8835
              EMail: dthaler@microsoft.com" "200009220000Z" )"Initial version, published as RFC 2932."       -- September 22, 2000
               <"The enabled status of IP Multicast routing on this router."                       v"The number of rows in the ipMRouteTable.  This can be used
            to monitor the multicast routing table size."                       �"The (conceptual) table containing multicast routing
            information for IP datagrams sent by particular sources to
            the IP multicast groups known to this router."                      D"An entry (conceptual row) containing the multicast routing
            information for IP datagrams from a particular source and
            addressed to a particular IP multicast group address.
            Discontinuities in counters in this entry can be detected by
            observing the value of ipMRouteUpTime."                       j"The IP multicast group address for which this entry
            contains multicast routing information."           --  MAX-ACCESS not-accessible
           �"The network address which when combined with the
            corresponding value of ipMRouteSourceMask identifies the
            sources for which this entry contains multicast routing
            information."           --  MAX-ACCESS not-accessible
           �"The network mask which when combined with the corresponding
            value of ipMRouteSource identifies the sources for which
            this entry contains multicast routing information."           --  MAX-ACCESS not-accessible
           �"The address of the upstream neighbor (e.g., RPF neighbor)
            from which IP datagrams from these sources to this multicast
            address are received, or 0.0.0.0 if the upstream neighbor is
            unknown (e.g., in CBT)."                      B"The value of ifIndex for the interface on which IP
            datagrams sent by these sources to this multicast address
            are received.  A value of 0 indicates that datagrams are not
            subject to an incoming interface check, but may be accepted
            on multiple interfaces (e.g., in CBT)."                       t"The time since the multicast routing information
            represented by this entry was learned by the router."                       �"The minimum amount of time remaining before this entry will
            be aged out.  The value 0 indicates that the entry is not
            subject to aging."                       �"The number of packets which this router has received from
            these sources and addressed to this multicast group
            address."                      }"The number of packets which this router has received from
            these sources and addressed to this multicast group address,
            which were dropped because they were not received on the
            interface indicated by ipMRouteInIfIndex.  Packets which are
            not subject to an incoming interface check (e.g., using CBT)
            are not counted."                       �"The number of octets contained in IP datagrams which were
            received from these sources and addressed to this multicast
            group address, and which were forwarded by this router."                       d"The multicast routing protocol via which this multicast
            forwarding entry was learned."                      *"The routing mechanism via which the route used to find the
            upstream or parent interface for this multicast forwarding
            entry was learned.  Inclusion of values for routing
            protocols is not intended to imply that those protocols need
            be supported."                       �"The address portion of the route used to find the upstream
            or parent interface for this multicast forwarding entry."                       �"The mask associated with the route used to find the upstream
            or parent interface for this multicast forwarding entry."                      &"The reason the given route was placed in the (logical)
            multicast Routing Information Base (RIB).  A value of
            unicast means that the route would normally be placed only
            in the unicast RIB, but was placed in the multicast RIB
            (instead or in addition) due to local configuration, such as
            when running PIM over RIP.  A value of multicast means that
            the route was explicitly added to the multicast RIB by the
            routing protocol, such as DVMRP or Multiprotocol BGP."                      	"The number of octets contained in IP datagrams which were
            received from these sources and addressed to this multicast
            group address, and which were forwarded by this router.
            This object is a 64-bit version of ipMRouteOctets."                      9"The (conceptual) table containing information on the next-
            hops on outgoing interfaces for routing IP multicast
            datagrams.  Each entry is one of a list of next-hops on
            outgoing interfaces for particular sources sending to a
            particular multicast group address."                      H"An entry (conceptual row) in the list of next-hops on
            outgoing interfaces to which IP multicast datagrams from
            particular sources to a IP multicast group address are
            routed.  Discontinuities in counters in this entry can be
            detected by observing the value of ipMRouteUpTime."                       i"The IP multicast group for which this entry specifies a
            next-hop on an outgoing interface."           --  MAX-ACCESS not-accessible
           �"The network address which when combined with the
            corresponding value of ipMRouteNextHopSourceMask identifies
            the sources for which this entry specifies a next-hop on an
            outgoing interface."           --  MAX-ACCESS not-accessible
           �"The network mask which when combined with the corresponding
            value of ipMRouteNextHopSource identifies the sources for
            which this entry specifies a next-hop on an outgoing
            interface."           --  MAX-ACCESS not-accessible
           _"The ifIndex value of the interface for the outgoing
            interface for this next-hop."           --  MAX-ACCESS not-accessible
           �"The address of the next-hop specific to this entry.  For
            most interfaces, this is identical to ipMRouteNextHopGroup.
            NBMA interfaces, however, may have multiple next-hop
            addresses out a single outgoing interface."           --  MAX-ACCESS not-accessible
          $"An indication of whether the outgoing interface and next-
            hop represented by this entry is currently being used to
            forward IP datagrams.  The value 'forwarding' indicates it
            is currently being used; the value 'pruned' indicates it is
            not."                       t"The time since the multicast routing information
            represented by this entry was learned by the router."                      +"The minimum amount of time remaining before this entry will
            be aged out.  If ipMRouteNextHopState is pruned(1), the
            remaining time until the prune expires and the state reverts
            to forwarding(2).  Otherwise, the remaining time until this
            entry is removed from the table.  The time remaining may be
            copied from ipMRouteExpiryTime if the protocol in use for
            this entry does not specify next-hop timers.  The value 0
            indicates that the entry is not subject to aging."                      E"The minimum number of hops between this router and any
            member of this IP multicast group reached via this next-hop
            on this outgoing interface.  Any IP multicast datagrams for
            the group which have a TTL less than this number of hops
            will not be forwarded to this next-hop."                       <"The routing mechanism via which this next-hop was learned."                       P"The number of packets which have been forwarded using this
            route."                       f"The (conceptual) table containing multicast routing
            information specific to interfaces."                       q"An entry (conceptual row) containing the multicast routing
            information for a particular interface."                       \"The ifIndex value of the interface for which this entry
            contains information."           --  MAX-ACCESS not-accessible
          "The datagram TTL threshold for the interface. Any IP
            multicast datagrams with a TTL less than this threshold will
            not be forwarded out the interface. The default value of 0
            means all multicast packets are forwarded out the
            interface."                       1"The routing protocol running on this interface."                       �"The rate-limit, in kilobits per second, of forwarded
            multicast traffic on the interface.  A rate-limit of 0
            indicates that no rate limiting is done."                      "The number of octets of multicast packets that have arrived
            on the interface, including framing characters.  This object
            is similar to ifInOctets in the Interfaces MIB, except that
            only multicast packets are counted."                       ^"The number of octets of multicast packets that have been
            sent on the interface."                      K"The number of octets of multicast packets that have arrived
            on the interface, including framing characters.  This object
            is a 64-bit version of ipMRouteInterfaceInMcastOctets.  It
            is similar to ifHCInOctets in the Interfaces MIB, except
            that only multicast packets are counted."                       �"The number of octets of multicast packets that have been
            sent on the interface.  This object is a 64-bit version of
            ipMRouteInterfaceOutMcastOctets."                       _"The (conceptual) table listing the router's scoped
            multicast address boundaries."                       e"An entry (conceptual row) in the ipMRouteBoundaryTable
            representing a scoped boundary."                       �"The IfIndex value for the interface to which this boundary
            applies.  Packets with a destination address in the
            associated address/mask range will not be forwarded out this
            interface."           --  MAX-ACCESS not-accessible
          '"The group address which when combined with the
            corresponding value of ipMRouteBoundaryAddressMask
            identifies the group range for which the scoped boundary
            exists.  Scoped addresses must come from the range 239.x.x.x
            as specified in RFC 2365."           --  MAX-ACCESS not-accessible
           �"The group address mask which when combined with the
            corresponding value of ipMRouteBoundaryAddress identifies
            the group range for which the scoped boundary exists."           --  MAX-ACCESS not-accessible
           s"The status of this row, by which new entries may be
            created, or old entries deleted from this table."                       ;"The (conceptual) table listing the multicast scope names."                       k"An entry (conceptual row) in the ipMRouteScopeNameTable
            representing a multicast scope name."                      "The group address which when combined with the
            corresponding value of ipMRouteScopeNameAddressMask
            identifies the group range associated with the multicast
            scope.  Scoped addresses must come from the range
            239.x.x.x."           --  MAX-ACCESS not-accessible
           �"The group address mask which when combined with the
            corresponding value of ipMRouteScopeNameAddress identifies
            the group range associated with the multicast scope."           --  MAX-ACCESS not-accessible
           N"The RFC 1766-style language tag associated with the scope
            name."           --  MAX-ACCESS not-accessible
          �"The textual name associated with the multicast scope.  The
            value of this object should be suitable for displaying to
            end-users, such as when allocating a multicast address in
            this scope.  When no name is specified, the default value of
            this object should be the string 239.x.x.x/y with x and y
            replaced appropriately to describe the address and mask
            length associated with the scope."                       �"If true, indicates a preference that the name in the
            following language should be used by applications if no name
            is available in a desired language."                       s"The status of this row, by which new entries may be
            created, or old entries deleted from this table."                          