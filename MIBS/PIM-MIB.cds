                                                                                               /"The MIB module for management of PIM routers." �" Dave Thaler
              Microsoft Corporation
              One Microsoft Way
              Redmond, WA  98052-6399
              US

              Phone: +1 425 703 8835
              EMail: dthaler@microsoft.com" "200009280000Z" )"Initial version, published as RFC 2934."       -- September 28, 2000
              !"A pimNeighborLoss trap signifies the loss of an adjacency
            with a neighbor.  This trap should be generated when the
            neighbor timer expires, and the router has no other
            neighbors on the same interface with a lower IP address than
            itself."                     `"The default interval at which periodic PIM-SM Join/Prune
            messages are to be sent."                       �"The (conceptual) table listing the router's PIM interfaces.
            IGMP and PIM are enabled on all interfaces listed in this
            table."                       5"An entry (conceptual row) in the pimInterfaceTable."                       *"The ifIndex value of this PIM interface."                       &"The IP address of the PIM interface."                       ;"The network mask for the IP address of the PIM interface."                       j"The configured mode of this PIM interface.  A value of
            sparseDense is only valid for PIMv1."                       "The Designated Router on this PIM interface.  For point-to-
            point interfaces, this object has the value 0.0.0.0."                       ["The frequency at which PIM Hello messages are transmitted
            on this interface."                       �"The status of this entry.  Creating the entry enables PIM
            on the interface; destroying the entry disables PIM on the
            interface."                       �"The frequency at which PIM Join/Prune messages are
            transmitted on this PIM interface.  The default value of
            this object is the pimJoinPruneInterval."                       �"The preference value for the local interface as a candidate
            bootstrap router.  The value of -1 is used to indicate that
            the local interface is not a candidate BSR interface."                       <"The (conceptual) table listing the router's PIM neighbors."                       4"An entry (conceptual row) in the pimNeighborTable."                       \"The IP address of the PIM neighbor for which this entry
            contains information."                       V"The value of ifIndex for the interface used to reach this
            PIM neighbor."                       ]"The time since this PIM neighbor (last) became a neighbor
            of the local router."                       T"The minimum time remaining before this PIM neighbor will be
            aged out."                       �"The active PIM mode of this neighbor.  This object is
            deprecated for PIMv2 routers since all neighbors on the
            interface must be either dense or sparse as determined by
            the protocol running on the interface."                       �"The (conceptual) table listing PIM-specific information on
            a subset of the rows of the ipMRouteTable defined in the IP
            Multicast MIB."                       �"An entry (conceptual row) in the pimIpMRouteTable.  There
            is one entry per entry in the ipMRouteTable whose incoming
            interface is running PIM."                      M"The time remaining before the router changes its upstream
            neighbor back to its RPF neighbor.  This timer is called the
            Assert timer in the PIM Sparse and Dense mode specification.
            A value of 0 indicates that no Assert has changed the
            upstream neighbor away from the RPF neighbor."                       {"The metric advertised by the assert winner on the upstream
            interface, or 0 if no such assert is in received."                       }"The preference advertised by the assert winner on the
            upstream interface, or 0 if no such assert is in effect."                       �"The value of the RPT-bit advertised by the assert winner on
            the upstream interface, or false if no such assert is in
            effect."                       �"This object describes PIM-specific flags related to a
            multicast state entry.  See the PIM Sparse Mode
            specification for the meaning of the RPT and SPT bits."                       �"The (conceptual) table listing PIM-specific information on
            a subset of the rows of the ipMRouteNextHopTable defined in
            the IP Multicast MIB."                       �"An entry (conceptual row) in the pimIpMRouteNextHopTable.
            There is one entry per entry in the ipMRouteNextHopTable
            whose interface is running PIM and whose
            ipMRouteNextHopState is pruned(1)."                       �"This object indicates why the downstream interface was
            pruned, whether in response to a PIM prune message or due to
            PIM Assert processing."                       �"The (conceptual) table listing PIM version 1 information
            for the Rendezvous Points (RPs) for IP multicast groups.
            This table is deprecated since its function is replaced by
            the pimRPSetTable for PIM version 2."                       {"An entry (conceptual row) in the pimRPTable.  There is one
            entry per RP address for each IP multicast group."                       d"The IP multicast group address for which this entry
            contains information about an RP."                        "The unicast address of the RP."                       "The state of the RP."                      ,"The minimum time remaining before the next state change.
            When pimRPState is up, this is the minimum time which must
            expire until it can be declared down.  When pimRPState is
            down, this is the time until it will be declared up (in
            order to retry)."                       w"The value of sysUpTime at the time when the corresponding
            instance of pimRPState last changed its value."                       s"The status of this row, by which new entries may be
            created, or old entries deleted from this table."                      }"The (conceptual) table listing PIM information for
            candidate Rendezvous Points (RPs) for IP multicast groups.
            When the local router is the BSR, this information is
            obtained from received Candidate-RP-Advertisements.  When
            the local router is not the BSR, this information is
            obtained from received RP-Set messages."                       1"An entry (conceptual row) in the pimRPSetTable."                       �"The IP multicast group address which, when combined with
            pimRPSetGroupMask, gives the group prefix for which this
            entry contains information about the Candidate-RP."                       �"The multicast group address mask which, when combined with
            pimRPSetGroupAddress, gives the group prefix for which this
            entry contains information about the Candidate-RP."                       %"The IP address of the Candidate-RP."                       d"The holdtime of a Candidate-RP.  If the local router is not
            the BSR, this value is 0."                       �"The minimum time remaining before the Candidate-RP will be
            declared down.  If the local router is not the BSR, this
            value is 0."                       �" A number uniquely identifying the component.  Each
            protocol instance connected to a separate domain should have
            a different index value."                      �"The (conceptual) table listing the IP multicast groups for
            which the local router is to advertise itself as a
            Candidate-RP when the value of pimComponentCRPHoldTime is
            non-zero.  If this table is empty, then the local router
            will advertise itself as a Candidate-RP for all groups
            (providing the value of pimComponentCRPHoldTime is non-
            zero)."                       7"An entry (conceptual row) in the pimCandidateRPTable."                       �"The IP multicast group address which, when combined with
            pimCandidateRPGroupMask, identifies a group prefix for which
            the local router will advertise itself as a Candidate-RP."                       �"The multicast group address mask which, when combined with
            pimCandidateRPGroupMask, identifies a group prefix for which
            the local router will advertise itself as a Candidate-RP."                       a"The (unicast) address of the interface which will be
            advertised as a Candidate-RP."                       s"The status of this row, by which new entries may be
            created, or old entries deleted from this table."                      "The (conceptual) table containing objects specific to a PIM
            domain.  One row exists for each domain to which the router
            is connected.  A PIM-SM domain is defined as an area of the
            network over which Bootstrap messages are forwarded.
            Typically, a PIM-SM router will be a member of exactly one
            domain.  This table also supports, however, routers which
            may form a border between two PIM-SM domains and do not
            forward Bootstrap messages between them."                       5"An entry (conceptual row) in the pimComponentTable."                      )"A number uniquely identifying the component.  Each protocol
            instance connected to a separate domain should have a
            different index value.  Routers that only support membership
            in a single PIM-SM domain should use a pimComponentIndex
            value of 1."                       U"The IP address of the bootstrap router (BSR) for the local
            PIM region."                      Q"The minimum time remaining before the bootstrap router in
            the local domain will be declared down.  For candidate BSRs,
            this is the time until the component sends an RP-Set
            message.  For other routers, this is the time until it may
            accept an RP-Set message from a lower candidate BSR."                       �"The holdtime of the component when it is a candidate RP in
            the local domain.  The value of 0 is used to indicate that
            the local system is not a Candidate-RP."                       �"The status of this entry.  Creating the entry creates
            another protocol instance; destroying the entry disables a
            protocol instance."                               _"The compliance statement for routers running PIMv1 and
            implementing the PIM MIB."               i"The compliance statement for routers running PIM Sparse
            Mode and implementing the PIM MIB."   X"This group is mandatory if the router is capable of being a
            Candidate RP." "Write access is not required."             h"The compliance statement for routers running PIM Dense Mode
            and implementing the PIM MIB."   "Write access is not required."                 P"A collection of notifications for signaling important PIM
            events."                     d"A collection of objects to support management of PIM Sparse
            Mode (version 2) routers."                 c"A collection of objects to support management of PIM Dense
            Mode (version 2) routers."                 �"A collection of objects to support configuration of which
            groups a router is to advertise itself as a Candidate-RP."                 X"A collection of objects to support management of PIM
            (version 1) routers."                J"A collection of optional objects to provide per-next hop
            information for diagnostic purposes.  Supporting this group
            may add a large number of instances to a tree walk, but the
            information in this group can be extremely useful in
            tracking down multicast connectivity problems."                �"A collection of optional objects to provide extra
            information about the assert election process.  There is no
            protocol reason to keep such information, but some
            implementations may already keep this information and make
            it available.  These objects can also be very useful in
            debugging connectivity or duplicate packet problems,
            especially if the assert winner does not support the PIM and
            IP Multicast MIBs."                