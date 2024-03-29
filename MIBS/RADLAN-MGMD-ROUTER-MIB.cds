     0"The desired administrative state of a MIB row."                                                         W"The private MIB module definition for IGMP Router
                 in Radlan devices." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "201107210000Z" $"Added this MODULE-IDENTITY clause."               |"The (conceptual) Extension Interface table listing the entries
             with counters of the standard interface table."                       ;"An entry (conceptual row) in the rlMgmdInterfaceExtTable."                       �"The time since the statistics counters for this interface
             were last reset.

             This field is reset to zero when
             rlMgmdRouterInterfaceExtEnableStats is modified to 'true'.

             This value may wrap."                      6"This object defines whether DC-IGMP returns
          interface-specific statistics on MIB GET operations
          for this interface's MIB row.
           If this object is modified from 'true' to 'false' and back to 'true',
           the statistics fields are reset. This field is readable and writeable."                       �"The number of failed joins received for this interface - that is,
            the number of times a group membership could not be added on this
            interface."                       w"The number of IGMPv1 messages received for this interface.
            This includes both valid and invalid messages."                       �"The number of IGMPv2 or Mldv1 messages received for this interface.
            This includes both valid and invalid messages."                       �"The number of IGMPv3 or Mldv2 messages received for this interface.
            This includes both valid and invalid messages."                       I"The number of Invalid IGMP or MLD messages received for this interface."                       8"The number of General Queries sent for this interface."                       9"The number of Specific Queries sent for this interface."                      "The value of Robustness in use on this interface.

            The Robustness Variable allows tuning for the expected
            packet loss on a subnet.  If a subnet is expected to be
            lossy, the Robustness Variable may be increased.  IGMP and
            MLD is robust to (Robustness Variable-1) packet losses.

            For IGMPv3/MLDv2, this may differ from the value
            configured using mgmdRouterInterfaceRobustness if the
            local router is not the querier on this interface."                      n"The value of Query Interval in use on this interface.

            The frequency at which IGMP or MLD General Query packets
            are transmitted on this interface.

            For IGMPv3/MLDv2, this may differ from the value
            configured using mgmdRouterInterfaceQueryInterval if the
            local router is not the querier on this interface."                      "The value of Maximum Query Response Time in use on this
            interface.

            For IGMPv3/MLDv2, this may differ from the value
            configured using mgmdRouterInterfaceQueryMaxResponseTime
            if the local router is not the querier on this interface."                      �"The value of Last Member Query Interval in use on this
            interface.

            The Last Member Query Interval is the Max Response Time
            inserted into Group-Specific and Group-and-Source-specific
            Queries sent in response to Leave messages, and is also
            the amount of time between successive Specific Query
            messages.  This value may be tuned to modify the leave
            latency of the network.  A reduced value results in
            reduced time to detect the loss of the last member of a
            group.

            The value of this object is irrelevant if
            mgmdRouterInterfaceVersion is 1.

            The value of this object is also irrelevant if this
            interface is configured to use immediate-leave behavior
            without a last member query - that is, if
            mgmdRouterInterfaceImmedtLeave is 'true' and
            mgmdRouterInterfaceQryBefImmdLv is 'false'.

            For IGMPv3/MLDv2, this may differ from the value
            configured using mgmdRouterInterfaceLastMembQueryIntvl if
            the local router is not the querier on this interface."                      �"The interface will ignore requests to join any
            group/source pair that is not included in the extended
            access list with a list index corresponding to the value
            configured for this object.

            If the value of this object is 0, no requests are ignored
            as a result of this object.

            This object deprecates the dcmgmdRouterInterfaceAllowSSMList
            object.  If both of these (S,G) filters are set to
            non-zero values, then both take effect for SSM groups -
            that is, a request to join an SSM group/source pair is
            only accepted if it passes through both filters.

            If both this object and the
            dcmgmdRouterInterfaceAllowASMList object are set to non-zero
            values, then a request to join an ASM group/source pair is
            only accepted if it passes through both filters."                       4"The desired administrative state of the interface."                       1"The current operational state of the interface."                       "???"                       B"Enable/Disable IGMP Proxy Downstream protected on the interface."                                                  