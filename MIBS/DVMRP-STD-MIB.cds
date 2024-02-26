 2--
-- from draft-ietf-idmr-dvmrp-mib-11.mib
--
                                         1"The MIB module for management of DVMRP routers." �" Dave Thaler
              Microsoft
              One Microsoft Way
              Redmond, WA 98052-6399
              EMail: dthaler@microsoft.com" "9910191200Z" V"Initial version, published as RFC xxxx (to be filled in by
            RFC-Editor)."       -- October 19, 1999
     �-- ::= { mib-2 xx }
-- NOTE TO RFC EDITOR: When this document is published as an
-- RFC, replace xx with IANA assignment, and delete this comment.
             �"The router's DVMRP version information.  Similar to
            sysDescr in MIB-II, this is a free-form field which can be
            used to display vendor-specific information."                       �"The generation identifier for the routing process.  This is
            used by neighboring routers to detect whether the DVMRP
            routing table should be resent."                       �"The number of entries in the routing table.  This can be
            used to monitor the routing table size to detect illegal
            advertisements of unicast routes."                       �"The number of entries in the routing table with non
            infinite metrics.  This can be used to detect network
            partitions by observing the ratio of reachable routes to
            total routes."                       Y"The (conceptual) table listing the router's multicast-
            capable interfaces."                       �"An entry (conceptual row) in the dvmrpInterfaceTable.  This
            row augments ipMRouteInterfaceEntry in the IP Multicast MIB,
            where the threshold object resides."                       M"The ifIndex value of the interface for which DVMRP is
            enabled."                       �"The IP address this system will use as a source address on
            this interface.  On unnumbered interfaces, it must be the
            same value as dvmrpInterfaceLocalAddress for some interface
            on the system."                       b"The distance metric for this interface which is used to
            calculate distance vectors."                       �"The status of this entry.  Creating the entry enables DVMRP
            on the virtual interface; destroying the entry or setting it
            to notInService disables DVMRP on the virtual interface."                       �"The number of DVMRP messages received on the interface by
            the DVMRP process which were subsequently discarded as
            invalid (e.g. invalid packet format, or a route report from
            an unknown neighbor)."                       n"The number of routes, in valid DVMRP packets, which were
            ignored because the entry was invalid."                       �"The number of routes, in DVMRP Report packets, which have
            been sent on this interface.  Together with
            dvmrpNeighborRcvRoutes at a peer, this object is useful for
            detecting routes being lost."                      y"The (shared) key for authenticating neighbors on this
            interface.  This object is intended solely for the purpose
            of setting the interface key, and MUST be accessible only
            via requests using both authentication and privacy.  The
            agent MAY report an empty string in response to get, get-
            next, get-bulk requests."                       {"The highest version number of all known interface keys for
            this interface used for authenticating neighbors."                       �"The generation identifier for the interface.  This is used
            by neighboring routers to detect whether the DVMRP routing
            table should be resent."                       v"The (conceptual) table listing the router's DVMRP
            neighbors, as discovered by receiving DVMRP messages."                       6"An entry (conceptual row) in the dvmrpNeighborTable."                       `"The value of ifIndex for the virtual interface used to
            reach this DVMRP neighbor."                       ^"The IP address of the DVMRP neighbor for which this entry
            contains information."                       _"The time since this DVMRP neighbor (last) became a neighbor
            of the local router."                       V"The minimum time remaining before this DVMRP neighbor will
            be aged out."                       1"The neighboring router's generation identifier."                       6"The neighboring router's major DVMRP version number."                       6"The neighboring router's minor DVMRP version number."                      �"This object describes the neighboring router's
            capabilities.  The leaf bit indicates that the neighbor has
            only one interface with neighbors.  The prune bit indicates
            that the neighbor supports pruning.  The generationID bit
            indicates that the neighbor sends its generationID in Probe
            messages.  The mtrace bit indicates that the neighbor can
            handle mtrace requests."                      $"The total number of routes received in valid DVMRP packets
            received from this neighbor.  This can be used to diagnose
            problems such as unicast route injection, as well as giving
            an indication of the level of DVMRP route exchange
            activity."                       `"The number of packet received from this neighbor which were
            discarded as invalid."                       �"The number of routes, in valid DVMRP packets received from
            this neighbor, which were ignored because the entry was
            invalid."                       ""State of the neighbor adjacency."                       ;"The table of routes learned through DVMRP route exchange."                       �"An entry (conceptual row) containing the multicast routing
            information used by DVMRP in place of the unicast routing
            information."                       �"The network address which when combined with the
            corresponding value of dvmrpRouteSourceMask identifies the
            sources for which this entry contains multicast routing
            information."                       �"The network mask which when combined with the corresponding
            value of dvmrpRouteSource identifies the sources for which
            this entry contains multicast routing information."                       �"The address of the upstream neighbor (e.g., RPF neighbor)
            from which IP datagrams from these sources are received."                       �"The value of ifIndex for the interface on which IP
            datagrams sent by these sources are received.  A value of 0
            typically means the route is an aggregate for which no next-
            hop interface exists."                       ,"The distance in hops to the source subnet."                       W"The minimum amount of time remaining before this entry will
            be aged out."                       \"The time since the route represented by this entry was
            learned by the router."                       �"The (conceptual) table containing information on the next
            hops on outgoing interfaces for routing IP multicast
            datagrams."                       �"An entry (conceptual row) in the list of next hops on
            outgoing interfaces to which IP multicast datagrams from
            particular sources are routed."                       �"The network address which when combined with the
            corresponding value of dvmrpRouteNextHopSourceMask
            identifies the sources for which this entry specifies a next
            hop on an outgoing interface."                       �"The network mask which when combined with the corresponding
            value of dvmrpRouteNextHopSource identifies the sources for
            which this entry specifies a next hop on an outgoing
            interface."                       _"The ifIndex value of the interface for the outgoing
            interface for this next hop."                       �"Type is leaf if no downstream dependent neighbors exist on
            the outgoing virtual interface.  Otherwise, type is branch."                       P"The (conceptual) table listing the router's upstream prune
            state."                       3"An entry (conceptual row) in the dvmrpPruneTable."                       *"The group address which has been pruned."                       Q"The address of the source or source network which has been
            pruned."                      ("The address of the source or source network which has been
            pruned.  The mask must either be all 1's, or else
            dvmrpPruneSource and dvmrpPruneSourceMask must match
            dvmrpRouteSource and dvmrpRouteSourceMask for some entry in
            the dvmrpRouteTable."                      ""The amount of time remaining before this prune should
            expire at the upstream neighbor.  This value should be the
            minimum of the default prune lifetime and the remaining
            prune lifetimes of the local router's downstream neighbors,
            if any."                          �"A dvmrpNeighborLoss trap signifies the loss of a 2-way
            adjacency with a neighbor.  This trap should be generated
            when the neighbor state changes from active to one-way,
            ignoring, or down.  The trap should be generated only if the
            router has no other neighbors on the same interface with a
            lower IP address than itself."                )"A dvmrpNeighborNotPruning trap signifies that a non-pruning
            neighbor has been detected (in an implementation-dependent
            manner).  This trap should be generated at most once per
            generation ID of the neighbor.  For example, it should be
            generated at the time a neighbor is first heard from if the
            prune bit is not set in its capabilities.  It should also be
            generated if the local system has the ability to tell that a
            neighbor which sets the the prune bit in its capabilities is
            not pruning any branches over an extended period of time.
            The trap should be generated only if the router has no other
            neighbors on the same interface with a lower IP address than
            itself."                         -"The compliance statement for the DVMRP MIB."   �"This group is mandatory for agents which support both
            authentication and privacy of SNMP messages, and only for
            those network interfaces for which DVMRP is authenticating
            neighbors."                 `"A collection of objects used to describe general DVMRP
            configuration information."                 e"A collection of objects used to describe DVMRP interface
            configuration and statistics."                 `"A collection of objects used to describe DVMRP peer
            configuration and statistics."                 M"A collection of objects used to store the DVMRP routing
            table."                 ["A collection of objects used to store information related
            to DVMRP security."                 ^"A collection of objects used to store information related
            to DVMRP prune state."                 R"A collection of notifications for signaling important DVMRP
            events."                                                        