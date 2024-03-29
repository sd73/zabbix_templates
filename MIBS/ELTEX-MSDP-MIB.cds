     "SA filter action"               "SA filter direction"                                                                                             5"The MIB module for management of the MSDP protocol." "www.eltex.nsk.ru"        -- Mon Oct 25 00:00:00 GMT 2018
               O"The lifetime given to SA cache entries when created or
            refreshed." "RFC 3618 section 5.3"                     T"The Rendezvous Point (RP) address used when sourcing
            MSDP SA messages."                       c"Time interval, in seconds, for the [HoldTime-Period]
            configured for this MSDP speaker" "RFC 3618 section 5.4"                     e"Time interval, in seconds, for the [KeepAlive-Period]
            configured for this MSDP speaker." "RFC 3618 section 5.5"                     4"The local IP address used for MSDP TCP connection."                       �"By setting the scalar to remote MSDP peer address, all counters
            of this peer are set to zero.
            To clear the counters for ALL peer set the scalar to 0.0.0.0"                       -"The table listing the MSDP speaker's peers."                       %"An entry representing an MSDP peer."                       &"The address of the remote MSDP peer."                       6"The state of the MSDP TCP connection with this peer."                       _"The number of SA messages received from this peer that
            failed the Peer-RPF check."                       M"The number of MSDP SA messages received on this
            TCP connection."                       P"The number of MSDP SA messages transmitted on this
            TCP connection."                       U"The number of MSDP SA-Request messages received on this
            TCP connection."                       X"The number of MSDP SA-Request messages transmitted on
            this TCP connection."                       V"The number of MSDP SA-Response messages received on this
            TCP connection."                       Y"The number of MSDP SA Response messages transmitted on
            this TCP connection."                       Q"The total number of MSDP messages received on this 
            TCP connection."                       T"The total number of MSDP messages transmitted on this 
            TCP connection."                       �"The sysUpTime value when a peer transitions into or out of 
            the ESTABLISHED state. It is set to zero when the 
            MSDP speaker is booted." "RFC 3618 section 11"                     �"The sysUpTime value when the last MSDP message was
            received from the peer. It is set to zero when the MSDP
            speaker is booted."                       M"The local IP address used for this entry's MSDP TCP
            connection."                       "RowStatus of this entry."                       a"The number of times the state machine has transitioned
            from INACTIVE to CONNECTING."                       M"The local IP address used for this entry's MSDP TCP
            connection."                       0"An optional text that describes the MSDP peer."                       �"This timestamp is set to the value of sysUpTime when a
            peer transitions into new state. It is set to zero 
            when the MSDP speaker is booted."                       S"The number of entries in the SA Cache table 
            received from this peer."                       X"The table listing the MSDP SA advertisements 
            in the MSDP speaker's cache."                       1"An entry representing an MSDP SA advertisement."                       *"The group address of the SA Cache entry."                       +"The source address of the SA Cache entry."                       "The RP of the SA Cache entry."                       H"The peer from which this SA Cache entry was last
            accepted."                       I"The time since this entry was first placed in the SA
            cache."                       2"The table listing MSDP Mesh Group configuration."                       5"An entry representing a peer in an MSDP Mesh Group."                       "The name of the mesh group."                       a"A peer address that is a member of the mesh group with
            name eltexMsdpMeshGroupName."                       "RowStatus of this entry."                       4"The table listing MSDP SA Filtering configuration."                       $"An entry representing a SA filter."                       &"The address of the remote MSDP peer."                       %"The direction of rule in SA filter."                       !"The index of rule in SA filter."                       $"The action of the SA Filter entry."                       +"The group address of the SA Filter entry."                       "Group address prefix."                       ,"The source address of the SA Filter entry."                       "Source address prefix."                        "The RP of the SA Filter entry."                       "RP address prefix."                       "RowStatus of this entry."                          