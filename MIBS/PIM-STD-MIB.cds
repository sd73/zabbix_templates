   ""RFC 3569, RFC 3956, and RFC 5059"3"The mechanism by which a PIM group mapping was learned.

            fixed(1)     Link-local or unroutable group mappings.

            configRp(2)  Local static RP configuration.

            configSsm(3) Local SSM Group configuration.

            bsr(4)       The PIM Bootstrap Router (BSR) mechanism.

            autoRP(5)    Cisco's Auto-RP mechanism.

            embedded(6)  The Embedded-RP mechanism where the RP address
                         is embedded in the multicast group address.

            other(7)     Any other mechanism."              N"The PIM mode in which a group is operating.

            none(1)      The group is not using PIM, which may be the
                         case if, for example, it is a link-local or
                         unroutable group address.

            ssm(2)       Source-Specific Multicast (SSM) with PIM Sparse
                         Mode.

            asm(3)       Any Source Multicast (ASM) with PIM Sparse
                         Mode.

            bidir(4)     Bidirectional PIM.

            dm(5)        PIM Dense Mode.

            other(6)     Any other PIM mode."                                                                                         �"The MIB module for management of PIM routers.

            Copyright (C) The IETF Trust (2007).  This version of this
            MIB module is part of RFC 5060; see the RFC itself for full
            legal notices." n"Email: pim@ietf.org
            WG charter:
            http://www.ietf.org/html.charters/pim-charter.html" "200711020000Z" )"Initial version, published as RFC 5060."       -- 2 November 2007
          ("A pimNeighborLoss notification signifies the loss of an



            adjacency with a neighbor.  This notification should be
            generated when the neighbor timer expires, and the router
            has no other neighbors on the same interface with the same
            IP version and a lower IP address than itself.

            This notification is generated whenever the counter
            pimNeighborLossCount is incremented, subject
            to the rate limit specified by
            pimNeighborLossNotificationPeriod." "RFC 4601 section 4.3.2"              ^"A pimInvalidRegister notification signifies that an invalid
            PIM Register message was received by this device.

            This notification is generated whenever the counter
            pimInvalidRegisterMsgsRcvd is incremented, subject to the
            rate limit specified by
            pimInvalidRegisterNotificationPeriod." "RFC 4601 section 4.4.2"              c"A pimInvalidJoinPrune notification signifies that an
            invalid PIM Join/Prune message was received by this device.

            This notification is generated whenever the counter
            pimInvalidJoinPruneMsgsRcvd is incremented, subject to the
            rate limit specified by
            pimInvalidJoinPruneNotificationPeriod." "RFC 4601 section 4.5.2"              K"A pimRPMappingChange notification signifies a change to the
            active RP mapping on this device.

            This notification is generated whenever the counter
            pimRPMappingChangeCount is incremented, subject to the
            rate limit specified by
            pimRPMappingChangeNotificationPeriod."                U"A pimInterfaceElection notification signifies that a new DR
            or DF has been elected on a network.

            This notification is generated whenever the counter
            pimInterfaceElectionWinCount is incremented, subject to the
            rate limit specified by
            pimInterfaceElectionNotificationPeriod." 3"RFC 4601 section 4.3.2 and RFC 5015 section 3.5.2"                  "The duration of the Keepalive Timer.  This is the period
            during which the PIM router will maintain (S,G) state in the
            absence of explicit (S,G) local membership or (S,G) join
            messages received to maintain it.  This timer period is
            called the Keepalive_Period in the PIM-SM specification.  It
            is called the SourceLifetime in the PIM-DM specification.




            The storage type of this object is determined by
            pimDeviceConfigStorageType." "RFC 4601 section 4.11"                    ."The duration of the Register Suppression Timer.  This is
            the period during which a PIM Designated Router (DR) stops
            sending Register-encapsulated data to the Rendezvous Point
            (RP) after receiving a Register-Stop message.  This object
            is used to run timers both at the DR and at the RP.  This
            timer period is called the Register_Suppression_Time in the
            PIM-SM specification.

            The storage type of this object is determined by
            pimDeviceConfigStorageType." "RFC 4601 section 4.11"                     -"The number of entries in the pimStarGTable."                       ."The number of entries in the pimStarGITable."                       *"The number of entries in the pimSGTable."                       +"The number of entries in the pimSGITable."                       -"The number of entries in the pimSGRptTable."                       ."The number of entries in the pimSGRptITable."                       �"The number of Asserts sent by this router.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, for example,
            when the device is rebooted." "RFC 4601 section 4.6"                    �"The number of Asserts received by this router.  Asserts
            are multicast to all routers on a network.  This counter is
            incremented by all routers that receive an assert, not only
            those routers that are contesting the assert.



            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, for example,
            when the device is rebooted." "RFC 4601 section 4.6"                     �"The interface on which this router most recently sent or
            received an assert, or zero if this router has not sent or
            received an assert." "RFC 4601 section 4.6"                     �"The address type of the multicast group address in the most
            recently sent or received assert.  If this router has not
            sent or received an assert, then this object is set to
            unknown(0)."                       �"The multicast group address in the most recently sent or
            received assert.  The InetAddressType is given by the
            pimLastAssertGroupAddressType object."                       "The address type of the source address in the most recently
            sent or received assert.  If the most recent assert was
            (*,G), or if this router has not sent or received an assert,
            then this object is set to unknown(0)."                       �"The source address in the most recently sent or received
            assert.  The InetAddressType is given by the
            pimLastAssertSourceAddressType object."                      k"The minimum time that must elapse between pimNeighborLoss
            notifications originated by this router.  The maximum value
            65535 represents an 'infinite' time, in which case, no
            pimNeighborLoss notifications are ever sent.

            The storage type of this object is determined by
            pimDeviceConfigStorageType."                      D"The number of neighbor loss events that have occurred.

            This counter is incremented when the neighbor timer expires,
            and the router has no other neighbors on the same interface
            with the same IP version and a lower IP address than itself.

            This counter is incremented whenever a pimNeighborLoss
            notification would be generated.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, for example,
            when the device is rebooted." "RFC 4601 section 4.3.2"                    S"The minimum time that must elapse between
            pimInvalidRegister notifications originated by this router.
            The default value of 65535 represents an 'infinite' time, in
            which case, no pimInvalidRegister notifications are ever
            sent.

            The non-zero minimum allowed value provides resilience
            against propagation of denial-of-service attacks from the
            data and control planes to the network management plane.

            The storage type of this object is determined by
            pimDeviceConfigStorageType."                      �"The number of invalid PIM Register messages that have been
            received by this device.

            A PIM Register message is invalid if either

            o the destination address of the Register message does not
              match the Group to RP mapping on this device, or

            o this device believes the group address to be within an
              SSM address range, but this Register implies ASM usage.

            These conditions can occur transiently while RP mapping
            changes propagate through the network.  If this counter is
            incremented repeatedly over several minutes, then there is a
            persisting configuration error that requires correction.

            The active Group to RP mapping on this device is specified
            by the object pimGroupMappingPimMode.  If there is no such
            mapping, then the object pimGroupMappingPimMode is absent.
            The RP address contained in the invalid Register is
            pimInvalidRegisterRp.

            Multicast data carried by invalid Register messages is
            discarded.  The discarded data is from a source directly



            connected to pimInvalidRegisterOrigin, and is addressed to
            pimInvalidRegisterGroup.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, for example,
            when the device is rebooted." m"RFC 4601 section 4.4.2, RFC 3569, and
               'IP Multicast MIB' (August 2007) ipMcastSsmRangeTable"                     �"The address type stored in pimInvalidRegisterOrigin,
            pimInvalidRegisterGroup, and pimInvalidRegisterRp.

            If no invalid Register messages have been received, then
            this object is set to unknown(0)."                       _"The source address of the last invalid Register message
            received by this device."                       "The IP multicast group address to which the last invalid
            Register message received by this device was addressed."                       o"The RP address to which the last invalid Register message
            received by this device was delivered."                      K"The minimum time that must elapse between
            pimInvalidJoinPrune notifications originated by this router.
            The default value of 65535 represents an 'infinite' time, in
            which case, no pimInvalidJoinPrune notifications are ever
            sent.

            The non-zero minimum allowed value provides resilience
            against propagation of denial-of-service attacks from the
            control plane to the network management plane.

            The storage type of this object is determined by
            pimDeviceConfigStorageType."                       "The number of invalid PIM Join/Prune messages that have
            been received by this device.

            A PIM Join/Prune message is invalid if either

            o the Group to RP mapping specified by this message does not
              match the Group to RP mapping on this device, or

            o this device believes the group address to be within an
              SSM address range, but this Join/Prune (*,G) or (S,G,rpt)
              implies ASM usage.

            These conditions can occur transiently while RP mapping
            changes propagate through the network.  If this counter is
            incremented repeatedly over several minutes, then there is a
            persisting configuration error that requires correction.

            The active Group to RP mapping on this device is specified
            by the object pimGroupMappingPimMode.  If there is no such
            mapping, then the object pimGroupMappingPimMode is absent.
            The RP address contained in the invalid Join/Prune is
            pimInvalidJoinPruneRp.



            Invalid Join/Prune messages are discarded.  This may result
            in loss of multicast data affecting listeners downstream of
            pimInvalidJoinPruneOrigin, for multicast data addressed to
            pimInvalidJoinPruneGroup.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, for example,
            when the device is rebooted." m"RFC 4601 section 4.5.2, RFC 3569, and
               'IP Multicast MIB' (August 2007) ipMcastSsmRangeTable"                     �"The address type stored in pimInvalidJoinPruneOrigin,
            pimInvalidJoinPruneGroup, and pimInvalidJoinPruneRp.

            If no invalid Join/Prune messages have been received, this
            object is set to unknown(0)."                       a"The source address of the last invalid Join/Prune message
            received by this device."                       u"The IP multicast group address carried in the last
            invalid Join/Prune message received by this device."                       k"The RP address carried in the last invalid Join/Prune



            message received by this device."                      �"The minimum time that must elapse between
            pimRPMappingChange notifications originated by this router.
            The default value of 65535 represents an 'infinite' time, in
            which case, no pimRPMappingChange notifications are ever
            sent.

            The storage type of this object is determined by
            pimDeviceConfigStorageType."                      %"The number of changes to active RP mappings on this device.

            Information about active RP mappings is available in
            pimGroupMappingTable.  Only changes to active mappings cause
            this counter to be incremented.  That is, changes that
            modify the pimGroupMappingEntry with the highest precedence
            for a group (lowest value of pimGroupMappingPrecedence).

            Such changes may result from manual configuration of this
            device, or from automatic RP mapping discovery methods
            including the PIM Bootstrap Router (BSR) mechanism.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, for example,
            when the device is rebooted." 
"RFC 5059"                    �"The minimum time that must elapse between
            pimInterfaceElection notifications originated by this
            router.  The default value of 65535 represents an 'infinite'
            time, in which case, no pimInterfaceElection notifications
            are ever sent.

            The storage type of this object is determined by
            pimDeviceConfigStorageType."                      �"The number of times this device has been elected DR or DF
            on any interface.

            Elections occur frequently on newly-active interfaces, as
            triggered Hellos establish adjacencies.  This counter is not
            incremented for elections on an interface until the first
            periodic Hello has been sent.  If this router is the DR or
            DF at the time of sending the first periodic Hello after
            interface activation, then this counter is incremented
            (once) at that time.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, for example,
            when the device is rebooted." 3"RFC 4601 section 4.3.2 and RFC 5015 section 3.5.2"                    R"The interval between successive State Refresh messages sent
            by an Originator.  This timer period is called the
            RefreshInterval in the PIM-DM specification.  This object is
            used only by PIM-DM.

            The storage type of this object is determined by
            pimDeviceConfigStorageType." "RFC 3973 section 4.8"                    �"The storage type used for the global PIM configuration of
            this device, comprised of the objects listed below.  If this
            storage type takes the value 'permanent', write-access to
            the listed objects need not be allowed.

            The objects described by this storage type are:
            pimKeepalivePeriod, pimRegisterSuppressionTime,
            pimNeighborLossNotificationPeriod,
            pimInvalidRegisterNotificationPeriod,
            pimInvalidJoinPruneNotificationPeriod,
            pimRPMappingNotificationPeriod,
            pimInterfaceElectionNotificationPeriod, and
            pimRefreshInterval."                       �"The (conceptual) table listing the router's PIM interfaces.
            PIM is enabled on all interfaces listed in this table."                       m"An entry (conceptual row) in the pimInterfaceTable.  This
            entry is preserved on agent restart."                       *"The ifIndex value of this PIM interface."                       �"The IP version of this PIM interface.  A physical interface
            may be configured in multiple modes concurrently, e.g., IPv4
            and IPv6; however, the traffic is considered to be logically
            separate."                       )"The address type of this PIM interface."                       �"The primary IP address of this router on this PIM
            interface.  The InetAddressType is given by the
            pimInterfaceAddressType object." 1"RFC 4601 sections 4.1.6, 4.3.1-4.3.4, and 4.5.1"                     {"The value of the Generation ID this router inserted in the
            last PIM Hello message it sent on this interface." "RFC 4601 section 4.3.1"                     �"The primary IP address of the Designated Router on this PIM
            interface.  The InetAddressType is given by the
            pimInterfaceAddressType object." "RFC 4601 section 4.3"                     �"The Designated Router Priority value inserted into the DR
            Priority option in PIM Hello messages transmitted on this
            interface.  Numerically higher values for this object
            indicate higher priorities." "RFC 4601 section 4.3.2"                     c"Evaluates to TRUE if all routers on this interface are
            using the DR Priority option." "RFC 4601 section 4.3.2"                    x"The frequency at which PIM Hello messages are transmitted
            on this interface.  This object corresponds to the
            'Hello_Period' timer value defined in the PIM-SM
            specification.  A value of zero represents an 'infinite'
            interval, and indicates that periodic PIM Hello messages
            should not be sent on this interface." "RFC 4601 section 9"                    �"The maximum time before this router sends a triggered PIM
            Hello message on this interface.  This object corresponds to
            the 'Trigered_Hello_Delay' timer value defined in the PIM-SM
            specification.  A value of zero has no special meaning and
            indicates that triggered PIM Hello messages should always be
            sent immediately." "RFC 4601 section 4.11"                    s"The value set in the Holdtime field of PIM Hello messages
            transmitted on this interface.  A value of 65535 represents
            an 'infinite' holdtime.  Implementations are recommended
            to use a holdtime that is 3.5 times the value of
            pimInterfaceHelloInterval, or 65535 if
            pimInterfaceHelloInterval is set to zero." #"RFC 4601 sections 4.3.2 and 4.9.2"                    �"The frequency at which this router sends PIM Join/Prune
            messages on this PIM interface.  This object corresponds to
            the 't_periodic' timer value defined in the PIM-SM
            specification.  A value of zero represents an 'infinite'
            interval, and indicates that periodic PIM Join/Prune
            messages should not be sent on this interface." "RFC 4601 section 4.11"                    �"The value inserted into the Holdtime field of a PIM
            Join/Prune message sent on this interface.  A value of 65535
            represents an 'infinite' holdtime.  Implementations are
            recommended to use a holdtime that is 3.5 times the value of
            pimInterfaceJoinPruneInterval, or 65535 if
            pimInterfaceJoinPruneInterval is set to zero.  PIM-DM
            implementations are recommended to use the value of
            pimInterfacePruneLimitInterval." #"RFC 4601 sections 4.5.3 and 4.9.5"                     �"The minimum number of PIM DF-Election messages that must be
            lost in order for DF election on this interface to fail."                       g"Evaluates to TRUE if all routers on this interface are
            using the LAN Prune Delay option." #"RFC 4601 sections 4.3.3 and 4.9.2"                    �"The expected propagation delay between PIM routers on this
            network or link.

            This router inserts this value into the Propagation_Delay
            field of the LAN Prune Delay option in the PIM Hello
            messages sent on this interface.  Implementations SHOULD
            enforce a lower bound on the permitted values for this
            object to allow for scheduling and processing delays within
            the local router."                      �"The value this router inserts into the Override_Interval
            field of the LAN Prune Delay option in the PIM Hello



            messages it sends on this interface.

            When overriding a prune, PIM routers pick a random timer
            duration up to the value of this object.  The more PIM
            routers that are active on a network, the more likely it is
            that the prune will be overridden after a small proportion
            of this time has elapsed.

            The more PIM routers are active on this network, the larger
            this object should be to obtain an optimal spread of prune
            override latencies." "RFC 4601 section 4.3.3"                     �"The Effective Propagation Delay on this interface.  This
            object is always 500 if pimInterfaceLanDelayEnabled is
            FALSE." "RFC 4601 section 4.3.3"                     �"The Effective Override Interval on this interface.  This
            object is always 2500 if pimInterfaceLanDelayEnabled is
            FALSE." "RFC 4601 section 4.3.3"                     �"Whether join suppression is enabled on this interface.
            This object is always TRUE if pimInterfaceLanDelayEnabled is
            FALSE." "RFC 4601 section 4.3.3"                     q"Evaluates to TRUE if all routers on this interface are
            using the Bidirectional-PIM Capable option."  "RFC 5015 section 3.2 and 3.7.4"                     �"Whether or not this interface is a PIM domain border.  This
            includes acting as a border for PIM Bootstrap Router (BSR)
            messages, if the BSR mechanism is in use."                      r"Whether this interface is a 'stub interface'.  If this
            object is set to TRUE, then no PIM packets are sent out this
            interface, and any received PIM packets are ignored.

            Setting this object to TRUE is a security measure for
            interfaces towards untrusted hosts.  This allows an
            interface to be configured for use with IGMP (Internet Group
            Management Protocol) or MLD (Multicast Listener Discovery)
            only, which protects the PIM router from forged PIM messages
            on the interface.

            To communicate with other PIM routers using this interface,
            this object must remain set to FALSE.

            Changing the value of this object while the interface is
            operational causes PIM to be disabled and then re-enabled on
            this interface." "RFC 3376, RFC 3810"                    "The minimum interval that must transpire between two
            successive Prunes sent by a router.  This object corresponds
            to the 't_limit' timer value defined in the PIM-DM
            specification.  This object is used only by PIM-DM." "RFC 3973 section 4.8"                    "The minimum interval that must transpire between two
            successive Grafts sent by a router.  This object corresponds
            to the 'Graft_Retry_Period' timer value defined in the
            PIM-DM specification.  This object is used only by PIM-DM." "RFC 3973 section 4.8"                     �"Evaluates to TRUE if all routers on this interface are
            using the State Refresh option.  This object is used only by
            PIM-DM."                      �"The status of this entry.  Creating the entry enables PIM
            on the interface; destroying the entry disables PIM on the
            interface.

            This status object can be set to active(1) without setting



            any other columnar objects in this entry.

            All writeable objects in this entry can be modified when the
            status of this entry is active(1)."                       �"The storage type for this row.  Rows having the value
            'permanent' need not allow write-access to any columnar
            objects in the row."                       <"The (conceptual) table listing the router's PIM neighbors."                       4"An entry (conceptual row) in the pimNeighborTable."                       V"The value of ifIndex for the interface used to reach this
            PIM neighbor."                       ("The address type of this PIM neighbor."                       �"The primary IP address of this PIM neighbor.  The
            InetAddressType is given by the pimNeighborAddressType
            object."                       T"Evaluates to TRUE if this neighbor is using the Generation
            ID option." "RFC 4601 section 4.3.1"                     �"The value of the Generation ID from the last PIM Hello
            message received from this neighbor.  This object is always
            zero if pimNeighborGenerationIDPresent is FALSE." "RFC 4601 section 4.3.1"                     ]"The time since this PIM neighbor (last) became a neighbor
            of the local router."                       �"The minimum time remaining before this PIM neighbor will
            time out.  The value zero indicates that this PIM neighbor
            will never time out."                       R"Evaluates to TRUE if this neighbor is using the DR Priority
            option." "RFC 4601 section 4.3.2"                     �"The value of the Designated Router Priority from the last
            PIM Hello message received from this neighbor.  This object
            is always zero if pimNeighborDRPriorityPresent is FALSE." "RFC 4601 section 4.3.2"                     V"Evaluates to TRUE if this neighbor is using the LAN Prune
            Delay option." "RFC 4601 section 4.3.3"                    !"Whether the T bit was set in the LAN Prune Delay option
            received from this neighbor.  The T bit specifies the
            ability of the neighbor to disable join suppression.  This
            object is always TRUE if pimNeighborLanPruneDelayPresent is
            FALSE." "RFC 4601 section 4.3.3"                     �"The value of the Propagation_Delay field of the LAN Prune
            Delay option received from this neighbor.  This object is
            always zero if pimNeighborLanPruneDelayPresent is FALSE." "RFC 4601 section 4.3.3"                     �"The value of the Override_Interval field of the LAN Prune
            Delay option received from this neighbor.  This object is
            always zero if pimNeighborLanPruneDelayPresent is FALSE." "RFC 4601 section 4.3.3"                     `"Evaluates to TRUE if this neighbor is using the
            Bidirectional-PIM Capable option."  "RFC 5015 section 3.2 and 3.7.4"                     �"Evaluates to TRUE if this neighbor is using the State
            Refresh Capable option.  This object is used only by
            PIM-DM." "RFC 3973 section 4.3.4"                     �"The (conceptual) table listing the secondary addresses
            advertised by each PIM neighbor (on a subset of the rows of
            the pimNeighborTable defined above)." "RFC 4601 section 4.3.4"                     9"An entry (conceptual row) in the pimNbrSecAddressTable."                       V"The value of ifIndex for the interface used to reach this
            PIM neighbor."                       ("The address type of this PIM neighbor."                       �"The primary IP address of this PIM neighbor.  The
            InetAddressType is given by the pimNbrSecAddressType
            object."                       �"The secondary IP address of this PIM neighbor.  The
            InetAddressType is given by the pimNbrSecAddressType
            object."                       b"The (conceptual) table listing the non-interface specific
            (*,G) state that PIM has." "RFC 4601 section 4.1.3"                     1"An entry (conceptual row) in the pimStarGTable."                       +"The address type of this multicast group."                       l"The multicast group address.  The InetAddressType is given
            by the pimStarGAddressType object."                       <"The time since this entry was created by the local router."                       p"Whether this entry represents an ASM (Any Source Multicast,
            used with PIM-SM) or BIDIR-PIM group."           --{ asm(3), bidir(4) }
           i"The address type of the Rendezvous Point (RP), or
            unknown(0) if the RP address is unknown."                       �"The address of the Rendezvous Point (RP) for the group.
            The InetAddressType is given by the pimStarGRPAddressType."                       U"The mechanism by which the PIM mode and RP for the group
            were learned."                       3"Whether the local router is the RP for the group."                       �"Whether the local router should join the RP tree for the
            group.  This corresponds to the state of the upstream (*,G)
            state machine in the PIM-SM specification." "RFC 4601 section 4.5.6"                    #"The time remaining before the local router next sends a
            periodic (*,G) Join message on pimStarGRPFIfIndex.  This
            timer is called the (*,G) Upstream Join Timer in the PIM-SM
            specification.  This object is zero if the timer is not
            running." "RFC 4601 section 4.10"                     �"The primary address type of the upstream neighbor, or



            unknown(0) if the upstream neighbor address is unknown or is
            not a PIM neighbor."                      :"The primary address of the neighbor on pimStarGRPFIfIndex
            that the local router is sending periodic (*,G) Join
            messages to.  The InetAddressType is given by the
            pimStarGUpstreamNeighborType object.  This address is called
            RPF'(*,G) in the PIM-SM specification." "RFC 4601 section 4.1.6"                     �"The value of ifIndex for the Reverse Path Forwarding
            (RPF) interface towards the RP, or zero if the RPF
            interface is unknown."                       q"The address type of the RPF next hop towards the RP, or
            unknown(0) if the RPF next hop is unknown."                       �"The address of the RPF next hop towards the RP.  The
            InetAddressType is given by the pimStarGRPFNextHopType
            object.  This address is called MRIB.next_hop(RP(G))
            in the PIM-SM specification." "RFC 4601 section 4.5.5"                     s"The routing mechanism via which the route used to find the
            RPF interface towards the RP was learned."                      �"The IP address that, when combined with the corresponding
            value of pimStarGRPFRoutePrefixLength, identifies the route
            used to find the RPF interface towards the RP.  The
            InetAddressType is given by the pimStarGRPFNextHopType
            object.

            This address object is only significant up to
            pimStarGRPFRoutePrefixLength bits.  The remainder of the
            address bits are zero."                      "The prefix length that, when combined with the
            corresponding value of pimStarGRPFRouteAddress, identifies
            the route used to find the RPF interface towards the RP.
            The InetAddressType is given by the pimStarGRPFNextHopType
            object."                       `"The metric preference of the route used to find the RPF
            interface towards the RP."                       ]"The routing metric of the route used to find the RPF
            interface towards the RP."                       ^"The (conceptual) table listing the interface-specific (*,G)
            state that PIM has." "RFC 4601 section 4.1.3"                     2"An entry (conceptual row) in the pimStarGITable."                       K"The ifIndex of the interface that this entry corresponds
            to."                       <"The time since this entry was created by the local router."                       �"Whether the local router has (*,G) local membership on this
            interface (resulting from a mechanism such as IGMP or MLD).
            This corresponds to local_receiver_include(*,G,I) in the
            PIM-SM specification." 0"RFC 3376, RFC 3810, and RFC 4601 section 4.1.6"                     �"The state resulting from (*,G) Join/Prune messages
            received on this interface.  This corresponds to the state
            of the downstream per-interface (*,G) state machine in the
            PIM-SM specification." "RFC 4601 section 4.5.2"                    �"The time remaining before the local router acts on a (*,G)
            Prune message received on this interface, during which the
            router is waiting to see whether another downstream router
            will override the Prune message.  This timer is called the
            (*,G) Prune-Pending Timer in the PIM-SM specification.  This
            object is zero if the timer is not running." "RFC 4601 section 4.5.1"                    8"The time remaining before (*,G) Join state for this
            interface expires.  This timer is called the (*,G) Join
            Expiry Timer in the PIM-SM specification.  This object is
            zero if the timer is not running.  A value of 'FFFFFFFF'h
            indicates an infinite expiry time." "RFC 4601 section 4.10"                     �"The (*,G) Assert state for this interface.  This
            corresponds to the state of the per-interface (*,G) Assert
            state machine in the PIM-SM specification.  If
            pimStarGPimMode is 'bidir', this object must be 'noInfo'." "RFC 4601 section 4.6.2"                    �"If pimStarGIAssertState is 'iAmAssertWinner', this is the
            time remaining before the local router next sends a (*,G)
            Assert message on this interface.  If pimStarGIAssertState
            is 'iAmAssertLoser', this is the time remaining before the



            (*,G) Assert state expires.  If pimStarGIAssertState is
            'noInfo', this is zero.  This timer is called the (*,G)
            Assert Timer in the PIM-SM specification." "RFC 4601 section 4.6.2"                     �"If pimStarGIAssertState is 'iAmAssertLoser', this is the
            address type of the assert winner; otherwise, this object is
            unknown(0)."                       �"If pimStarGIAssertState is 'iAmAssertLoser', this is the
            address of the assert winner.  The InetAddressType is given
            by the pimStarGIAssertWinnerAddressType object."                       �"If pimStarGIAssertState is 'iAmAssertLoser', this is the
            metric preference of the route to the RP advertised by the
            assert winner; otherwise, this object is zero."                       �"If pimStarGIAssertState is 'iAmAssertLoser', this is the
            routing metric of the route to the RP advertised by the
            assert winner; otherwise, this object is zero."                       b"The (conceptual) table listing the non-interface specific
            (S,G) state that PIM has." "RFC 4601 section 4.1.4"                     ."An entry (conceptual row) in the pimSGTable."                       Q"The address type of the source and multicast group for this
            entry."                       x"The multicast group address for this entry.  The
            InetAddressType is given by the pimSGAddressType object."                       o"The source address for this entry.  The InetAddressType is
            given by the pimSGAddressType object."                       <"The time since this entry was created by the local router."                       �"Whether pimSGGrpAddress is an SSM (Source Specific
            Multicast, used with PIM-SM) or ASM (Any Source Multicast,
            used with PIM-SM) group." m"RFC 4601 section 4.5.2, RFC 3569, and
               'IP Multicast MIB' (August 2007) ipMcastSsmRangeTable"         --{ ssm(2), asm(3) }
           �"Whether the local router should join the shortest-path tree
            for the source and group represented by this entry.  This
            corresponds to the state of the upstream (S,G) state machine
            in the PIM-SM specification." "RFC 4601 section 4.5.7"                     "The time remaining before the local router next sends a
            periodic (S,G) Join message on pimSGRPFIfIndex.  This timer
            is called the (S,G) Upstream Join Timer in the PIM-SM
            specification.  This object is zero if the timer is not
            running." !"RFC 4601 sections 4.10 and 4.11"                    ~"The primary address of the neighbor on pimSGRPFIfIndex that
            the local router is sending periodic (S,G) Join messages to.
            This is zero if the RPF next hop is unknown or is not a
            PIM neighbor.  The InetAddressType is given by the
            pimSGAddressType object.  This address is called RPF'(S,G)
            in the PIM-SM specification." "RFC 4601 section 4.1.6"                     v"The value of ifIndex for the RPF interface towards the
            source, or zero if the RPF interface is unknown."                       u"The address type of the RPF next hop towards the source, or
            unknown(0) if the RPF next hop is unknown."                       �"The address of the RPF next hop towards the source.  The
            InetAddressType is given by the pimSGRPFNextHopType.  This
            address is called MRIB.next_hop(S) in the PIM-SM
            specification." "RFC 4601 section 4.5.5"                     w"The routing mechanism via which the route used to find the
            RPF interface towards the source was learned."                      �"The IP address that, when combined with the corresponding
            value of pimSGRPFRoutePrefixLength, identifies the route
            used to find the RPF interface towards the source.  The
            InetAddressType is given by the pimSGRPFNextHopType object.

            This address object is only significant up to



            pimSGRPFRoutePrefixLength bits.  The remainder of the
            address bits are zero."                      "The prefix length that, when combined with the
            corresponding value of pimSGRPFRouteAddress, identifies the
            route used to find the RPF interface towards the source.
            The InetAddressType is given by the pimSGRPFNextHopType
            object."                       d"The metric preference of the route used to find the RPF
            interface towards the source."                       a"The routing metric of the route used to find the RPF
            interface towards the source."                       v"Whether the SPT bit is set; and therefore whether
            forwarding is taking place on the shortest-path tree."                      "The time remaining before this (S,G) state expires, in
            the absence of explicit (S,G) local membership or (S,G)
            Join messages received to maintain it.  This timer is
            called the (S,G) Keepalive Timer in the PIM-SM
            specification." "RFC 4601 section 4.1.4"                    D"Whether the local router should encapsulate (S,G) data
            packets in Register messages and send them to the RP.  This
            corresponds to the state of the per-(S,G) Register state
            machine in the PIM-SM specification.  This object is always
            'noInfo' unless pimSGPimMode is 'asm'." "RFC 4601 section 4.4.1"                    �"If pimSGDRRegisterState is 'prune', this is the time
            remaining before the local router sends a Null-Register
            message to the RP.  If pimSGDRRegisterState is
            'joinPending', this is the time remaining before the local
            router resumes encapsulating data packets and sending them
            to the RP.  Otherwise, this is zero.  This timer is called
            the Register-Stop Timer in the PIM-SM specification." "RFC 4601 section 4.4"                     �"The address type of the first PIM Multicast Border Router
            to send a Register message with the Border bit set.  This



            object is unknown(0) if the local router is not the RP for
            the group."                       �"The IP address of the first PIM Multicast Border Router to
            send a Register message with the Border bit set.  The
            InetAddressType is given by the
            pimSGRPRegisterPMBRAddressType object."                       �"Whether the local router has pruned itself from the tree.
            This corresponds to the state of the upstream prune (S,G)
            state machine in the PIM-DM specification.  This object is
            used only by PIM-DM." "RFC 3973 section 4.4.1"                    9"The time remaining before the local router may send a (S,G)
            Prune message on pimSGRPFIfIndex.  This timer is called the
            (S,G) Prune Limit Timer in the PIM-DM specification.  This
            object is zero if the timer is not running.  This object is
            used only by PIM-DM." "RFC 2973 section 4.8"                     �"Whether the router is an originator for an (S,G) message
            flow.  This corresponds to the state of the per-(S,G)
            Originator state machine in the PIM-DM specification.  This
            object is used only by PIM-DM." "RFC 3973 section 4.5.2"                    ="If pimSGOriginatorState is 'originator', this is the time
            remaining before the local router reverts to a notOriginator
            state.  Otherwise, this is zero.  This timer is called the
            Source Active Timer in the PIM-DM specification.  This
            object is used only by PIM-DM." "RFC 3973 section 4.8"                    :"If pimSGOriginatorState is 'originator', this is the time
            remaining before the local router sends a State Refresh
            message.  Otherwise, this is zero.  This timer is called the
            State Refresh Timer in the PIM-DM specification.  This
            object is used only by PIM-DM." "RFC 3973 section 4.8"                     ^"The (conceptual) table listing the interface-specific (S,G)
            state that PIM has." "RFC 4601 section 4.1.4"                     /"An entry (conceptual row) in the pimSGITable."                       K"The ifIndex of the interface that this entry corresponds
            to."                       <"The time since this entry was created by the local router."                       �"Whether the local router has (S,G) local membership on this
            interface (resulting from a mechanism such as IGMP or MLD).
            This corresponds to local_receiver_include(S,G,I) in the
            PIM-SM specification." N"RFC 3376, RFC 3810, RFC 4601 sections 4.1.6, 4.6.1, and
              4.6.2"                     �"The state resulting from (S,G) Join/Prune messages
            received on this interface.  This corresponds to the state
            of the downstream per-interface (S,G) state machine in the
            PIM-SM and PIM-DM specification." 3"RFC 4601 section 4.5.3 and RFC 3973 section 4.4.2"                    �"The time remaining before the local router acts on an (S,G)
            Prune message received on this interface, during which the
            router is waiting to see whether another downstream router
            will override the Prune message.  This timer is called the
            (S,G) Prune-Pending Timer in the PIM-SM specification.  This
            object is zero if the timer is not running." #"RFC 4601 sections 4.5.3 and 4.5.4"                    �"The time remaining before (S,G) Join state for this



            interface expires.  This timer is called the (S,G) Join
            Expiry Timer in the PIM-SM specification.  This object is
            zero if the timer is not running.  A value of 'FFFFFFFF'h
            indicates an infinite expiry time.  This timer is called the
            (S,G) Prune Timer in the PIM-DM specification." 0"RFC 4601 section 4.10 and RFC 3973 section 4.8"                     �"The (S,G) Assert state for this interface.  This
            corresponds to the state of the per-interface (S,G) Assert
            state machine in the PIM-SM specification." "RFC 4601 section 4.6.1"                    �"If pimSGIAssertState is 'iAmAssertWinner', this is the time
            remaining before the local router next sends a (S,G) Assert
            message on this interface.  If pimSGIAssertState is
            'iAmAssertLoser', this is the time remaining before the
            (S,G) Assert state expires.  If pimSGIAssertState is
            'noInfo', this is zero.  This timer is called the (S,G)
            Assert Timer in the PIM-SM specification." "RFC 4601 section 4.6.1"                     �"If pimSGIAssertState is 'iAmAssertLoser', this is the
            address type of the assert winner; otherwise, this object is
            unknown(0)."                       �"If pimSGIAssertState is 'iAmAssertLoser', this is the
            address of the assert winner.  The InetAddressType is given
            by the pimSGIAssertWinnerAddressType object."                       �"If pimSGIAssertState is 'iAmAssertLoser', this is the
            metric preference of the route to the source advertised by
            the assert winner; otherwise, this object is zero."                       �"If pimSGIAssertState is 'iAmAssertLoser', this is the
            routing metric of the route to the source advertised by the
            assert winner; otherwise, this object is zero."                       f"The (conceptual) table listing the non-interface specific
            (S,G,rpt) state that PIM has." "RFC 4601 section 4.1.5"                     1"An entry (conceptual row) in the pimSGRptTable."                       r"The source address for this entry.  The InetAddressType is
            given by the pimStarGAddressType object."                       <"The time since this entry was created by the local router."                       �"Whether the local router should prune the source off the RP
            tree.  This corresponds to the state of the upstream
            (S,G,rpt) state machine for triggered messages in the PIM-SM
            specification." "RFC 4601 section 4.5.9"                    *"The time remaining before the local router sends a
            triggered (S,G,rpt) Join message on pimStarGRPFIfIndex.
            This timer is called the (S,G,rpt) Upstream Override Timer
            in the PIM-SM specification.  This object is zero if the
            timer is not running." "RFC 4601 section 4.5.9"                     b"The (conceptual) table listing the interface-specific
            (S,G,rpt) state that PIM has." "RFC 4601 section 4.1.5"                     2"An entry (conceptual row) in the pimSGRptITable."                       K"The ifIndex of the interface that this entry corresponds
            to."                       <"The time since this entry was created by the local router."                      ,"Whether the local router has both (*,G) include local
            membership and (S,G) exclude local membership on this
            interface (resulting from a mechanism such as IGMP or MLD).
            This corresponds to local_receiver_exclude(S,G,I) in the
            PIM-SM specification." ,"RFC 3376, RFC 3810, RFC 4601 section 4.1.6"                     �"The state resulting from (S,G,rpt) Join/Prune messages
            received on this interface.  This corresponds to the state
            of the downstream per-interface (S,G,rpt) state machine in
            the PIM-SM specification." "RFC 4601 section 4.5.4"                    "The time remaining before the local router starts pruning
            this source off the RP tree.  This timer is called the
            (S,G,rpt) Prune-Pending Timer in the PIM-SM specification.
            This object is zero if the timer is not running." "RFC 4601 section 4.5.4"                    B"The time remaining before (S,G,rpt) Prune state for this
            interface expires.  This timer is called the (S,G,rpt)
            Prune Expiry Timer in the PIM-SM specification.  This object
            is zero if the timer is not running.  A value of 'FFFFFFFF'h
            indicates an infinite expiry time." "RFC 4601 section 4.5.4"                     �"The (conceptual) table listing the per-RP Designated
            Forwarder (DF) Election state for each interface for all the
            RPs in BIDIR mode." "RFC 5015 section 3.5"                     ;"An entry (conceptual row) in the pimBidirDFElectionTable."                       U"The address type of the RP for which the DF state is being
            maintained."                       �"The IP address of the RP for which the DF state is being
            maintained.  The InetAddressType is given by the
            pimBidirDFElectionAddressType object."                       a"The value of ifIndex for the interface for which the DF
            state is being maintained."                       �"The primary address type of the winner of the DF Election
            process.  A value of unknown(0) indicates there is currently



            no DF."                       �"The primary IP address of the winner of the DF Election
            process.  The InetAddressType is given by the
            pimBidirDFElectionWinnerAddressType object."                       ]"The time since the current winner (last) became elected as
            the DF for this RP."                       f"The metric preference advertised by the DF Winner, or zero
            if there is currently no DF."                       ["The metric advertised by the DF Winner, or zero if there is
            currently no DF."                       �"The state of this interface with respect to DF-Election for
            this RP.  The states correspond to the ones defined in the
            BIDIR-PIM specification." "RFC 5015 section 3.5.3.1"                     �"The minimum time remaining after which the local router
            will expire the current DF state represented by
            pimBidirDFElectionState."                      "This table is used to manage static configuration of RPs.

            If the group prefixes configured for two or more rows in
            this table overlap, the row with the greatest value of
            pimStaticRPGrpPrefixLength is used for the overlapping
            range." "RFC 4601 section 3.7"                     l"An entry (conceptual row) in the pimStaticRPTable.  This
            entry is preserved on agent restart."                       !"The address type of this entry."                      K"The multicast group address that, when combined with
            pimStaticRPGrpPrefixLength, gives the group prefix for this
            entry.  The InetAddressType is given by the
            pimStaticRPAddressType object.

            This address object is only significant up to
            pimStaticRPGrpPrefixLength bits.  The remainder of the
            address bits are zero.  This is especially important for
            this index field, which is part of the index of this entry.
            Any non-zero bits would signify an entirely different
            entry."                      �"The multicast group prefix length that, when combined
            with pimStaticRPGrpAddress, gives the group prefix for this
            entry.  The InetAddressType is given by the
            pimStaticRPAddressType object.  If pimStaticRPAddressType is
            'ipv4' or 'ipv4z', this object must be in the range 4..32.



            If pimStaticRPGrpAddressType is 'ipv6' or 'ipv6z', this
            object must be in the range 8..128."                       �"The IP address of the RP to be used for groups within this
            group prefix.  The InetAddressType is given by the
            pimStaticRPAddressType object."                       �"The PIM mode to be used for groups in this group prefix.

            If this object is set to ssm(2), then pimStaticRPRPAddress
            must be set to zero.  No RP operations are ever possible for
            PIM Mode SSM." k"RFC 4601 section 3.7, RFC 3569, and
               'IP Multicast MIB' (August 2007) ipMcastSsmRangeTable"          --{ ssm(2), asm(3), bidir(4) }
          �"Whether this static RP configuration will override other
            group mappings in this group prefix.  If this object is
            TRUE, then it will override:

            -  RP information learned dynamically for groups in this
            group prefix.

            -  RP information configured in pimStaticRPTable with
            pimStaticRPOverrideDynamic set to FALSE.

            See pimGroupMappingTable for details."                      -"The value for pimGroupMappingPrecedence to be used for this
            static RP configuration.  This allows fine control over
            which configuration is overridden by this static
            configuration.

            If pimStaticRPOverrideDynamic is set to TRUE, all dynamic RP
            configuration is overridden by this static configuration,
            whatever the value of this object.

            The absolute values of this object have a significance only
            on the local router and do not need to be coordinated with
            other routers.  A setting of this object may have different
            effects when applied to other routers.

            Do not use this object unless fine control of static RP
            behavior on the local router is required."                      e"The status of this row, by which rows in this table can
            be created and destroyed.

            This status object cannot be set to active(1) before a valid
            value has been written to pimStaticRPRPAddress.

            All writeable objects in this entry can be modified when the
            status of this entry is active(1)."                       �"The storage type for this row.  Rows having the value
            'permanent' need not allow write-access to any columnar
            objects in the row."                      �"This table is used to manage Anycast-RP via PIM Register
            messages, as opposed to via other protocols such as MSDP
            (Multicast Source Discovery Protocol).

            Entries must be configured in this table if and only if the
            local router is a member of one or more Anycast-RP sets,
            that is, one or more Anycast-RP addresses are assigned to
            the local router.  Note that if using static RP
            configuration, this is in addition to, not instead of, the
            pimStaticRPTable entries that must be configured for the
            Anycast-RPs.

            The set of rows with the same values of both
            pimAnycastRPSetAddressType and pimAnycastRPSetAnycastAddress
            corresponds to the Anycast-RP set for that Anycast-RP
            address.

            When an Anycast-RP set configuration is active, one entry
            per pimAnycastRPSetAnycastAddress corresponds to the local
            router.  The local router is identified by the
            pimAnycastRpSetLocalRouter object.  That entry determines
            the source address used by the local router when forwarding
            PIM Register messages within the Anycast-RP set." "RFC 4610, RFC 3618"                     �"An entry corresponds to a single router within a particular
            Anycast-RP set.  This entry is preserved on agent restart."                       M"The address type of the Anycast-RP address and router
            address."                       n"The Anycast-RP address.  The InetAddressType is given by
            the pimAnycastRPSetAddressType object."                      r"The address of a router that is a member of the Anycast-RP
            set.  The InetAddressType is given by the
            pimAnycastRPSetAddressType object.

            This address differs from pimAnycastRPSetAnycastAddress.
            Equal values for these two addresses in a single entry are
            not permitted.  That would cause a Register loop."                       5"Whether this entry corresponds to the local router."                      ]"The status of this row, by which rows in this table can
            be created and destroyed.

            This status object can be set to active(1) without setting
            any other columnar objects in this entry.

            All writeable objects in this entry can be modified when the
            status of this entry is active(1)."                       �"The storage type for this row.  Rows having the value
            'permanent' need not allow write-access to any columnar
            objects in the row."                      "The (conceptual) table listing mappings from multicast
            group prefixes to the PIM mode and RP address to use for
            groups within that group prefix.

            Rows in this table are created for a variety of reasons,
            indicated by the value of the pimGroupMappingOrigin object.

            -  Rows with a pimGroupMappingOrigin value of 'fixed' are
               created automatically by the router at startup, to
               correspond to the well-defined prefixes of link-local and
               unroutable group addresses.  These rows are never
               destroyed.




            -  Rows with a pimGroupMappingOrigin value of 'embedded' are
               created by the router to correspond to group prefixes
               that are to be treated as being in Embedded-RP format.

            -  Rows with a pimGroupMappingOrigin value of 'configRp' are
               created and destroyed as a result of rows in the
               pimStaticRPTable being created and destroyed.

            -  Rows with a pimGroupMappingOrigin value of 'configSsm'
               are created and destroyed as a result of configuration of
               SSM address ranges to the local router.

            -  Rows with a pimGroupMappingOrigin value of 'bsr' are
               created as a result of running the PIM Bootstrap Router
               (BSR) mechanism.  If the local router is not the elected
               BSR, these rows are created to correspond to group
               prefixes in the PIM Bootstrap messages received from the
               elected BSR.  If the local router is the elected BSR,
               these rows are created to correspond to group prefixes in
               the PIM Bootstrap messages that the local router sends.
               In either case, these rows are destroyed when the group
               prefixes are timed out by the BSR mechanism.

            -  Rows with a pimGroupMappingOrigin value of 'other' are
               created and destroyed according to some other mechanism
               not specified here.

            Given the collection of rows in this table at any point in
            time, the PIM mode and RP address to use for a particular
            group is determined using the following algorithm.

            1. From the set of all rows, the subset whose group prefix
               contains the group in question are selected.

            2. If there are no such rows, then the group mapping is
               undefined.

            3. If there are multiple selected rows, and a subset is
               defined by pimStaticRPTable (pimGroupMappingOrigin value
               of 'configRp') with pimStaticRPOverrideDynamic set to
               TRUE, then this subset is selected.

            4. From the selected subset of rows, the subset that have
               the greatest value of pimGroupMappingGrpPrefixLength are
               selected.

            5. If there are still multiple selected rows, the subset
               that has the highest precedence (the lowest numerical



               value for pimGroupMappingPrecedence) is selected.

            6. If there are still multiple selected rows, the row
               selected is implementation dependent; the implementation
               might or might not apply the PIM hash function to select
               the row.

            7. The group mode to use is given by the value of
               pimGroupMappingPimMode from the single selected row; the
               RP to use is given by the value of
               pimGroupMappingRPAddress, unless pimGroupMappingOrigin is
               'embedded', in which case, the RP is extracted from the
               group address in question." ."RFC 4601 section 3.7, RFC 3956, and RFC 4610"                     8"An entry (conceptual row) in the pimGroupMappingTable."                       8"The mechanism by which this group mapping was learned."                       4"The address type of the IP multicast group prefix."                      \"The IP multicast group address that, when combined with
            pimGroupMappingGrpPrefixLength, gives the group prefix for
            this mapping.  The InetAddressType is given by the
            pimGroupMappingAddressType object.

            This address object is only significant up to
            pimGroupMappingGrpPrefixLength bits.  The remainder of the
            address bits are zero.  This is especially important for
            this index field, which is part of the index of this entry.
            Any non-zero bits would signify an entirely different
            entry."                      �"The multicast group prefix length that, when combined
            with pimGroupMappingGrpAddress, gives the group prefix for
            this mapping.  The InetAddressType is given by the
            pimGroupMappingAddressType object.  If
            pimGroupMappingAddressType is 'ipv4' or 'ipv4z', this
            object must be in the range 4..32.  If
            pimGroupMappingAddressType is 'ipv6' or 'ipv6z', this object
            must be in the range 8..128."                      ="The address type of the RP to be used for groups within
            this group prefix, or unknown(0) if no RP is to be used or



            if the RP address is unknown.  This object must be
            unknown(0) if pimGroupMappingPimMode is ssm(2), or if
            pimGroupMappingOrigin is embedded(6)."                       �"The IP address of the RP to be used for groups within this
            group prefix.  The InetAddressType is given by the
            pimGroupMappingRPAddressType object."                       :"The PIM mode to be used for groups in this group prefix."                      �"The precedence of this row, used in the algorithm that
            determines which row applies to a given group address
            (described above).  Numerically higher values for this
            object indicate lower precedences, with the value zero
            denoting the highest precedence.

            The absolute values of this object have a significance only
            on the local router and do not need to be coordinated with
            other routers."                               \"The compliance statement for routers which are running
             PIM-SM (Sparse Mode)."   "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional."             P"The compliance statement for routers which are running
            Bidir-PIM."   "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional."             k"The compliance statement for routers which are running
             PIM SSM (Source Specific Multicast)."   "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional."             Z"The compliance statement for routers which are running
            PIM-DM (Dense Mode)."   "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional." "This group is optional."                 S"A collection of read-only objects used to report local PIM
            topology."                 P"A collection of notifications for signaling important PIM
            events."                     h"A collection of writeable objects used to configure PIM
            behavior and to tune performance."                 6"A collection of statistics global to the PIM router."                 �"A collection of objects to support management of PIM
            routers running the PIM SSM (Source Specific Multicast)
            protocol, in PIM mode SM (Sparse Mode)."                 n"A collection of objects to support configuration of RPs
            (Rendezvous Points) and Group Mappings."                 �"A collection of objects to support management of PIM
            routers running PIM-SM (Sparse Mode).  The groups
            pimSsmGroup and pimRPConfigGroup are also required."                 �"A collection of objects to support management of PIM
            routers running BIDIR mode.  The groups pimSsmGroup,
            pimSmGroup and pimRPConfigGroup are also required."                 ]"A collection of objects to support management of the PIM
            Anycast-RP mechanism."                 �"A collection of objects to allow fine control of
            interactions between static RP configuration and
            dynamically acquired group to RP mappings."                 `"A collection of objects to support notification of PIM
            network management events."                 Y"A collection of notifications for signaling PIM network
            management events."                     P"Objects providing additional diagnostics related to a PIM
            router."                 �"A collection of objects required for management of PIM
            Dense Mode (PIM-DM) function.  The groups pimSsmGroup and
            pimSmGroup are also required." 
"RFC 3973"               k"An object that specifies the volatility of global PIM
            configuration settings on this device."                    