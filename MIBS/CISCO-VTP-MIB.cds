4-- *****************************************************************
-- Cisco VTP MIB
--
-- February, 1997 Chris Young
--
-- Copyright (c) 1996-1998, 1999, 2000 by cisco Systems, Inc.
-- All rights reserved.
-- *****************************************************************
--
-- VTP MIB
-- CMS# ENG-6198
   f"An arbitrary integer-value to uniquely identify a
            management domain on the local system."              �"The type of a VLAN.

            Note that the 'ethernet' type, is used for any ethernet or
            802.3 VLAN, including an ATM Ethernet ELAN; and the
            'tokenRing' ('trCrf') type is used for each VLAN
            representing a single logical 802.5 ring including an ATM
            Token-Ring ELAN.

            The 'trCrf' type is used for token ring VLANs made up of
            (at most) one transparently bridged LAN segment.

            The 'trBrf' type is used for VLANs which represent the
            scope of many 'trCrf' VLANs all connected together via
            source route bridging.  The token ring 'trBrf' can be said
            to represent the bridged broadcast domain."              "The VLAN-id of a VLAN on ISL trunks.

             VLANs above 1000 are reserved for default VLANs and
             future use. Modification of default parameters is
             allowed. Creation or deletion of VLANs above 1000 is not
             allowed."              e"This data type is used to model an administratively
            assigned name of the owner of a resource.  This information
            is taken from the NVT ASCII character set.  It is suggested
            that this name contain one or more of the following: IP
            address, management station name, network manager's name,
            location, or phone number.  In some cases the agent itself
            will be the owner of an entry.  In these cases, this string
            shall be set to a string starting with 'monitor'.

            This definition is identical to that contained in RFC 1271."                                                                                                 %" Added import of NOTIFICATION-GROUP" �"Cisco Systems
             Customer Service

             Postal: 170 W Tasman Drive
             San Jose, CA  95134
             USA

             Tel: +1 800 553-NETS

             E-mail: cs-wbu@cisco.com" "9902251130Z" "9901051130Z" "9805191130Z" "9708081138Z" "9705091130Z" "9702241115Z" "9701271730Z" "9609161230Z" "9607171230Z" "9601181820Z" 5" Added support for encapsulation type notApplicable" 3" Added support for encapsulation type negotiation" " Added Backup CRF object"  " Added ARE and STE hop counts." 4" Added support for turning on VTP for Trunk cards." ."The MIB module for devices implementing VTP." '"Added support for version 2 features." !"Updated the Token-Ring support." 7"Updated to include objects in support of VTP pruning." %"Initial version of this MIB module."                       �"The version of VTP in use on the local system.  A device
            will report its version capability and not any particular
            version in use on the device."                      x"An estimate of the maximum number of VLANs about which the
            local system can recover complete VTP information after a
            reboot.  If the number of defined VLANs is greater than this
            value, then the system can not act as a VTP Server. For a
            device which has no means to calculate the estimated number,
            this value is -1."                       v"An indication of whether the notifications/traps defined by
            the vtpConfigNotificationsGroup are enabled."                          �"The table containing information on the management domains
            in which the local system is participating.  Devices which
            support only one management domain will support just one row
            in this table, and will not let it be deleted nor let other
            rows be created.  Devices which support multiple management
            domains will allow rows to be created and deleted, but will
            not allow the last row to be deleted."                       8"Information about the status of one management domain."                       `"An arbitrary value to uniquely identify the management
            domain on the local system."                      !"The management name of a domain in which the local system
            is participating.  The zero-length name corresponds to the
            'no management-domain' state which is the initial value at
            installation-time if not configured otherwise.  Note that
            the zero-length name does not correspond to an operational
            management domain, and a device does not send VTP
            advertisements while in the 'no management-domain' state.  A
            device leaves the 'no management-domain' state when it
            obtains a management-domain name, either through
            configuration or through inheriting the management-domain
            name from a received VTP advertisement.

            When the value of an existing instance of this object is
            modified by network management, the local system should re-
            initialize its VLAN information (for the given management
            domain) as if it had just been configured with a management
            domain name at installation time."                      w"An indication of whether the local system is acting as a
            VTP Client or as a VTP Server in this management domain.
            The value 'transparent' is a read-only indication that a
            device is not supporting VTP for this VTP management domain,
            e.g., because the amount of VLAN information is too large
            for it to hold in DRAM."                      -"The current Configuration Revision Number as known by the
            local device for this management domain.  This value is
            updated (if necessary) whenever a VTP advertisement is
            received or generated.  When in the 'no management-domain'
            state, this value is 0."                      5"The IP-address (or one of them) of the VTP Server which
            last updated the Configuration Revision Number, as indicated
            in the most recently received VTP advertisement for this
            management domain.  Before an advertisement has been
            received, this value is 0.0.0.0."                      �"The time at which the Configuration Revision Number was
            (last) increased to its current value, as indicated in the
            most recently received VTP advertisement for this management
            domain.

            The value 0x0000010100000000 indicates that the device which
            last increased the Configuration Revision Number had no idea
            of the date/time, or that no advertisement has been
            received."                       $"The status of this conceptual row."                       �"The IP address of a TFTP Server in/from which VTP VLAN
            information for this management domain is to be
            stored/retrieved.  If the information is being locally
            stored in NVRAM, this object should take the value 0.0.0.0."                      x"The complete pathname of the file at the TFTP Server
            identified by the value of managementDomainTftpServer
            in/from which VTP VLAN information for this management
            domain is to be stored/retrieved.  If the value of
            corresponding instance of managementDomainTftpServer is
            0.0.0.0, the value of this object is ignored."                      "An indication of whether VTP pruning is enabled or disabled
            in this managament domain.  This value can only be modified
            by local/network management when the value of the
            corresponding instance of managementDomainLocalMode is
            'server'."                      "The current version of the VTP that is in use by the
            designated management domain.  This value can only be
            modified by local/network managment when the value of the
            corresponding instance of managementDomainLocalMode is
            'server'."                          �"This table contains information on the VLANs which
            currently exist.  The creation, deletion or modification of
            entries occurs through: a) the receipt of VTP messages in
            VTP Clients and in VTP Servers, or, b) in VTP Servers (or in
            VTP transparent mode), through management operations acting
            upon entries in the vtpVlanEditTable and then issuing an
            'apply' command via the vtpVlanEditOperation object."                       �"Information about one current VLAN.  The
            managementDomainIndex value in the INDEX clause indicates
            which management domain the VLAN is in."                       )"The VLAN-id of this VLAN on ISL trunks."                      �"The state of this VLAN.

            The state 'mtuTooBigForDevice' indicates that this device
            cannot participate in this VLAN because the VLAN's MTU is
            larger than the device can support.

            The state 'mtuTooBigForTrunk' indicates that while this
            VLAN's MTU is supported by this device, it is too large for
            one or more of the device's trunk ports."                       "The type of this VLAN."                       w"The name of this VLAN.  This name is used as the ELAN-name
            for an ATM LAN-Emulation segment of this VLAN."                       �"The MTU size on this VLAN, defined as the size of largest
            MAC-layer (information field portion of the) data frame
            which can be transmitted on the VLAN."                       3"The value of the 802.10 SAID field for this VLAN."                      "The ring number of this VLAN.  This object is only
            instantiated when the value of the corresponding instance of
            vtpVlanType has a value of 'fddi' or 'tokenRing' and Source
            Routing (SRB) is configured for use on this VLAN."                       �"The bridge number of the VTP-capable switches for this
            VLAN.  This object is only instantiated for VLANs that are
            involved with emulating token ring segments."                      �" The type of the Spanning Tree Protocol (STP) running on
             this VLAN.  This object is only instanciated when the
             value of the corresponding instance of vtpVlanType has a
             value of 'fddiNet' or 'trNet'.

             The value returned by this object depends upon the value
             of the corresponding instance of vtpVlanEditStpType.

             - 'ieee' indicates IEEE STP is running exclusively.

             - 'ibm' indicates IBM STP is running exclusively.

             - 'hybrid' indicates a STP that allows a combination of
               IEEE and IBM is running.

             The 'hybrid' STP type results from tokenRing/fddi VLANs
             that are children of this trNet/fddiNet parent VLAN being
             configured in a combination of SRT and SRB
             vtpVlanBridgeTypes while the instance of
             vtpVlanEditStpType that corresponds to this object is set
             to 'auto'."                      t"The parent VLAN for this VLAN.  This object is only
            instantiated when the value of the corresponding instance of
            vtpVlanType has a value of 'fddi' or 'tokenRing' and Source
            Routing (SRB) is configured for use on this VLAN.  The
            parent VLAN must have a vtpVlanType value of fddiNet(4) or
            trNet(5), respectively."                       �"A VLAN to which this VLAN is being translational-bridged.
            If this value and the corresponding instance of
            vtpVlanTranslationalVlan2 are both zero, then this VLAN is
            not being translational-bridged."                      ="Another VLAN, i.e., other than that indicated by
            vtpVlanTranslationalVlan1, to which this VLAN is being
            translational-bridged.  If this value and the corresponding
            instance of vtpVlanTranslationalVlan1 are both zero, then
            this VLAN is not being translational-bridged."                       �"The type of the bridging mode in use on this VLAN.  This
            object is only instantiated when the value of the
            corresponding instance of vtpVlanType has a value of fddi(2)
            or tokenRing(3)."                      "The maximum number of bridge hops allowed in
            All Routes Explorer frames on this VLAN.  This
            object is only instantiated when the value of the
            corresponding instance of vtpVlanType has a value of fddi(2)
            or tokenRing(3)."                      "The maximum number of bridge hops allowed in
            Spanning Tree Explorer frames on this VLAN.  This
            object is only instantiated when the value of the
            corresponding instance of vtpVlanType has a value of fddi(2)
            or tokenRing(3)."                       r" True if this VLAN is of type trCrf and also is acting as
            a backup trCrf for the ISL distributed BRF"                          �"This table provides the means to control the editing of the
            VLANs for a particular management domain.  Each and every
            entry in this table augments its corresponding entry in the
            managementDomainTable; thus, an entry in this table is
            created/deleted only as a by-product of creating/deleting an
            entry in the managementDomainTable."                       Q"Control information for editing the VLANs in one management
            domain."                      "This object always has the value 'none' when read.  When
            written, each value causes the appropriate action:

             'copy' - causes the creation of rows in the
            vtpVlanEditTable exactly corresponding to the current global
            VLAN information for this management domain.  If the Edit
            Buffer (for this management domain) is not currently empty,
            a copy operation fails.  A successful copy operation starts
            the deadman-timer.

             'apply' - first performs a consistent check on the the
            modified information contained in the Edit Buffer, and if
            consistent, then tries to instanciate the modified
            information as the new global VLAN information.  Note that
            an empty Edit Buffer (for the management domain) would
            always result in an inconsistency since the default VLANs
            are required to be present.

             'release' - flushes the Edit Buffer (for this management
            domain), clears the Owner information, and aborts the
            deadman-timer.  A release is generated automatically if the
            deadman-timer ever expires.

             'restartTimer' - restarts the deadman-timer.

             'none' - no operation is performed."                      �"The current status of an 'apply' operation to instanciate
            the Edit Buffer as the new global VLAN information (for this
            management domain).  If no apply is currently active, the
            status represented is that of the most recently completed
            apply.  The possible values are:

               inProgress - 'apply' operation in progress;

               succeeded - the 'apply' was successful (this value is
                      also used when no apply has been invoked since the
                      last time the local system restarted);

               configNumberError - the apply failed because the value of
                      vtpVlanEditConfigRevNumber was less or equal to
                      the value of current value of vtpConfigRevNumber;

               inconsistentEdit - the apply failed because the modified
                      information was not self-consistent;

               tooBig - the apply failed because the modified
                      information was too large to fit in this VTP
                      Server's non-volatile storage location;

               localNVStoreFail - the apply failed in trying to store
                      the new information in a local non-volatile
                      storage location;

               remoteNVStoreFail - the apply failed in trying to store
                      the new information in a remote non-volatile
                      storage location;

               editBufferEmpty - the apply failed because the Edit
                      Buffer was empty (for this management domain).

               someOtherError - the apply failed for some other reason
                      (e.g., insufficient memory)."                      �"The management station which is currently using the Edit
            Buffer for this management domain.  When the Edit Buffer for
            a management domain is not currently in use, the value of
            this object is the zero-length string.  Note that it is also
            the zero-length string if a manager fails to set this object
            when invoking a copy operation."                      S"The Configuration Revision Number to be used for the next
            apply operation.  This value is initialized (by the agent)
            on a copy operation to be one greater than the value of
            vtpConfigRevNumber.  On an apply, if the number is less or
            equal to the value of vtpConfigRevNumber, then the apply
            fails.  The value can be modified (increased) by network
            management before an apply to ensure than an apply does not
            fail for this reason.

            This object is used to allow management control over whether
            a configuration revision received via a VTP advertisement
            after a copy operation but before the succeeding apply
            operation is lost by being overwritten by the (local) edit
            operation.  By default, the apply operation will fail in
            this situation.  By increasing this object's value after the
            copy but before the apply, management can control whether
            the apply is to succeed (with the update via VTP
            advertisement being lost)."                      C"The table which contains the information in the Edit
            Buffers, one Edit Buffer per management domain.  The
            information for a particular management domain is
            initialized, by a 'copy' operation, to be the current global
            VLAN information for that management domain.  After
            initialization, editing can be performed to add VLANs,
            delete VLANs, or modify their global parameters.  The
            information as modified through editing is local to this
            Edit Buffer.  An apply operation using the
            vtpVlanEditOperation object is necessary to instanciate the
            modified information as the new global VLAN information for
            that management domain.

            To use the Edit Buffer, a manager acts as follows:

            1. ensures the Edit Buffer for a management domain is empty,
            i.e., there are no rows in this table for this management
            domain.

            2. issues a SNMP set operation which sets
            vtpVlanEditOperation to 'copy', and vtpVlanEditBufferOwner
            to its own identifier (e.g., its own IP address).

            3. if this set operation is successful, proceeds to edit the
            information in the vtpVlanEditTable.

            4. if and when the edited information is to be instantiated,
            issues a SNMP set operation which sets vtpVlanEditOperation
            to 'apply'.

            5. issues retrieval requests to obtain the value of
            vtpVlanApplyStatus, until the result of the apply is
            determined.

            6. releases the Edit Buffer by issuing a SNMP set operation
            which sets vtpVlanEditOperation to 'release'.

            Note that the information contained in this table is not
            saved across agent reboots."                       _"Information about one VLAN in the Edit Buffer for a
            particular management domain."                       7"The VLAN-id which this VLAN would have on ISL trunks."                       '"The state which this VLAN would have."                       &"The type which this VLAN would have."                       �"The name which this VLAN would have.  This name would be
            used as the ELAN-name for an ATM LAN-Emulation segment of
            this VLAN."                       �"The MTU size which this VLAN would have, defined as the
            size of largest MAC-layer (information field portion of the)
            data frame which can be transmitted on the VLAN."                       S"The value of the 802.10 SAID field which would be used for
            this VLAN."                      ("The ring number which would be used for this VLAN.  This
            object is only instantiated when the value of the
            corresponding instance of vtpVlanEditType has a value of
            'fddi' or 'tokenRing' and Source Routing (SRB) is configured
            for use on this VLAN."                       �"The bridge number of the VTP-capable switches which would
            be used for this VLAN.  This object is only instantiated
            when the value of the corresponding instance of
            vtpVlanEditType has a value of fddiNet(4) or trNet(5)."                      �"The type of the Spanning Tree Protocol which would be
             running on this VLAN.  This object is only instantiated when
             the value of the corresponding instance of vtpVlanEditType
             has a value of fddiNet(4) or trNet(5).

             If 'ieee' is selected, the STP that runs will be IEEE.

             If 'ibm' is selected, the STP that runs will be IBM.

             If 'auto' is selected, the STP that runs will be
             dependant on the values of vtpVlanEditBridgeType for all
             children tokenRing/fddi type VLANs.  This will result in
             a 'hybrid' STP (see vtpVlanStpType)."                      �"The VLAN index of the VLAN which would be the parent for
            this VLAN.  This object is only instantiated when the value
            of the corresponding instance of vtpVlanEditType has a value
            of 'fddi' or 'tokenRing' and Source Routing (SRB) is
            configured for use on this VLAN.  The parent VLAN must have
            a vtpVlanEditType value of fddiNet(4) or trNet(5),
            respectively."                      �"The status of this row.  Any and all columnar objects in an
            existing row can be modified irrespective of the status of
            the row.

            A row is not qualified for activation until instances of at
            least its vtpVlanEditType, vtpVlanEditName and
            vtpVlanEditDot10Said columns have appropriate values.

            The management station should endeavor to make all rows
            consistent in the table before 'apply'ing the buffer.  An
            inconsistent entry in the table will cause the entire
            buffer to be rejected with the vtpVlanApplyStatus object
            set to the appropriate error value."                       �"A VLAN to which this VLAN would be translational-bridged.
            If this value and the corresponding instance of
            vtpVlanTranslationalVlan2 are both zero, then this VLAN
            would not be translational-bridged."                      A"Another VLAN, i.e., other than that indicated by
            vtpVlanEditTranslationalVlan1, to which this VLAN would be
            translational-bridged.  If this value and the corresponding
            instance of vtpVlanTranslationalVlan1 are both zero, then
            this VLAN would not be translational-bridged."                       �"The type of bridging mode which would be in use on this
            VLAN.  This object is only instantiated when the value of
            the corresponding instance of vtpVlanEditType has a value of
            fddi(2) or tokenRing(3)."                      "The maximum number of bridge hops allowed in
            All Routes Explorer frames on this VLAN.  This
            object is only instantiated when the value of the
            corresponding instance of vtpVlanType has a value of fddi(2)
            or tokenRing(3)."                      "The maximum number of bridge hops allowed in
            Spanning Tree Explorer frames on this VLAN.  This
            object is only instantiated when the value of the
            corresponding instance of vtpVlanType has a value of fddi(2)
            or tokenRing(3)."                       r" True if this VLAN is of type trCrf and also is acting as
            a backup trCrf for the ISL distributed BRF"                           "A table of VTP statistics."                       +"VTP statistics for one management domain."                       Z"The total number of VTP Summary Adverts received for this
            management domain."                       Y"The total number of VTP Subset Adverts received for this
            management domain."                       Z"The total number of VTP Advert Requests received for this
            management domain."                       V"The total number of VTP Summary Adverts sent for this
            management domain."                       U"The total number of VTP Subset Adverts sent for this
            management domain."                       V"The total number of VTP Advert Requests sent for this
            management domain."                      �"The number of occurrences of configuration revision number
            errors for this management domain.  A configuration revision
            number error occurs when a device receives a VTP
            advertisement for which:

            - the advertisement's Configuration Revision Number is the
              same as the current locally-held value, and

            - the advertisement's digest value is different from the
              current locally-held value."                      �"The number of occurrences of configuration digest errors
            for this management domain.  A configuration digest error
            occurs when a device receives a VTP advertisement for which:

            - the advertisement's Configuration Revision Number is
              greater than the current locally-held value, and

            - the advertisement's digest value does not match the VLAN
              information assumed by the receiver of the advertisement,
              where the infomation assumed is the combination of the
              information explicitly contained in the advertisement plus
              any omitted information as currently known by the
              receiving device."                           V"The table containing information on the local system's VLAN
            trunk ports."                       #"Information about one trunk port."                       V"The value of ifIndex for the interface corresponding to
            this trunk port."                       �"The value of managementDomainIndex for the management
            domain on this trunk port.  Devices which support only one
            management domain will support this object read-only."                      �"The type of VLAN encapsulation desired to be used on this trunk
            port. It is either a particular type, or 'negotiate' meaning
            whatever type results from the negotiation. negotiate(5) is not
            allowed if the port does not support negotiation or if its
            vlanTrunkPortDynamicState is set to on(1) or onNoNegotiate(5).
            Whether writing to this object in order to modify the encapsulation
            is supported is both device and interface specific."                      "A string of octets containing one bit per VLAN in the
            management domain on this trunk port.  The first octet
            corresponds to VLANs with VlanIndex values of 0 through 7;
            the second octet to VLANs 8 through 15; etc.  The most
            significant bit of each octet corresponds to the lowest
            value VlanIndex in that octet.  If the bit corresponding to
            a VLAN is set to '1', then the local system is enabled for
            sending and receiving frames on that VLAN; if the bit is set
            to '0', then the system is disabled from sending and
            receiving frames on that VLAN.

            To avoid conflicts between overlapping partial updates by
            multiple managers, i.e., updates which modify only a portion
            of an instance of this object (e.g., enable/disable a single
            VLAN on the trunk port), any SNMP Set operation accessing an
            instance of this object should also write the value of
            vlanTrunkPortSetSerialNo."                       �"The VlanIndex of the VLAN which is represented by native
            frames on this trunk port.  For trunk ports not supporting
            the sending and receiving of native frames, this value
            should be set to zero."                      �"The status of this row.  In some circumstances, the
            creation of a row in this table is needed to enable the
            appropriate trunking/tagging protocol on the port, to enable
            the use of VTP on the port, and to assign the port to the
            appropriate management domain.  In other circumstances, rows
            in this table will be created as a by-product of other
            operations."                       J"The number of VTP Join messages received on this trunk
            port."                       :"The number of VTP Join messages sent on this trunk port."                       �"The number of VTP Advertisement messages which indicated
            the sender does not support VLAN-pruning received on this
            trunk port."                      "A string of octets containing one bit per VLAN in the
            management domain on this trunk port.  The first octet
            corresponds to VLANs with VlanIndex values of 0 through 7;
            the second octet to VLANs 8 through 15; etc.  The most
            significant bit of each octet corresponds to the lowest
            value VlanIndex in that octet.

            If the bit corresponding to a VLAN is set to '1', then the
            local system is permitted to prune that VLAN on this trunk
            port; if the bit is set to '0', then the system must not
            prune that VLAN on this trunk port.

            To avoid conflicts between overlapping partial updates by
            multiple managers, i.e., updates which modify only a portion
            of an instance of this object (e.g., enable/disable a single
            VLAN on the trunk port), any SNMP Set operation accessing an
            instance of this object should also write the value of
            vlanTrunkPortSetSerialNo."                      �"A string of octets containing one bit per VLAN in the
            management domain on this trunk port.  The first octet
            corresponds to VLANs with VlanIndex values of 0 through 7;
            the second octet to VLANs 8 through 15; etc.  The most
            significant bit of each octet corresponds to the lowest
            value VlanIndex in that octet.

            If the bit corresponding to a VLAN is set to '1', then this
            VLAN is presently being forwarded on this trunk port, i.e.,
            it is not pruned; if the bit is set to '0', then this VLAN
            is presently not being forwarded on this trunk port, either
            because it is pruned or for some other reason."                      �"A string of octets containing one bit per VLAN in the
            management domain on this trunk port.  The first octet
            corresponds to VLANs with VlanIndex values of 0 through 7;
            the second octet to VLANs 8 through 15; etc.  The most
            significant bit of each octet corresponds to the lowest
            value VlanIndex in that octet.

            If the bit corresponding to a VLAN is set to '1', then the
            local switch is currently sending joins for this VLAN on
            this trunk port, i.e., it is asking to receive frames for
            this VLAN; if the bit is set to '0', then the local switch
            is not currently sending joins for this VLAN on this trunk
            port."                      	d"For devices that allows dynamic determination of whether
            a link between two switches should be a trunk or not, this object
            allows the operator to mandate the behavior of that dynamic
            mechanism.

            on(1) dictates that the interface will always be a
            trunk. This is the value for static entries (those that
            show no dynamic behavior). If the negotiation is supported on this
            port, negotiation will take place with the far end to attempt
            to bring the far end into trunking state.

            off(2) allows an operator to specify that the specified
            interface is never to be trunk, regardless of any dynamic
            mechanisms to the contrary.  This value is useful for
            overriding the default behavior of some switches. If the
            negotiation is supported on this port, negotiation will take place
            with the far end to attempt on the link to bring the far end into
            non-trunking state.

            desirable(3) is used to indicate that it is desirable for
            the interface to become a trunk.  The device will initiate
            any negotiation necessary to become a trunk but will not
            become a trunk unless it receives confirmation from the far
            end on the link.

            auto(4) is used to indicate that the interface is capable
            and willing to become a trunk but will not initiate
            trunking negotiations.  The far end on the link are
            required to either start negotiations or start sending
            encapsulated packets, on which event the specified
            interface will become a trunk.

            onNoNegotiate(5) is used to indicate that the interface is permanent
ly
            set to be a trunk, and no negotiation takes place with the
            far end on the link to ensure consistent operation. This is similar
            to on(1) except no negotiation takes place with the far end.

            If the port does not support negotiation or its
            vlanTrunkPortEncapsulationType is set to negotiate(5),
            onNoNegotiate(5) is not allowed.

            Devices that do no support dynamic determination (for just
            a particular interface, encapsulation or for the whole
            device) need only support the 'on', and 'off' values."                       �" Indicates whether the specified interface is either
            acting as a trunk or not. This is a result of the
            vlanTrunkPortDynamicState and the ifOperStatus of the
            trunk port itself."                      �" Some trunk interface modules allow VTP to be
            enabled/disabled seperately from that of the central
            device.  In such a case this object provides management a
            way to remotely enable VTP on that module.  If a module
            does not support a seperate VTP enabled state then this
            object shall always return 'true' and will accept no other
            value during a SET operation."                       �"The type of VLAN encapsulation in use on this trunk port.
             For intefaces with vlanTrunkPortDynamicStatus of
             notTrunking(2) the vlanTrunkPortEncapsulationOperType shall
             be notApplicable(6). "                       �"An advisory lock used to allow several cooperating SNMPv2
            managers to coordinate their use of the SNMPv2 set operation
            acting upon any instance of vlanTrunkPortVlansEnabled."                              �"A configuration revision number error notification
            signifies that a device has incremented its
            vtpConfigRevNumberErrors counter.

            Generation of this notification is suppressed if the
            vtpNotificationsEnabled has the value 'false'.

            The device must throttle the generation of consecutive
            vtpConfigRevNumberError notifications so that there is at
            least a five-second gap between notification of this type.
            When notification are throttled, they are dropped, not
            queued for sending at a future time.  (Note that
            'generating' a notification means sending to all configured
            recipients.)"                �"A configuration digest error notification signifies that a
            device has incremented its vtpConfigDigestErrors counter.

            Generation of this notification is suppressed if the
            vtpNotificationsEnabled has the value 'false'.

            The device must throttle the generation of consecutive
            vtpConfigDigestError notifications so that there is at least
            a five-second gap between notification of this type.  When
            notification are throttled, they are dropped, not queued for
            sending at a future time.  (Note that 'generating' a
            notification means sending to all configured recipients.)"                ]"A VTP Server disabled notification is generated when the
            local system is no longer able to function as a VTP Server
            because the number of defined VLANs is greater than
            vtpMaxVlanStorage.

            Generation of this notification is suppressed if the
            vtpNotificationsEnabled has the value 'false'."                "A VTP MTU tooBig notification is generated when a VLAN's
            MTU size is larger than can be supported either:

            - by one or more of its trunk ports:
              the included vtpVlanState has the value
              'mtuTooBigForTrunk' and the included
              vlanTrunkPortManagementDomain is for the first (or only)
              trunk port,
              or

            - by the device itself:
              vtpVlanState has the value 'mtuTooBigForDevice' and any
              instance of vlanTrunkPortManagementDomain is included.

            Devices which have no trunk ports do not send vtpMtuTooBig
            notifications.

            Generation of this notification is suppressed if the
            vtpNotificationsEnabled has the value 'false'."                �"A VTP ring number configuration conflict notification is
            generated if, and only at the time when, a device learns of
            a conflict between:

            a) the ring number (vtpVlanPortLocalSegment) being used on a
               token ring segment attached to the port identified by
               ifIndex, and

            b) the VTP-obtained ring number (vtpVlanRingNumber) for the
               VLAN identified by vtpVlanIndex.

            When such a conflict occurs, the bridge port is put into an
            administrative down position until the conflict is resolved
            through local/network management intervention.

            This notification is only applicable to VLANs of type
            'tokenRing'."                �"A VTP version one device detected notification is
            generated by a device when:

            a) a management domain has been put into version 2 mode
               (as accessed by managementDomainVersionInUse).
            b) 15 minutes has passed since a).
            c) a version 1 PDU is detected on a trunk on the device
               that is in that management domain which has a lower
               revision number than the current configuration."                 �"A vlanTrunkPortDynamicStatusChange notification is
                generated by a device when the value of
                vlanTrunkPortDynamicStatus object has been changed."                    �"The ring (segment) number in use on a 802.5 ring.  For
            bridges supporting RFC 1525, this value is the same as given
            by dot1dSrPortLocalSegment for the bridge port attached to
            that ring.  When tokenRing VLANs are in use, each 'trNet'
            VLAN can/does have a different instance of
            dot1dSrPortLocalSegment for each physical port.  Note that
            access to the particuler instance of dot1dSrPortLocalSegment
            requires knowledge of how the agent supports the multiple
            'contexts' required to implement RFC 1525 for multiple
            VLANs; also note that the assignment of ifIndex values may
            be different in different 'contexts'."           '--    MAX-ACCESS accessible-for-notify
                   3"The compliance statement for VTP implementations."   �"Write access is not required, and only one
             of the six enumerated values for the
             RowStatus textual convention need be
             supported, specifically: active(1)." �"Write access is not required, and only one
             of the six enumerated values for the
             RowStatus textual convention need be
             supported, specifically: active(1)." "Write access is not required." "Write access is not required." "Write access is not required." �"This group must be implemented by VTP Servers.
            VTP Clients need not implement these objects, and
            must not allow VLANs to be created, modified, or
            destroyed using these objects."                 a"A collection of objects providing basic status and control
            of a VTP implementation."                 :"A collection of objects for monitoring VLAN information."                 R"A collection of objects for editing VLAN information in VTP
            Servers."                 3"A collection of objects providing VTP statistics."                 K"A collection of objects providing information on trunk
            ports."                 I" Additional functionality added to the
            vlanTrunkPortTable. "                 I" Additional functionality added to the
            vlanTrunkPortTable. "                 L"A collection of objects providing information on VLAN
            pruning."                 ^"A collection of object providing information on whether
            VLAN pruning is enabled."                 `" The object required to indicate the version of VTP in
            use by a management domain."                            