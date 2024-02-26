     �"RSPAN reflector port type:
                    1 - SPAN
                    2 - RSPAN - start
                    3 - RSPAN - final."               c"SPAN destination mode type:
                    1 - monitor-only
                    2 - network."               �"SPAN source type:
                    1 - port
                    2 - VLAN
                    3 - flow
                    4 - remote VLAN."               l"SPAN source direction:
                    1 - rx
                    2 - tx
                    3 - both."                                     <"This private MIB module for SPAN (Switched Port Analyzer)." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "201503250000Z" "Initial revision."               *"MIB's version, the current version is 1."                       B"The table holds information for SPAN destination per session id."                       &"Entry in the rlSpanDestinationTable."                       z"SPAN session ID. This variable is the key for SPAN destination table.
         Uniquely identifies the SPAN destination."                       C"Interface Index. This variable identifies the destination ifIndex"                       h"This variable indicates whether the current session is SPAN or RSPAN 
         start or final session."                       k"This variable indicates whether the destination port acts as network
         port or analyzer only port."                       <"This variable indicated the remote vlan id for RSPAN case."                       ]"The row status variable, used according to
       row installation and removal conventions."                       C"The table holds information for SPAN Source ports per session id."                       !"Entry in the rlSpanSourceTable."                       g"SPAN session ID. This variable is the key for SPAN source table.
         Identifies the SPAN source."                       /"This variable indicates the SPAN source type."                       �"This variable indicates the ifIndex of the SPAN source port
         or the flow Id of the class map (for flow span source type)."                       >"This variable indicates the source direction for monitoring."                       ]"The row status variable, used according to
       row installation and removal conventions."                              