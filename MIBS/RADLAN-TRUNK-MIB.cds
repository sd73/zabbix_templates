                                               H"The private MIB module definition for trunk support in Radlan devices." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "200612020000Z" "Initial version of this MIB."               *"MIB's version, the current version is 1."                      "An entry of this table specifies a balancing criterion used
         for the corresponding dot3adAggIndex.

         A criterion configured in this table is used to distribute
         the traffic both over Link Aggregation Group members and
         multiple ECMP paths."                       0"A list of information for each dot3adAggIndex."                       )"A Forwarding type: Bridging or Routing."                       �"A Network Layer Number, may have the following values: 2, 3 or 4.
         The default value is:
           Bridging: 2
           Routing:  3."                       �"Specifies the Network Layer addresses used for Balancing of
         unicast frames.
         The function sets the criterion (by layer and used address in it)."                      a"Specifies a balancing criterion used for L2 broadcast and unknown
         frames:
            common:
                a link allocated for broadcast and unknown frames is used
                for unicast frames too
            dedicated:
                a link allocated for broadcast and unknown frames is not used
                for unicast frames"                       /"The number of trunks supported by the device."                       )"The maximun number of ports in a trunk."                      J"Specifies if there is support to rldot3adAggCreationTable,
         and the type of the support:
         supportedTrunkOrLacp - ports that are members in some trunk
         are belongs to it by manual configuration or by lacp,
         but not togther.
         notSupported - there is not support to rldot3adAggCreationTable."                       �"An entry of this table is for creation of an aggregator
         for the corresponding dot3adAggIndex, when the value of the
         rlDot3adAggCreationSupport is diffrent from notSupported."                       )"An information for each dot3adAggIndex."                       ="The aggregator can aggregate ports in manual configuration."                       -"The aggregator can aggregate ports by lacp."                       J"Specifies if load balancing is defined per trunk
         or per device."                       x"An entry of this table specifies lacp protocol state and
         statistics for the corresponding dot3adAggPortIndex."                       4"A list of information for each dot3adAggPortIndex."                       b"The number of valid LACPDUs received on this
         Aggregation Port. This value is read-only."                       _"The number of LACPDUs transmitted on this
         Aggregation Port. This value is read-only."                      F"This attribute holds the value 'current' if the Receive
         state machine for the Aggregation Port is in the
         CURRENT state, 'expired' if the Receive state machine
         is in the EXPIRED state, 'defaulted' if the Receive state
         machine is in the DEFAULTED state, 'initialize' if the
         Receive state machine is in the INITIALIZE state,
         'portDisabled' if the Receive state machine is in the
         PORT_DISABLED state, or 'lacpDisabled' if the Receive state
         machine is in the LACP_DISABLED state.
         This value is read-only."                      �"This attribute holds the value 'detached' if the Mux
         state machine for the Aggregation Port is
         in the DETACHED state, 'waiting' if the Mux state machine
         is in the WAITING state, 'attached' if the Mux state
         machine for the Aggregation Port is in the ATTACHED
         state, 'collecting' if the Mux state machine for the
         Aggregation Port is in the COLLECTING state, 'distributing'
         if the Mux state machine for the Aggregation Port is
         in the DISTRIBUTING state, and 'collecting_ distributing'
         if the Mux state machine for the Aggregation Port is in
         the COLLECTING_DISTRIBUTING state.
         This value is read-only."                      �"This attribute holds the value 'noPeriodic' if the Periodic
         state machine for the Aggregation Port is
         in the NO_PERIODIC state, 'fastPeriodic' if the Mux state machine
         is in the FAST_PERIODIC state, 'slowPeriodic' if the Mux state
         machine for the Aggregation Port is in the SLOW_PERIODIC
         state, or 'periodicTx' if the Periodic state machine
         for the Aggregation Port is in the PERIODIC_TX state.
         This value is read-only."                      ^"This attribute holds the value 'unselected' if the Selected variable
         for the Aggregation Port is set to UNSELECTED, 'selected' if the
         Selected variable for the Aggregation Port is set to SELECTED,
         or 'waiting' if the Selected variable for the Aggregation Port
         is set to WAITING.
         This value is read-only."                       �"A read-only Boolean value indicating whether the
         Aggregation Port is in the WAITING state in the Mux state machine
         and its wait_while_timer has expired ('TRUE').
         otherwise, its valus is 'FALSE'."                       �"A read-only Boolean value indicating whether the
         Partner_Oper_System or Partner_Oper_Port_Number in use by the
         Aggregation Port has been changed in an incoming LACPDU ('TRUE').
         otherwise, its valus is 'FALSE'."                       �"A read-only Boolean value indicating whether there is a new protocol
         information that should be transmitted on the link, or that the Partner
         needs to be reminded of the old information.
         otherwise, its valus is 'FALSE'."                       "The amount of time in seconds remaining before the Periodeic Tx timer
         will expire.
         This value is read-only."                       �"The amount of time in seconds remaining before the Current While timer
         will expire.
         This value is read-only."                       }"The amount of time in seconds remaining before the Wait While timer
         will expire.
         This value is read-only."                       W"Specifies if there is support to
         rlDot3adAggLacpMembershipRestrictionsTable."                       �"An entry of this table specifies membership restrictions
         for ports that lacp is enbaled on them, and try to attach to
         the corresponding dot3adAggIndex."                       0"A list of information for each dot3adAggIndex."                       �"This variable specifies the administrative key
         of the remote LACP aggregator.
         A value of 0 is returned if the value of the variable
         hasn't been set."                       �"This variable specifies the required speed of the LACP aggregator
         in bits per second.
         A value of 10 is returned for 10G.
         A value of 0 is returned if the value of the variable
         hasn't been set."                       �"This variable specifies the administrative MAC Address
         of the remote LACP aggregator.
         A null mac address is returned if the value of the variable
         hasn't been set."                       �"This variable specifies the administrative System Priority
         of the remote LACP aggregator.
         A value of 0 is returned if the value of the variable
         hasn't been set."                       {"This variable specifies if the lacp aggregator represents an
         Aggregate ('FALSE') or an Individual link ('TRUE')."                       A"indicates the system priority value of ports and trunk in LACP."                                  