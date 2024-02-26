     "A non-zero Unsigned32."               �"The current operational state of a MIB row.  This set of values
            is used by many Data Connection products written before 2006."               &"A numeric index value or identifier."               h"An arbitrary index value identifying an extended access
              list or zero for no access list."               �"An index value identifying a particular rule within a
              standard access list.  Rules are tested in order of
              increasing rule index."               M"An arbitrary index value identifying an extended access
              list."               g"An arbitrary index value identifying a standard access
              list or zero for no access list."               0"The desired administrative state of a MIB row."              �"The count of the number of events of a particular type that
            have occurred since the last time either the NMI join was
            established (caused by activating DC-PIM TIB Manager or
            DC-PIM Neighbor Manager, or by recovery after NMI join
            failure/fail-over), or the statistics were explicitly reset
            by setting the pimNmEntClearStatsCounters object to 'true'.
            This value can wrap."               �"The current operational state of a MIB row.  This set of values
            has been used by the Data Connection Networking Protocols Group
            since 2006."               �"The HAF entity index value identifying a DC software entity.
              This TC is deprecated.  Use NumericIndex for all indexes."               �"Either a numeric index value or identifier, or the value zero
               with a special meaning defined by the object description.  Do
               not use this TC for MIB table index objects.  Zero is not valid
               for such objects."               �"The HAF entity index value identifying a DC software entity, or
               zero which is used to indicate that the entity is not present.
               This TC is deprecated.  Use NumericIndexOrZero for all
               references to indexes."                                                                             0"The private MIB module definition for PIM MIB." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "200809250000Z" "Initial version of this MIB."               q"This table is used to create and manage the {interface, IP
            version} pairs for which PIM is enabled."                       5"An entry (conceptual row) in the pimInterfaceTable."                       5"The desired administrative state of this interface."                       2"The current operational state of this interface."                      �"Whether this interface is a 'stub interface' with regard to
            PIM.  If this is set to 'true', no PIM packets are sent or
            processed (if received) on this interface.  This should be
            set to 'true' if there are no other PIM routers on the
            interface but there may be untrusted hosts on the interface,
            to prevent the router processing forged PIM messages from
            those hosts.  If there are other PIM routers on this
            interface, this must be left as 'false'.

            Changing the value of this object while the interface is
            operational causes the interface to be deactivated and
            then reactivated."                      �"Whether this interface is a point-to-point interface on
            which we do not require the neighbor to send PIM-Hello
            signals.  Provided for back-compatibility with some older
            implementations that do not send Hellos on point-to-point
            links.

            Changing the value of this object while the interface is
            operational causes the interface to be deactivated and
            then reactivated."                      �"The HAF entity index of the DC-MGMD (for example, for IPv4
            this is DC-IGMP) Router component that owns this interface.
            Zero is a wildcard value meaning that no DC-MGMD Router
            component currently owns the interface, and the first
            DC-MGMD Router component that sends Group Membership
            information for this interface will take ownership of it."                       0"The number of PIM neighbors on this interface."                       �"The maximum number of groups for which DC-PIM TIB Manager
            is allowed to store (*,G,I) state specific to this
            interface.  A value of zero means that there is no limit."                       �"DC-PIM TIB Manager logs an exception if the number of
            groups for which it is storing (*,G,I) state specific to
            this interface exceeds this value.  A value of zero means
            that there is no warning threshold."                       t"The number of groups for which DC-PIM TIB Manager is
            storing (*,G,I) state specific to this interface."                       �"The maximum number of {source, group} pairs for which
            DC-PIM TIB Manager is allowed to store (S,G,I) state
            specific to this interface.  A value of zero means that
            there is no limit."                      "DC-PIM TIB Manager logs an exception if the number of
            {source, group} pairs for which it is storing (S,G,I) state
            specific to this interface exceeds this value.  A value of
            zero means that there is no warning threshold."                       �"The number of {source, group} pairs for which DC-PIM TIB
            Manager is storing (S,G,I) state specific to this
            interface."                      "When neighbor filtering is enabled, the local router
            will process link-local multicast PIM messages received on
            this interface only if the originator's IP address (that is,
            the source address in the IP header) is included in the
            standard access list corresponding to the list name
            configured for this object.

            Note that this filter does not apply to unicast PIM
            messages, even if the originator is directly connected to
            the local router.  So, for example, this filter has no
            effect on the processing of received Register messages.

            In other words, the standard access list is a whitelist, and
            the local router will treat any router excluded from the
            list as not being a valid PIM neighbor.

            To filter out all PIM neighbors, either configure this
            object to be the list name of an 'exclude all' standard
            access list, or use the rlPimInterfaceStubInterface object."                      r"The frequency at which this router sends PIM Assert
            messages on this interface when it is the assert winner.
            This object corresponds to the 'Assert_Time' minus the
            'Assert_Override_Interval' defined in the PIM-SM
            specification [I-D.ietf-rlPim-sm-v2-new].  This must be less
            than rlPimInterfaceAssertHoldtime."                      �"The interval before this router leaves assert loser state
            on this interface, unless it receives a PIM Assert message
            that refreshes this state.  This object corresponds to the
            'Assert_Time' timer value defined in the PIM-SM
            specification [I-D.ietf-rlPim-sm-v2-new].

            Note that configuring different values for this object for
            different routers on the same interface might lead to
            incorrect protocol operation."                       "When ASM group filtering is enabled, then for groups in the
            ASM space the local router will:

            -  process PIM (*,G) Join and (S,G) Join messages received on
            this interface only if the group address is included in the
            standard access list corresponding to the list index value
            configured for this object

            -  only send PIM (*,G) Join and (S,G) Join messages over this
            interface if the group address is included in the standard
            access list corresponding to the list index value configured
            for this object.

            Local membership requests from the MGMD Router component are
            not filtered.  These should be filtered by the MGMD Router
            component.

            In other words, the standard access list is a whitelist of the
            ASM groups for which DC-PIM is permitted to request or receive
            traffic over the interface.

            rlPimInterfaceAsmGrpFilter defaults to an empty string, which indicates
            that no access list is specified.  If the name does not correspond
            to a valid access list, no group addresses will match the list
            and therefore all PIM (*,G) Join and PIM (S,G) Join messages
            will be filtered."                      z"When SSM source and group filtering is enabled, then for groups in
            the SSM space the local router will

            -  process PIM (S,G) Join messages received on this interface
            only if the {source, group} pair is included in the extended
            access list corresponding to the list index value configured
            for this object

            -  only send PIM (S,G) Join messages over this interface if
            the {source, group} pair is included in the extended access
            list corresponding to the list index value configured for this
            object.

            In other words, the extended access list is a whitelist of the
            SSM {source, group} pairs for which DC-PIM is permitted to
            request or receive traffic over the interface.

            rlPimInterfaceSsmSrcAndGrpFilter defaults to an empty string,
            which indicates that no access list is specified.  If the name does not
            correspond to a valid access list, no {source, group} pairs
            will match the list and therefore all PIM (S,G) Join messages
            will be filtered."                      7"This table lists the statistics for {interface, IP version}
            pairs for which PIM is enabled.

            Note that any messages filtered out by
            rlPimInterfaceNeighborFilter do not contribute to any
            statistics in this table except for
            rlPimIfStatsNumFilteredOut."                       5"An entry (conceptual row) in the rlPimIfStatsTable."                       V"The number of PIM Hello messages that have been sent out
            this interface."                       ["The number of PIM Join/Prune messages that have been sent
            out this interface."                       W"The number of PIM Assert messages that have been sent out
            this interface."                       �"The number of PIM Bootstrap Router messages that have
            been sent out this interface.  DC-PIM always multicasts
            this type of message."                       t"The number of PIM Hello messages that have been received on
            this interface that have contained errors."                      �"The number of PIM Join/Prune, Assert and multicast Bootstrap
            Router messages that have been received on this interface from
            a neighbor from which we had not previously received a valid
            PIM Hello message (and for which rlPimInterfaceP2PNoHellos was
            'false').

            Bootstrap Router messages which are sent to a unicast address
            are not included in this count."                       l"The number of unknown options that have been received in
            PIM Hello messages on this interface."                       }"The number of link-local multicast PIM messages filtered
            out by rlPimInterfaceNeighborFilter on this interface."                       W"This table is used to create and manage DC-PIM Neighbor
            Manager entities."                       V"Each entry represents an instance of the DC-PIM Neighbor
            Manager entity."                       v"The index of this rlPimNmEntEntry.  This is the HAF entity
            index passed on the entity create parameters."                       U"Used to create and delete a DC-PIM Neighbor Manager Entity
            Table entry."                       U"The desired administrative state of the DC-PIM Neighbor
            Manager entity."                       R"The current operational state of the DC-PIM Neighbor
            Manager entity."                       �"The HAF entity index value of the DC-PIM TIB Manager to
            join to.

            Once set, the value of this object cannot be changed."                      ("The current operational state of the I3 join.
            rlPimNmEntOperStatus cannot transition to 'operStatusUp'
            unless this object has a value of 'operStatusUp', and cannot
            transition to 'operStatusDown' unless this object has a
            value of 'operStatusDown'."                      )"The current operational state of the NMI join.
            rlPimNmEntOperStatus cannot transition to 'operStatusUp'
            unless this object has a value of 'operStatusUp', and cannot
            transition to 'operStatusDown' unless this object has a
            value of 'operStatusDown'."                      )"The current operational state of the SCK join.
            rlPimNmEntOperStatus cannot transition to 'operStatusUp'
            unless this object has a value of 'operStatusUp', and cannot
            transition to 'operStatusDown' unless this object has a
            value of 'operStatusDown'."                      �"Set this object to 'true' to cause DC-PIM Neighbor Manager
            to reset all its statistics counters (that is, all objects
            with syntax PimStatsCounter that are either in the
            rlPimNmEntStatsTable, or in a row of the rlPimIfStatsTable or
            rlPimNbrStatsTable for an interface for which
            rlPimInterfaceNmEntIndex equals rlPimNmEntIndex).

            Reading the value of this object has no meaning."                      D"The time since the statistics counters were last reset,
            either by establishing the NMI join (caused by activating
            DC-PIM TIB Manager or DC-PIM Neighbor Manager, or by
            recovery after NMI join failure/fail-over) or by setting the
            rlPimNmEntClearStatsCounters object to 'true'."                      �"Set this object to 'true' to enable DC-PIM Neighbor
             Manager to send and receive unicast PIM messages.

             This object must only be set to 'false' if the local
             router will never be an RP for any multicast group, and
             will never be the DR for any connected source that sends
             data to any ASM group.  Note that this will always be the
             case if the local router will perform only the SSM subset
             of PIM-SM."                      "Set this object to 'true' to enable DC-PIM Neighbor Manager
            to accept PIM Bootstrap Messages (BSMs) which are sent
            to DC-PIM as unicast messages.  Setting the object to 'false'
            means that DC-PIM Neighbor Manager ignores received unicast BSMs.

            The setting of this object has no effect on the ability of
            DC-PIM to accept BSMs which are multicast.

            DC-PIM only ever multicasts BSMs; it never sends them as unicast
            messages.

            This object can only be set to 'true' if the
            rlPimNmEntEnableUnicastMessages object is also set to 'true'."                      @"Set this object to zero to disable Candidate-RP
            Advertisement filtering.  This means that the local router
            will process a Candidate-RP Advertisement message from any
            source IP address.

            Set this object to a non-zero value to enable Candidate-RP
            Advertisement filtering.  The value gives the standard access
            list index used to filter received Candidate-RP Advertisement
            messages.  The local router will process a received
            Candidate-RP Advertisement message only if its source IP address
            is included in the specified standard access list.

            In other words, the standard access list is a whitelist of
            the unicast sources from which DC-PIM is permitted to accept
            Candidate-RP advertisements."                      "This table lists the statistics for DC-PIM Neighbor Manager
            entities.

            Note that any messages filtered out by
            rlPimInterfaceNeighborFilter do not contribute to any
            statistics in this table.

            Note that in the case of critical parsing errors, only the
            first error encountered will be counted.  The checks are
            made in the following order.

            -  Length.
            -  Checksum.
            -  Message type.
            -  Version."                       X"Each entry represents the statistics for a DC-PIM Neighbor
            Manager entity."                       "The number of PIM Candidate-RP-Advertisement messages that have
            been sent by this DC-PIM Neighbor Manager entity."                      �"The number of PIM Register messages that have been sent by
            this DC-PIM Neighbor Manager entity.

            Note that this only includes PIM Register messages forwarded
            to other members of Anycast-RP sets, and Null-Register
            messages.  It does not include Register-encapsulated data
            packets sent from the DR to the RP; these are sent by the
            data plane."                       r"The number of PIM Register-Stop messages that have been
            sent by this DC-PIM Neighbor Manager entity."                       �"The number of valid PIM Candidate-RP-Advertisement messages that
            have been received by this DC-PIM Neighbor Manager entity."                       w"The number of valid PIM Register messages that have been
            received by this DC-PIM Neighbor Manager entity."                       |"The number of valid PIM Register-Stop messages that have
            been received by this DC-PIM Neighbor Manager entity."                       �"The number of PIM Candidate-RP-Advertisement messages that have
            been received by this DC-PIM Neighbor Manager entity that have
            contained errors."                       �"The number of PIM Register messages that have been received
            by this DC-PIM Neighbor Manager entity that have contained
            errors."                       �"The number of PIM Register-Stop messages that have been
            received by this DC-PIM Neighbor Manager entity that have
            contained errors."                       �"The number of PIM messages with a known but unsupported PIM
            message type that have been received by this DC-PIM Neighbor
            Manager entity."                       �"The number of PIM messages with an unknown PIM message type
            that have been received by this DC-PIM Neighbor Manager
            entity."                       �"The number of PIM messages with an unknown PIM version that
            have been received by this DC-PIM Neighbor Manager entity."                       �"The number of PIM messages with a incorrect PIM checksum
            that have been received by this DC-PIM Neighbor Manager
            entity."                       �"The number of PIM messages with a length too short to
            contain a common PIM header that have been received by this
            DC-PIM Neighbor Manager entity."                       }"The number of C-RP-Advertisement messages which have been
             filtered out by this DC-PIM Neighbor Manager entity."                      �"This table lists the statistics for PIM neighbors.

            Note that if a neighbor's Liveness Timer expires (including
            on receipt of a PIM Hello message with a zero Holdtime),
            this event resets all of the statistics in this table.
            However, if a neighbor's Generation ID value changes, none
            of the statistics in this table are affected."                       6"An entry (conceptual row) in the rlPimNbrStatsTable."                       `"The number of valid PIM Hello messages that have been
            received from this neighbor."                       e"The number of valid PIM Join/Prune messages that have been
            received from this neighbor."                       a"The number of valid PIM Assert messages that have been
            received from this neighbor."                       d"The number of valid PIM Bootstrap messages that have been
            received from this neighbor."                      R"The number of PIM Join/Prune messages that have been
            received from this neighbor that have contained errors.
            Note that this does not include messages for which the RP in
            the message differs from the RP known by the local router,
            nor does it include (*,G) messages received for SSM groups."                       v"The number of PIM Assert messages that have been received
            from this neighbor that have contained errors."                       y"The number of PIM Bootstrap messages that have been received
            from this neighbor that have contained errors."                       R"This table is used to create and manage DC-PIM TIB Manager
            entities."                       Q"Each entry represents an instance of the DC-PIM TIB Manager
            entity."                       v"The index of this rlPimTmEntEntry.  This is the HAF entity
            index passed on the entity create parameters."                       P"Used to create and delete a DC-PIM TIB Manager Entity Table
            entry."                       P"The desired administrative state of the DC-PIM TIB Manager
            entity."                       M"The current operational state of the DC-PIM TIB Manager
            entity."                       �"The maximum number of groups for which DC-PIM TIB Manager
            is allowed to store non-interface specific (*,G) and/or
            (S,G) state.  A value of zero means that there is no limit."                       �"DC-PIM TIB Manager logs an exception if the number of
            groups for which it is storing non-interface specific (*,G)
            and/or (S,G) state exceeds this value.  A value of zero
            means that there is no warning threshold."                       {"The number of groups for which DC-PIM TIB Manager is
            storing non-interface specific (*,G) and/or (S,G) state."                       �"The maximum number of {source, group} pairs for which
            DC-PIM TIB Manager is allowed to store non-interface
            specific (S,G) state.  A value of zero means that there is
            no limit."                       �"DC-PIM TIB Manager logs an exception if the number of
            {source, group} pairs for which it is storing non-interface
            specific (S,G) state exceeds this value.  A value of zero
            means that there is no warning threshold."                       }"The number of {source, group} pairs for which DC-PIM TIB
            Manager is storing non-interface specific (S,G) state."                       �"The maximum number of {group, interface} pairs for which
            DC-PIM TIB Manager is allowed to store (*,G,I) state.  A
            value of zero means that there is no limit."                       �"DC-PIM TIB Manager logs an exception if the number of
            {group, interface} pairs for which it is storing (*,G,I)
            state exceeds this value.  A value of zero means that there
            is no warning threshold."                       k"The number of {group, interface} pairs for which DC-PIM TIB
            Manager is storing (*,G,I) state."                       �"The maximum number of {source, group, interface} triplets
            for which DC-PIM TIB Manager is allowed to store (S,G,I)
            state.  A value of zero means that there is no limit."                       �"DC-PIM TIB Manager logs an exception if the number of
            {source, group, interface} triplets for which it is storing
            (S,G,I) state exceeds this value.  A value of zero means
            that there is no warning threshold."                       v"The number of {source, group, interface} triplets for which
            DC-PIM TIB Manager is storing (S,G,I) state."                      �"When ASM group filtering is enabled, then for groups in the
            ASM space, the local router will:

            -  process received PIM (*,G) Join and (S,G) Join messages
               only if the group address is included in the standard
               access list corresponding to the list index value
               configured for this object, and

            -  accept (*,G) and (S,G) local membership requests from the
               MGMD Router component only if the group address is
               included in the standard access list corresponding to the
               list index value configured for this object.

            In other words, the standard access list is a whitelist of
            the ASM groups for which DC-PIM is permitted to request
            traffic.

            Note that DC-PIM will never Register-encapsulate multicast
            data packets for groups that are blocked by this filter.
            See rlPimTmEntRegSrcAndGrpFilter for additional Register
            message filtering options.

            rlPimTmEntAsmGrpFilter defaults to an empty string,
            which indicates that no access list is specified."                      �"When SSM source and group filtering is enabled, then for
            groups in the SSM space, the local router will:

            -  process received PIM (S,G) Join messages only if the
               {source, group} pair is included in the extended access
               list corresponding to the list index value configured for
               this object, and

            -  accept (S,G) local membership requests from the MGMD
               Router component only if the {source, group} pair is
               included in the extended access list corresponding to the
               list index value configured for this object.

            In other words, the extended access list is a whitelist of
            the SSM {source, group} pairs for which DC-PIM is
            permitted to request traffic.

            rlPimTmEntSsmSrcAndGrpFilter defaults to an empty string,
            which indicates that no access list is specified."                      t"When Register message filtering by source and group address
            is enabled then:

            -  for groups for which the local router is the RP, it
               will process received PIM Register messages as normal
               only if the {source, group} pair of the encapsulated
               multicast data packet is included in the extended
               access list corresponding to the list index value
               configured for this object; if the {source, group} pair
               is excluded from the extended access list, the local
               router will send a Register-Stop message, and

            -  on interfaces on which the local router is the DR, it
               will encapsulate received multicast data packets and
               forward them in PIM Register messages only if the
               {source, group} pair of the multicast data packet is
               included in the extended access list corresponding to
               the list index value configured for this object.

            In other words, the extended access list is a whitelist of
            the {source, group} pairs for which the local router is
            permitted to Register-encapsulate/decapsulate multicast
            data packets.

            rlPimTmEntRegSrcAndGrpFilter defaults to an empty string,
            which indicates that no access list is specified."                      �"The mean value of the randomized interval during which a DR
            stops Register-encapsulation after receiving a PIM
            Register-Stop message.  This object corresponds to the
            'Register_Suppression_Time' defined in the PIM-SM
            specification [I-D.ietf-dcPim-sm-v2-new].

            Note that configuring different values for this object for
            different routers in the PIM domain might lead to incorrect
            protocol operation."                      3"The time to wait for a PIM Register-Stop message after
            sending a PIM Null-Register message, before resuming
            Register-encapsulation at a DR.  This object corresponds to
            the 'Register_Probe_Time' defined in the PIM-SM
            specification [I-D.ietf-dcPim-sm-v2-new]."                      H"The time keep (S,G) state alive in the absence of PIM (S,G)
            Join messages, (S,G) local membership or (S,G) data packets.
            This object corresponds to the 'Keepalive_Period' defined in
            the PIM-SM specification [I-D.ietf-dcPim-sm-v2-new].

            Note that this value must also be configured in the MPF
            stub, as the duration of its Data Flow Liveness timer.

            Note that configuring different values for this object for
            different routers in the PIM domain might lead to incorrect
            protocol operation."                       �"Setting this object to 'true' means that DC-PIM TIB
             Manager will send a rlPimInterfaceStateChange trap when an
             interface's operational state changes."                      �"This field indicates the address family type that this
             entity supports.  On routers which support multiple
             address families, separate DC-PIM-TM and DC-PIM-NM
             entities must be configured for each family.

             This configuration can only be updated when the row status
             of the TM entity is NotInService or the admin status is
             Down."                       G"The enabled status of Embedded-RP function for PIM-SM on this system."                                              