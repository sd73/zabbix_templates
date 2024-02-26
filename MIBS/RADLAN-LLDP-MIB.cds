     ""               �"Policy Number in the Media Policy Container.

            Policy numbers should be in the range of 1 and 32768 since 8 policies
            can be configured for each particular port and the number of ports range is
            1 to 4096."              �"The media type that defines the primary function of the
             application for the policy advertised by an endpoint.

             A value of voice(1) indicates that the media type defining
             a primary function of the application for the policy advertised on
             the local port is voice.

             A value of voiceSignaling(3) indicates that the media type
             defining a primary function of the application for the policy
             advertised on the local port is voice signaling.

             A value of guestVoice(4) indicates that the media type
             Defining a primary function of the application for the policy
             advertised on the local port is guest voice.

             A value of guestVoiceSignaling(5) indicates that the media
             type defining a primary function of the application for the policy
             advertised on the local port is guest voice signaling.

             A value of softPhoneVoice(6) indicates that the media type
             Defining a primary function of the application for the policy
             advertised on the local port is softphone voice.

             A value of videoConferencing(7) indicates that the media
             type defining a primary function of the application for the policy
             advertised on the local port is voice.

             A value of streamingVideo(8) indicates that the media type
             defining a primary function of the application for the policy
             advertised on  the local port is streaming video.

             A value of videoSignaling(2) indicates that the media type
             defining a primary function of the application for the policy
             advertised on the local port is video signaling."                                                                     L"This private MIB module adds MIBs to LLDP (Link Layer Discovery Protocol)." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "200506200000Z" "Initial revision."                      v"Setting this variable to 'true' will globally enable the LLDP feature
             (both transmit and receive functionalities). Setting this variable
             to 'false' will globally disable the LLDP feature. Thus, the
             administratively desired status of a local port is determined by
             both this variable and the MIB lldpPortConfigAdminStatus."                      "A set of ports that are identified by a PortList, in which
            each port is represented as a bit.
            Clears the Rx information about the remote agents accordingly to the
            specified PortList.
            The default value for rlLldpClearRx object is an empty binary string,
            which means no ports are specified to be cleared from the Rx Info.
            This object behaviors as an event (write-only) than
            reading this object always results in an Empty Port List of length zero." ""                   -- empty octet string
�"Action with LLDPDU upon globally disabled LLDP.

            If the associated rlLldpDuMode object has a value of
            'filtering(1)', then received frames are containing LLDPDU
            will be dropped.

            If the associated rlLldpDuMode object has a value of
            'flooding(2)', then received frames are containing LLDPDU
            will flood all active ports." $"Marvell LLDP System Specifications"                     i"This table contains automaticaly selected management address,
            advertised on the local port." "Marvell LLDP"                    �"Information about a local port, which advertises the Management
            address automatically. Entry also included an interface number, on
            which the Management address is assigned.
            Each management address should have distinct 'management address
            type' (rlLldpAutoAdvManAddrSubtype) and 'management address'
            (rlLldpAutoAdvManAddr)."                      "The index value used to identify the port component
            (contained in the local chassis with the LLDP agent)
            associated with this entry.

            The value of this object is used as a port index to the
            rlLldpAutoAdvLocPortManAddrTable."                      �"The integer value is used to identify the interface number
            (port, trunk or vlan). The management address, automatically
            advertised from associated 'rlLldpAutoAdvLocPortNum'local port is
            assigned to mentioned 'rlLldpAutoAdvManAddrOwnerIfId' interface.
            In case of 0 the management address is automatically calculated
            without care to the ifIndex it was defined on."                      Y"A value of 'true' indicates that the any management address hasn't advertised
             by the local port. Moreover, the configuration of automatic management address
             advertisment is disabled.
             A value of 'false' indicates that the configuration of automatic management address
             advertisment is enabled."                       v"The type of management address identifier encoding used in
            the associated 'rlLldpAutoAdvManAddr' object."                       �"The string value used to identify the management address is
            automaticaly advertised by local port, and assigned on the
            associated 'rlLldpAutoAdvManAddrOwnerIfId' interface."                       ]"The row status variable, used according to
       row installation and removal conventions."                       a"The type of encoding used to identify the chassis
            associated with the local system." "IEEE 802.1AB-2004 9.5.2.2"                    i"LLDP configuration information that controls the transmission of
            non-standard TLVs on LLDP transmission capable ports.

            This configuration object augments the lldpPortConfigEntry of
            the LLDP-MIB, therefore it is only present along with the port
            configuration defined by the associated lldpPortConfigEntry entry."                       >"Entry in rlLldpConfigTable. Augment the lldpPortConfigEntry."                       �"The rlLldpPortConfigTLVsTxEnable, which is defined as
            a truth value and configured by the network management,
            determines whether the 4-wire-poe TLV is allowed on a given LLDP
            transmission capable port."                      s"A value of 'true' indicates that management address TLV does not been advertised
             by the local port. Moreover, the configuration of automatic management address
             advertisment is disabled.
             A value of 'false' indicates that management address being advertised, 
			 either by automatic mechanism or by user-defined management address."                       �"The integer value is used to identify the interface number
            (port, trunk or vlan) that the port will advertise its management addresses. 
			Value 0 means that the management address will be taken from the port that advertise."                       f"An action scalar. Clear LLDP Global statistics counters.
			The value in the scalar is not relevant."                      "A set of ports that are identified by a PortList, in which
            each port is represented as a bit.
            Clears the LLDP port staistics information accordingly to the
            specified PortList.
            The default value for rlLldpClearPortlStatistics object is an empty binary string,
            which means no ports are specified to be cleared.
            This object behaviors as an event (write-only) than
            reading this object always results in an Empty Port List of length zero."                     -- empty octet string
     e"This table contains one row per policy number
             of media policy container configuration."                       E"Configuration of a particular policy in the media policy container."                       �"The index value used to identify the Media Policy
            associated with this entry.
            The value of this object is used as a policy number index to the
            rlLldpXMedLocMediaPolicyContainerTable."                       |"The media type that defines the primary function of the
             application for the policy advertised by an endpoint." !"ANSI/TIA-1057, Section 10.2.3.1"                    �"An extension of the VLAN Identifier for the port,
             as defined in IEEE 802.1P-1998.

             A value of 1 through 4094 is used to define a valid PVID.

             A value of 0 shall be used if the device is using priority tagged
             frames, meaning that only the 802.1p priority level is significant
             and the default VID of the ingress port is being used instead.

             A value of 4095 is reserved for implementation use." "" ANSI/TIA-1057, Section 10.2.3.5"                     �"This object contains the value of the 802.1p priority
            which is associated with the given port on the
            local system." #" ANSI/TIA-1057, Section 10.2.3.6 "                     �"This object contains the value of the Differentiated Service
            Code Point (DSCP) as defined in IETF RFC 2474 and RFC 2475
            which is associated with the given port on the local system." "" ANSI/TIA-1057, Section 10.2.3.7"                    J"A value of 'true' indicates that the
             network policy for the specified application type is
             currently unknown.  In this case, the VLAN ID, the
             layer 2 priority and the DSCP value fields are ignored.
             A value of 'false' indicates that this network policy
             is defined  " "" ANSI/TIA-1057, Section 10.2.3.2"                    �"A value of 'true' indicates that the application is using a
             tagged VLAN.
             A value of 'false' indicates that for the specific application
             the device either is using an untagged VLAN or does not
             support port based VLAN operation.  In this case, both the
             VLAN ID and the Layer 2 priority fields are ignored and
             only the DSCP value has relevance " "" ANSI/TIA-1057, Section 10.2.3.3"                    �"A set of ports that are identified by a PortList, in which
            each port is represented as a bit.  The local Media Policy Number
            will be associated with (or attached to) the ports specified at
            the rlLldpXMedLocMediaPolicyContainerPorts.

            The default value for rlLldpXMedLocMediaPolicyContainerPorts object
            is empty binary string, which means no ports are specified
            for advertising indicated management address instance." "IEEE 802.1AB-2004 10.2.1.1"                   -- empty binary string
 ]"The row status variable, used according to
       row installation and removal conventions."                       ""                       e"This table contains one row per policy number
             of media policy container configuration."                       E"Configuration of a particular policy in the media policy container."                      z"This field indicates whether this interface is operational 
			transmitted LLDP MED TLVs.
			To transmit MED TLVs, the interface must be MED enabled and must be connected to an LLDP-MED device. 
			The switch waits for the LLDP-MED device to advertise its information before the switch transmits its own LLDP-MED TLVs, 
			at which point the operational status becomes enabled"                           �"A table that show the which of the LLDP TLVs are not transmitted
            on individual ports due to insufficient room in the frame
            and the size of each TLV."                       u"LLDP TX overloading information that shows the
            transmission of TLVs on LLDP transmission capable ports."                       d" The value of this object is used as a port index to the
              TLVs TX overloading Table ."                       G"The sequence number of the group into sent LLDP PPDU starting from 1."                      �"Defines the TLVs groups.
            A value of mandatory(1) defines LLDP mandatory TLVs group
            A value of optinal(2) defines LLDP optional TLVs group
            A value of medCap(3) defines LLDP MED - Capabilities group
            A value of medLocation(4) defines LLDP MED - Location group
            A value of medNetPolicy(5) defines LLDP MED - Network Policy group
            A value of medPoe(6) defines  LLDP MED - Extended Power via MDI group
            A value of medInventory(7) defines LLDP MED - Inventory group
            A value of Xdot3(8) defines 802.3 TLVs group
            A value of Xdot1(9) defines 802.1 TLVs group "                        " The size of the TLV in Bytes."                       v"Boolean Flag, When TRUE indicating that LLDP TLVs were overloaded
            and the value of left size is negative"                       " The size in Bytes of the available space left in the LLDPDU after adding the TLVs group.
            In case the Overloading Flag is TRUE, there not enough space in the LLDPDU for the TLVs group
            and this is the size of the additional scpace that required for the TLVs group"                       Z"A table that show the total size of the all TLVs
            and the LLDPDU free size  ."                       !"LLDP TX overloading information"                       -" The Total size of all TLVs group in Bytes."                       }"Boolean Flag, When TRUE indicating that LLDP TLVs group were overloaded
             and the value of left size is negative"                      (" The size in Bytes of the available space left in the LLDPDU after adding all TLVs group.
            In case the Overloading Flag is TRUE, there not enough space in the LLDPDU for all the TLVs group
            and this is the size of the additional scpace that required for all the TLVs group"                       ="Port list that represent the overloading state of each port"                           >"This table contains the remote device Time To Live LLDP TLV."                       g"LLDP Time To TTL remove TLV.
            This uses the key as defind in lldpRemTable of the LLDP-MIB."                       ?"This object contains the remote device Time To Live LLDP TLV."                           Q"This table contains one row per port of power ethernet
            information "                       0"Information about a particular port component."                       ""                       ""                       ""                       ""                           Q"This table contains one row per port of power ethernet
            information "                       0"Information about a particular port component."                       ""                       ""                       ""                       ""                       P"The table is AUGMENT for lldpRemTable. Each entry consists Source MAC address."                       ?"Entry that consists source MAC address of the remote station."                       +"Source MAC address of the remote station."                       P"Indicates whether the entry is active (the port is up and LLDP Rx is enabled)."                           i"This table contains automaticaly selected management address,
            advertised on the local port." "Marvell LLDP"                    �"Information about a local port, which advertises the Management
            address automatically. Entry also included an interface number, on
            which the Management address is assigned.
            Each management address should have distinct 'management address
            type' (rlLldpAutoAdvManAddrSubtype) and 'management address'
            (rlLldpAutoAdvManAddr)."                      "The index value used to identify the port component
            (contained in the local chassis with the LLDP agent)
            associated with this entry.

            The value of this object is used as a port index to the
            rlLldpAutoAdvLocPortManAddrTable."                       v"The type of management address identifier encoding used in
            the associated 'rlLldpAutoAdvManAddr' object."                       �"The string value used to identify the management address is
            automatically advertised by local port, and assigned on the
            associated 'rlLldpAutoAdvManAddrOwnerIfId' interface."                      !"The integer value is used to identify the interface number
            (port, trunk or vlan). The management address, automatically
            advertised from associated 'rlLldpAutoAdvLocPortNum' local port is
            assigned to mentioned 'rlLldpAutoAdvManAddrOwnerIfId' interface."                                               P"Informational trap indicating that the port has entered the overloading state."                 U"Informational trap indicating that the port is no longer in the overloading state.."                                