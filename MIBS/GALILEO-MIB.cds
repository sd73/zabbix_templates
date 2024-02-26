     "Specifies the port type"               4"Specifies one of 4 services the device can support"               c"Specifies one of 3 types for which offset bytes can
         be specified. For Ip,bridge and Ipx"                                                                 *"MIB's version, the current version is 1."                       '"Current mode supported by the device."                       8"New mode supported by the device after the next reset."                          �"For non-quantitative flows:
          Defines the function that is used to devide the aggregate rate
          (dependent on the number of flows using the specific meterId).
          The options for this mib variables are:
            - overProvisioning is 1/n -> may cause severe exceeding from
              permitted bw.
            - minorOverProvisioning is 1/(n+1)-> may cause minor exceeding
              from permitted bw.
            - underProvisioning is 1/(2^n) -> usaully causes to be under
              the permitted bw.
          where n is the number of flows using the specific meterId, initial
          value = 1."                      �"This variable indicates the value of a new burst size, when the given
         aggregate burst size has reached the following extreme condition:
         (aggregateBurstSize/n) < 1536    (smaller than max MTU).
         The options for this mib variables are:
               - new burst = 0 bytes
               - new burst = 1536 bytes
         where n is the number of flows using the specific meterId."                      �"This mib variable is used only when the
         rlPolicyGalileoTuningExtremConditionBurstSize is 0 bytes.
         The options for this mib variables are:
            - TRUE  => out of profile Drop Precedence = High Drop Precedence.
                       This value will override the rule's out of profile
                       Drop Precedence.
            - FALSE => out of profile Drop Precedence is set according to
                       the rule's decision."                       *"The aging timeout of the CoS FFT Tables."                       ?"The polling interval for dynamic CoS FFTs support in seconds."                           D"Indecate the instance of the fcog for hash_fnc calc per group type"                       B"the entry per groupType indicate the offsets for hash_func calc."                       <"Specifies a the Group type for which Fcog bytes specified."                       ."indecate if the L2 SrcAddr defined for fcog."                       -"indecate if the L2DstAddr defined for fcog."                       *"indecate if the VlanId defined for fcog."                       *"indecate if the Inport defined for fcog."                       -"indecate if the IpxDstNet defined for fcog."                       ."indecate if the IpxDstNode defined for fcog."                       -"indecate if the IpSrcAddr defined for fcog."                       -"indecate if the IpDstAddr defined for fcog."                       ."indecate if the IpProtocol defined for fcog."                       -"indecate if the IpSrcPort defined for fcog."                       -"indecate if the IpDstPort defined for fcog."                       W"The status of a table entry.
         It is used to delete an entry from this table."                       �"This table will allow us to request variables from specific entry at the
        flowTable. only get and getNext will be supported (getNext will return alyaws
        EndOfMibTable)"                       �"all the input fileds has a default val except from the groupType, request of an entry
        should be based on the fcog definition."                       "Specifies a the Group type."                       e"Specifies a the IfIndex the packet arrived (for the calculation
         of the relevant cosTable."                       0"Indicate the L2SrcAddr for the requsted entry."                       0"Indicate the L2DstAddr for the requsted entry."                       -"Indicate the VlanId for the requsted entry."                       1"Indicate the IPX DstNet for the requsted entry."                       2"Indicate the IPX DstNode for the requsted entry."                       1"Indicate the IP SrcAddr for the requsted entry."                       1"Indicate the IP DstAddr for the requsted entry."                       2"Indicate the IP Protocol for the requsted entry."                       1"Indicate the IP SrcPort for the requsted entry."                       1"Indicate the IP DstPort for the requsted entry."                       9"Indicate if the requsted entry is valid (exist) or not."                       :"Indicate if the requsted entry is a static entry or not."                       A"Indicate if the Aging bit of the requested entry is set or not."                       ."Indicate if the CMD of the requested entry ."                       1"Indicate if the Pri/Sc of the requested entry ."                       C"Indicate if the inProfile Discardability of the requested entry ."                       ."Indicate if the Vpt of the requested entry ."                       B"Indicate if the Change Tos of the requested entry is set or not."                       1"Indicate if the New Tos of the requested entry."                       0"Indicate if the VlanId of the requested entry."                       3"Indicate if the InIfindex of the requested entry."                       <"Indicate if Meter of the requested entry is enbled or not."                       A"Indicate the outProfile Discardability of the requested entry ."                       `"Count the number of packets that forward from the Flow
        Classification Unit to the CPU"                           *"MIB's version, the current version is 1."                       �"return a bit mask that indicates the supported port type:
          ----------
          |87654321|
          ----------
          1 - BoundaryType
          2 - InteriorType
          "                       >"Setting any value will cause recalculation of all the rules."                       )"Enables or disables the policy feature "                       %"The table defines all the profiles."                       "The entry define one profile."                       ""This enumerates the table entry."                       ?"Informational text given by the user to describe the profile."                       "Specifies a profile type."                       �"The rate in kilobytes/second for the specified profile,
         or in the case of minDelay per session profile type the rate will
         indicate the rate per individual session"           --    UNITS   "kbps"
           �"The burst size parameter.  A value of 0 means that
         the device should choose the Burst Size
         that is most suitable for the profile."           --    UNITS   "bytes"
           q"Relevant only for the minDelay per session.
         Indicate the maximum number of sessions for this profile."                       0"Indicates the new VPT to assign to the packet."                       Q"Indicates whether the TOS or DSCP should be remarked with
         a new value"                       u"Indicates the new value for the TOS or DSCP. Relevant only if
        rlPolicySimpleGalMibChangeTosOrDscp is true."                       W"The status of a table entry.
         It is used to delete an entry from this table."                       g"This table defines the used fields for ip classification,
         per port type (interior/boundary)"                       5"the entry define the used fields for classification"                       @"The port type (interior/boundary) to which this entry applies."                       Z"Indicates whether the IP TOS or DSCP field will be used in
         classifiers or not."                       Z"Indicates whether the IP L4 protocol field will be used in
         classifiers or not."                       �"Indicates the number of most significant bits of the Ip Address
        that are used in specifying IP source addresses in classifiers."                       �"Indicates the number of most significant bits of the Ip Address
        that are used in specifying IP destination addresses in classifiers."                       f"Indicates whether the IP L4 protocol source port field will be used in
         classifiers or not."                       j"Indicates whether the IP L4 protocol destination port field will be
        used in classifiers or not."                       X"Indicates whether ifIndex of input ports will be used in
         classifiers or not."                      
"This table contains the policy rules defined by the user. The order
        of the entries in the table is important, since the first rule that
        applies to the incoming packet will be acted upon, ignoring any
        further rules that may apply as well."                       %"This entry defines one policy rule."                       ?"The port type (interior/boundary) to which this rule applies."                       �"This enumerates the table. The user should assign indices in such a
        way that there will be a gap big enough between one rule and the next
        to allow insertion of additional rules in between (a gap of 1000 is
        recommended). "                       <"Informational text given by the user to describe the rule."                       ,"Indicates the TOS or DSCP to compare with."                       ,"Indicates the L4 protocol to compare with."                       2"Indicates the source IP address to compare with."                       �"Indicates the number of most significant bits of the Ip Address
        that are used in specifying IP source addresses in classifiers."                       7"Indicates the destination IP address to compare with."                       �"Indicates the number of most significant bits of the Ip Address
        that are used in specifying IP destination addresses in classifiers."                       /"Indicates the source L4 port to compare with."                       4"Indicates the destination L4 port to compare with."                       ?"Indicates the list of input ports to which this rule applies."                       {"Indicate the relation that should hold for each relevant field of
         the rule in comparison to the packet's field."                       I"Indicates the action to be performed if there is a match with the rule."                       �"Indicates the profile attached to the rule. The
        value is the index in the profile table of the attached profile.
        Value 0 means that no profile is attached to the rule and is valid only
        in case of action block."                       g"Indicates the list of output ports to on which bandwidth should be
         allocated for this rule."                      j"a bit mask that indicates the the used fields for the entry:
         (the implemention is identical to BITS implementation,from MSB to LSB)
          ----------
          |87654321|
          ----------
          8 - tosOrDscp
          7 - Protocol
          6 - SrcIp
          5 - DstIp
          4 - SrcIpPort
          3 - DstIpPort
          "                       �"A description error indicate the user about the specific error.
        The error can cause by one of the following reasons:
        1. if the profile was asign to the rule could not be perform
        2. if the operation of QoS portLock failed"                      e"The status of a table entry.
         It is used to delete an entry from this table.
         notInService is used to disable an entry.
         notReady will be assigned by the device to indicate that the rule
         can not be active because some ports in the output ports list are not
         in a state allowing bandwidth allocation guarantee."                       ;"This table defines the used fields for ipx classification"                       6"the entry defines the used fields for classification"                       ("the table index - only one entry exist"                       6"Indicates the parts of the field in use in the rules"                       6"Indicates the parts of the field in use in the rules"                       4"Indicates whether the field is in use in the rules"                       6"Indicates the parts of the field in use in the rules"                       6"Indicates the parts of the field in use in the rules"                       4"Indicates whether the field is in use in the rules"                       4"Indicates whether the field is in use in the rules"                      "This table contains the policy rules defined by the user. The order
        of the entries in the table is important, since the first rule that
        matches the incoming packet will be acted upon, ignoring any
        further rules that may match as well."                       %"This entry defines one policy rule."                       �"This enumerates the table. The user should assign indices in such a
        way that there will be a gap big enough between one rule and the next
        to allow insertion of additional rules in between (a gap of 1000 is
        recommended). "                       <"Informational text given by the user to describe the rule."                       '"Indicate the ipxDst Net to compare to"                       '"Indicate the ipxDstNode to compare to"                       *"Indicate the ipx DstSocket to compare to"                       '"Indicate the ipxSrc Net to compare to"                       '"Indicate the ipxSrcNode to compare to"                       *"Indicate the ipx SrcSocket to compare to"                       ?"Indicates the list of input ports to which this rule applies."                       u"Indicate the relation that should hold for each relevant field of
         the rule in comparison to the packet's."                       ;"Indicates the action to be performed if the rule matches."                       �"Indicates the profile attached to the rule. The
        value is the index in the profile table of the attached profile.
        Value 0 means that no profile is attached to the rule and is valid only
        in case of action block."                       d"Indicates the list of output ports on which bandwidth should be
         allocated for this rule."                      e"The status of a table entry.
         It is used to delete an entry from this table.
         notInService is used to disable an entry.
         notReady will be assigned by the device to indicate that the rule
         can not be active because some ports in the output ports list are not
         in a state allowing bandwidth allocation guarantee."                       ="The table defines the used fields for Bridge classification"                       6"the entry defines the used fields for classification"                       ("the table index - only one entry exist"                       ,"Indicate the use of the field in the rules"                       ,"Indicate the use of the field in the rules"                       3"Indicate whether the field is in use in the rules"                       3"Indicate whether the field is in use in the rules"                       3"Indicate whether the field is in use in the rules"                       3"Indicate whether the field is in use in the rules"                       3"Indicate whether the field is in use in the rules"                       B"Indicate the number of used bits of the Ip Address from the left"                       B"Indicate the number of used bits of the Ip Address from the left"                       3"Indicate whether the field is in use in the rules"                       3"Indicate whether the field is in use in the rules"                      
"This table contains the policy rules defined by the user. The order
        of the entries in the table is important, since the first rule that
        applies to the incoming packet will be acted upon, ignoring any
        further rules that may apply as well."                       %"This entry defines one policy rule."                       �"This enumerates the table. The user should assign indices in such a
        way that there will be a gap big enough between one rule and the next
        to allow insertion of additional rules in between (a gap of 1000 is
        recommended). "                       <"Informational text given by the user to describe the rule."                       !"Indicate the Dst mac to compare"                       $"Indicate the source mac to compare"                        "Indicate the vlanId to compare"                       ?"Indicates the list of input ports to which this rule applies."                       *"Indicate the Ethernet type of the packet"                       &"Indicates the tos or dscp to compare"                       #"Indicates the protocol to compare"                       "Indicate the srcIp to compare"                       "Indicate the DstIp to compare"                       ""Indicate the Src port to compare"                       ""Indicate the Src port to compare"                       {"Indicate the relation that should hold for each relevant field of
         the rule in comparison to the packet's field."                       I"Indicates the action to be performed if there is a match with the rule."                       �"Indicates the profile attached to the rule. The
        value is the index in the profile table of the attached profile.
        Value 0 means that no profile is attached to the rule and is valid only
        in case of action block."                       g"Indicates the list of output ports to on which bandwidth should be
         allocated for this rule."                      e"The status of a table entry.
         It is used to delete an entry from this table.
         notInService is used to disable an entry.
         notReady will be assigned by the device to indicate that the rule
         can not be active because some ports in the output ports list are not
         in a state allowing bandwidth allocation guarantee."                       *"The table defines all of the ports types"                        "An entry defines a port's type"                       ""This enumerates the table entry."                       "Defines the port type"                       �"Indicates whether the QoS is for:
         -All Bridged packets; or
         -All routed IP packets.
         The value cannot change after system init"                                  