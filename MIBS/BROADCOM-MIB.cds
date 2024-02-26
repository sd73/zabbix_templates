     %"Specifies type of rate-limit policy"               4"Specifies one of 3 services the device can support"                                                                             *"MIB's version, the current version is 1."                           *"MIB's version, the current version is 1."                       v"Specifies reserved bandwidth in a percents of a port's one
                 for rules with the Best Effort profile."                       )"Enables or disables the policy feature "                       %"The table defines all the profiles."                       "The entry define one profile."                       ""This enumerates the table entry."                       ?"Informational text given by the user to describe the profile."                       "Specifies a profile type."                       �"The rate in kilobytes/second for the specified profile,
             or in the case of minDelay per session profile type the rate will
             indicate the rate per individual session"           --        UNITS   "kbps"
           �"The burst size parameter.  A value of 0 means that
             the device should choose the Burst Size
             that is most suitable for the profile."           --        UNITS   "bytes"
           U"Indicates whether the TOS or DSCP should be remarked with
             a new value"                       y"Indicates the new value for the TOS or DSCP. Relevant only if
            rlPolicySimpleBcmMibChangeTosOrDscp is true."                       ["The status of a table entry.
             It is used to delete an entry from this table."                      
"This table contains the policy rules defined by the user. The order
        of the entries in the table is important, since the first rule that
        applies to the incoming packet will be acted upon, ignoring any
        further rules that may apply as well."                       %"This entry defines one policy rule."                       �"This enumerates the table. The user should assign indices in such a
        way that there will be a gap big enough between one rule and the next
        to allow insertion of additional rules in between (a gap of 1000 is
        recommended). "                       <"Informational text given by the user to describe the rule."                       !"Indicate the Dst mac to compare"                       $"Indicate the source mac to compare"                       +"Indicate the Vlan priority tag to compare"                        "Indicate the vlanId to compare"                       X"Indicate the Ethernet type of the packet. 0 means that this field
        is not used"                       &"Indicates the tos or dscp to compare"                       #"Indicates the protocol to compare"                       "Indicate the srcIp to compare"                       �"Indicates the number of most significant bits of the Ip Address
        that are used in specifying IP source addresses in classifiers."                       "Indicate the DstIp to compare"                       �"Indicates the number of most significant bits of the Ip Address
        that are used in specifying IP destination addresses in classifiers."                       ""Indicate the Src port to compare"                       ""Indicate the Src port to compare"                       ?"Indicates the list of input ports to which this rule applies."                       g"Indicates the list of output ports to on which bandwidth should be
         allocated for this rule."                       I"Indicates the action to be performed if there is a match with the rule."                       �"Indicates the profile attached to the rule. The
        value is the index in the profile table of the attached profile.
        Value 0 means that no profile is attached to the rule and is valid only
        in case of action block."                      �"a bit mask that indicates the the used fields for the entry:
         (the implemention is identical to BITS implementation,from MSB to LSB)
          ----------
          |87654321|
          ----------
          8 - Vpt
          7 - Vid
          6 - tosOrDscp
          5 - Protocol
          4 - SrcIp
          3 - DstIp
          2 - SrcIpPort
          1 - DstIpPort
          "                      e"The status of a table entry.
         It is used to delete an entry from this table.
         notInService is used to disable an entry.
         notReady will be assigned by the device to indicate that the rule
         can not be active because some ports in the output ports list are not
         in a state allowing bandwidth allocation guarantee."                           ]"The rate limit in packets per second for Unicast Unknown, Multicast and Broadcasts Packets."                       ."The rate limit enable for Multicast Packets."           5--    SYNTAX      INTEGER { enable(1) ,disable(2) }
           ."The rate limit enable for Broadcast Packets."                       4"The rate limit enable for Unicast Unknown Packets."                           �"Counter to get entries's index in the rlBcmQoSRateLimitTable.
         This counter is incremented each time when a new profile created."                       8"The table defines all the rate-limit and qos profiles."                       "The entry define one profile."                       "Specifies a profile's type."                       "Name of a  profile."                       j"Unique index for this profile. This index is used
             to have several profiles with same name."                       ]"This is a ACL name's list or codded IP flow
            for multiField and qosIP profiles."                       2"This is port's list or ip interafce name's list."                       A"The rate in for the rate-limit profile or priority for qos one."                       m"The burst size parameter in a bytes for rate-limit profiles
                and TOS mask for qos profiles."                       A"Indicates whether the OUT profile packets will be droped or no."                       `"Indicates the new value for the TOS of packets.
             Value > 63 means not change ToS."                       j"Indicates the new value for the TOS precedence.
            Value > 15 means not change ToS precedence."                       ["The status of a table entry.
             It is used to delete an entry from this table."                       7"The table defines ACLs which are applied to profiles."                       "The entry define one profile."                       #"Name of a ACL which defines flow."                       +"Unique index which is point to a profile."                       R"This field defines type of application -
            qos or rate-limit or both."                       ["The status of a table entry.
             It is used to delete an entry from this table."                       �"This table contains IP flows defined by the user.
         An entries of this table are used for QoS and Rate-limit
         profiles."                       %"This entry defines one policy rule."                       W"Tos byte of a flow. Value must be in range 0-255.
         Value > 256 means any tos"                       z"Mask which is applied to TOS byte of a flow.
         Value must be in range 0-255.
         Value > 256 means any tos"                       a"Protocol of a IP flow.Value must be in range 0-255.
         Value > 256 means any IP protocol"                       A"Indicate the srcIp of a flow. 0.0.0.0 means any source address."                       �"Indicates the number of most significant bits of the Ip Address
        that are used in specifying IP source addresses in classifiers."                       "Indicate the DstIp to compare"                       �"Indicates the number of most significant bits of the Ip Address
        that are used in specifying IP destination addresses in classifiers."                       n"Indicate the Src port to compare. Value must be in range 0-65535.
         Value > 65536 means any src port"                       p"Indicate the Src port to compare.  Value must be in range 0-65535.
         Value > 65536 means any src port."                       ""This is input IfIndex for flow. "                       #"This is output IfIndex for flow. "                       "This is type of flow. "                        "This is rule's index of flow. "                       Y"The status of a table's entry.
         It is used to delete an entry from this table."                      [" Each octet means precedence for IP flow fields:
          Octet 0 - src ip adr
          Octet 1 - dest ip adr
          Octet 2 - src port
          Octet 3 - dest port
          Octet 4 - tos byte
          Octet 5 - protocol
          Octet 6 - interface
          This map is used to sort Rules to accord matching rules by this map."                           4"This table hold information the over priority maps"                       $"The row definition for this table."                       "The map name"                       " value of the byte in the map"                       "The map holding the queue"                       ("the ports that the map, is applied on "                       >"The status of the  table entry. It's used to delete an entry"                           ."ACL MIB's version, the current version is 1."                       O"The variable defines maximal number of entries in
         a particular ACL."                       �"This table stores names and IDs of ACLs. This table
         is used to convert ACL name to a ACL ID. ACL ID is
         used in all other tables to identify a particular ACL.
         The ACL ID is set to ACL name automatically by SW."                       $"The row definition for this table."                       8"The ACL name. User identifies ACL by it's unique name."                       s"The ID of ACL. It is unique value for each ACL name.
         The ID is defined by SW during new entry creation."                       �"The status of the  table entry. It's used to delete an entry.
         Only two status are aceptable: CreateAndGo, Destroy. All other
         values cause error."                       %"This table defines entries in ACLs."                       $"The row definition for this table."                       q"The ID of ACL. It is unique value for each ACL name.
         The ID must accord to one in the ACL name table."                      �"Unique identification of a particular entry in
         an ACL. This index is equal to row number in the
         acl lcli commands. The value of this field starts
         from 1 up to rlBcmACLMaxNumberOfEntries.
         Each entry defines classication rule for IP packet.
         This index defines order of ACL rules resolving.
         The classification criteria of a rule with a lowest
         index compared with packets contex first. If
         matching not occured than rule with next index is
         taken for comparing. And so on up to firts match.
         The resulting actions are defined by actions of
         a first matching rule."                       3"The permissions/restrictions given to this entry."                       -"Indicate 3-bits IP header flags to compare."                       \"Indicate 3-bits mask for IP header flags to compare.
         Value 0 means Any IP flags."                       /"Indicate 13-bits IP header offset to compare."                       _"Indicate 13-bits mask for IP header offset to compare.
         Value 0 means Any IP offset."                       M"Indicate IP protocol to compare.
         Value 256 means Any ip protocol."                        "Indicate the srcIp to compare."                       �"Indicates the number of most significant bits of the Ip Address
        that are used in specifying IP source addresses in classifiers.
        Value 0.0.0.0 means Any source IP address."                        "Indicate the DstIp to compare."                       �"Indicates the number of most significant bits of the Ip Address
        that are used in specifying IP destination addresses in classifiers.
         Value 0.0.0.0 means Any destination IP address."                       P"Indicate the Src port to compare.
         Value 65536 means Any source port."                       ]"Indicate the destination port to compare.
         Value 65536 means Any destination port."                       +"Indicate 6-bits TCP code bits to compare."                       _"Indicate 6-bits mask for TCP code bits to compare.
         Value 0 means Any TCP code bits."                       �"The status of the  table entry. It's used to delete an entry.
         Only three statuses are aceptable: CreateAndGo to create,
         Active to update,Destroy to delete. All other values cause error."                       5"This table defines ports on which ACLs are applied."                       $"The row definition for this table."                       7"The ifIndex of port or trunk on which ACL is applyed."                        "The direction of ACL applying."                       "The ID of ACL."                       �"The status of the  table entry. It's used to delete an entry.
         Only three statuses are aceptable: CreateAndGo to create,
         Active to update,Destroy to delete. All other values cause error."                      