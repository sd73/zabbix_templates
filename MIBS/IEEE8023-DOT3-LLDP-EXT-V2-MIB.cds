                                                                           �"The LLDP Management Information Base extension module for
            IEEE 802.3 organizationally defined discovery information."H"WG-URL: http://www.ieee802.org/3/index.html
            WG-EMail: STDS-802-3-MIB@LISTSERV.IEEE.ORG

            Contact: Howard Frazier
            Postal:  3151 Zanker Road
                     San Jose, CA 95134
                     USA
            Tel:     +1.408.922.8164
            E-mail:  hfrazier@broadcom.com" "201304110000Z" "201102020000Z" A"Revision, based on an earlier version in IEEE Std 802.3.1-2011." �"This revision incorporated changes to the MIB module to
            add objects to support management of Energy Efficient
            Ethernet (EEE) and Enhanced DTE Power via the MDI (PoE+)."       -- April 11, 2013
               b"A table that controls selection of LLDP TLVs to be transmitted
            on individual ports."                      �"LLDP configuration information that controls the
            transmission of IEEE 802.3 organizationally defined TLVs on
            LLDP transmission capable ports.

            This configuration object augments the lldpV2PortConfigEntry of
            the LLDP-MIB, therefore it is only present along with the port
            configuration defined by the associated lldpV2PortConfigEntry
            entry.

            Each active lldpV2Xdot3PortConfigEntry is restored from non-volatile
            storage (along with the corresponding lldpV2PortConfigEntry)
            after a re-initialization of the management system."                      �"The lldpV2Xdot3PortConfigTLVsTxEnable, defined as a bitmap,
            includes the IEEE 802.3 organizationally defined set of LLDP
            TLVs whose transmission is allowed by the local LLDP agent by
            the network management. Each bit in the bitmap corresponds
            to an IEEE 802.3 subtype associated with a specific IEEE
            802.3 optional TLV.

            The bit 'macPhyConfigStatus(0)' indicates that the LLDP agent
            should transmit 'MAC/PHY configuration/status TLV'.

            The bit 'powerViaMDI(1)' indicates that the LLDP agent should
            transmit 'Power via MDI TLV'.

            The bit 'unused(2)' is no longer used; this was used for
            the 'Link Aggregation TLV' in the previous version.

            The bit 'maxFrameSize(3)' indicates that the LLDP agent should
            transmit 'Maximum-frame-size TLV'.

            The default value for lldpV2Xdot3PortConfigTLVsTxEnable object
            is an empty set, which means no enumerated values are set.

            The value of this object is restored from non-volatile
            storage after a re-initialization of the management system." "IEEE Std 802.3 30.12.1.1.1"                         �"This table contains one row per port of Ethernet port
            information (as a part of the LLDP 802.3 organizational
            extension) on the local system known to this agent."                       0"Information about a particular port component."                       �"The truth value used to indicate whether the given port
            (associated with the local system) supports Auto-negotiation." "IEEE Std 802.3 30.12.2.1.1"                     �"The truth value used to indicate whether port
            Auto-negotiation is enabled on the given port associated
            with the local system." "IEEE Std 802.3 30.12.2.1.2"                     �"This object contains the value (bitmap) of the
            ifMauAutoNegCapAdvertisedBits object (defined in IETF RFC
            3636) which is associated with the given port on the
            local system." "IEEE Std 802.3 30.12.2.1.3"                    "An integer value that indicates the operational MAU type
            of the given port on the local system.

            This object contains the integer value derived from the
            list position of the corresponding dot3MauType as listed
            in Clause 13 and is equal to the last number in the
            respective dot3MauType OID.

            For example, if the ifMauType object is dot3MauType1000BaseTHD
            which corresponds to {dot3MauType 29}, the numerical value of
            this field is 29. For MAU types not listed in Clause 13,
            the value of this field shall be set to zero." "IEEE Std 802.3 30.12.2.1.4"                     �"This table contains one row per port of power Ethernet
            information (as a part of the LLDP IEEE 802.3 organizational
            extension) on the local system known to this agent."                       0"Information about a particular port component."                       k"The value that identifies the port Class of the given port
            associated with the local system." "IEEE Std 802.3 30.12.2.1.5"                     �"The truth value used to indicate whether the MDI power is
            supported on the given port associated with the local system." "IEEE Std 802.3 30.12.2.1.6"                     �"The truth value used to identify whether MDI power is
            enabled on the given port associated with the local system." "IEEE Std 802.3 30.12.2.1.7"                    "The truth value is derived from the value of
            pethPsePortPowerPairsControlAbility object (defined in
            Clause 8) and is used to indicate whether the pair selection
            can be controlled on the given port associated with the
            local system." "IEEE Std 802.3 30.12.2.1.8"                     �"This object contains the value of the pethPsePortPowerPairs
            object (defined in Clause 8) which is associated with
            the given port on the local system." "IEEE Std 802.3 30.12.2.1.9"                     �"This object contains the value of the
            pethPsePortPowerClassifications object (defined in
            Clause 8) which is associated with the given port on the
            local system." "IEEE Std 802.3 30.12.2.1.10"                     �"A GET returns an integer indicating whether the local
             system is a PSE or a PD and whether it is Type 1 or Type 2." "IEEE Std 802.3 30.12.2.1.14"                    F"A GET returns an integer indicating the power sources of the
            local system. A PSE indicates whether it is being powered by
            a primary power source; a backup power source; or unknown. A PD
            indicates whether it is being powered by a PSE and locally;
            by a PSE only; or unknown." "IEEE Std 802.3 30.12.2.1.15"                    0"A GET returns the priority of a PD system. For a PSE, this
            is the priority that the PSE assigns to the PD. For a PD, this
            is the priority that the PD requests from the PSE. A SET
            operation changes the priority of the PD system to the indicated
            value." "IEEE Std 802.3 30.12.2.1.16"                    �"A GET returns the PD requested power value.
            For a PD, it is the power value that the PD has currently
            requested from the remote system. PD requested power value
            is the maximum input average power the PD ever draws under
            this power allocation if accepted. For a PSE, it is the power
            value that the PSE mirrors back to the remote system. This is
            the PD requested power value that was used by the PSE to compute
            the power it has currently allocated to the remote system.
            The PD requested power value is encoded according to
            IEEE Std 802.3 Equation (79?1), where X is the decimal value of
            aLldpXdot3LocPDRequestedPowerValue." "IEEE Std 802.3 30.12.2.1.17"                    "A GET returns the PSE allocated power value.
            For a PSE, it is the power value that the PSE has currently
            allocated to the remote system. The PSE allocated power value
            is the maximum input average power that the PSE wants the PD
            to ever draw under this allocation if it is accepted. For a PD,
            it is the power value that the PD mirrors back to the remote
            system. This is the PSE allocated power value that was used by
            the PD to compute the power that it has currently requested from
            the remote system. The PSE allocated power value is encoded
            according to IEEE Std 802.3 Equation (79?2), where X is the
            decimal value of aLldpXdot3LocPSEAllocatedPowerValue." "IEEE Std 802.3 30.12.2.1.18"                    �"A GET returns the response time in seconds of the local system.
            For a PD, it is the maximum time required to update the value of
            lldpV2Xdot3LocPDRequestedPowerValue when the remote system
            requests the PD to change its max power draw. For a PSE, it is
            the maximum time required to update the value of
            lldpV2Xdot3LocPDRequestedPowerValue when the remote system
            requests of the PSE a new power value." "IEEE Std 802.3 30.12.2.1.19"                     �"The truth value used to identify whether the local Data Link Layer
            classification engine has completed initialization and is ready to
            receive and transmit LLDPDUs." "IEEE Std 802.3 30.12.2.1.20"                    �"A GET returns the reduced operation power value. For a PD, it
            is a power value that is lower than the currently requested
            power value. This reduced operation power value represents a
            power state in which the PD could continue to operate, but with
            less functionality than at the current PD requested power value.
            The PSE could optionally use this information in the event that
            the PSE subsequently requests a lower PD power value than the
            PD requested power value. For a PSE, it is a power value that the
            PSE could ask the PD to move to if the PSE wants the PD to move
            to a lower power state. The definition and encoding of PD
            requested power value is the same as described in
            lldpV2Xdot3LocPDRequestedPowerValue. The default value for this
            field is the hexadecimal value FFFF" "IEEE Std 802.3 30.12.2.1.21"                     �"This table contains one row per port of maximum frame
            size information (as a part of the LLDP IEEE 802.3 organizational
            extension) on the local system known to this agent."                       P"Maximum Frame Size information about a particular port
            component."                       }"An integer value indicating the maximum supported frame
             size in octets on the given port of the local system." "IEEE Std 802.3 30.12.2.1.13"                     �"This table contains one row per port of Energy Efficient Ethernet
            information (as a part of the LLDP IEEE 802.3 organizational
            extension) on the local system known to this agent."                       0"Information about a particular port component."                       �"A GET returns the value of Tw_sys_tx that the local system
            can support in the transmit direction.
            This object maps to the variable LocTxSystemValue as defined
            in IEEE Std 802.3 78.4.2.3." "IEEE Std 802.3 30.12.2.1.22"                    e"A GET returns the value of Tw_sys_tx that the remote system is
            advertising that it can support in the transmit direction and is
            echoed by the local system under the control of the EEE DLL receiver
            state diagram. This object maps to the variable
            LocTxSystemValueEcho as defined in IEEE Std 802.3 78.4.2.3" "IEEE Std 802.3 30.12.2.1.23"                     �"A GET returns the value of Tw_sys_tx that
            the local system is requesting in the receive direction.
            This object maps to the variable LocRxSystemValue as
            defined in IEEE Std 802.3 78.4.2.3." "IEEE Std 802.3 30.12.2.1.24"                    w"A GET returns the value of Tw_sys_tx that
            the remote system is advertising that it is requesting in the
            receive direction and is echoed by the local system under the
            control of the EEE DLL transmitter state diagram. This object
            maps to the variable LocRxSystemValueEcho as defined in
            IEEE Std 802.3 78.4.2.3." "IEEE Std 802.3 30.12.2.1.25"                     �"A GET returns the value of the fallback Tw_sys_tx
            that the local system is advertising to the remote system.
            This object maps to the variable LocFbSystemValue as defined
            in IEEE Std 802.3 78.4.2.3." "IEEE Std 802.3 30.12.2.1.26"                     �"The truth value used to identify whether the local Data Link Layer
            EEE layer management function has completed initialization and
            is ready to receive and transmit LLDPDUs." "IEEE Std 802.3 30.12.2.1.27"                     �"The truth value used to identify whether the local Data Link Layer
            EEE layer management function has completed initialization and
            is ready to receive and transmit LLDPDUs." "IEEE Std 802.3 30.12.2.1.28"                     �"The truth value used to identify whether the local system has
            completed auto-negotiation with a link partner that has
            indicated at leat one EEE capability." "IEEE Std 802.3 30.12.2.1.29"                         �"This table contains Ethernet port information (as a part
            of the LLDP IEEE 802.3 organizational extension) of the remote
            system."                       ="Information about a particular physical network connection."                       �"The truth value used to indicate whether the given port
            (associated with remote system) supports Auto-negotiation." "IEEE Std 802.3 30.12.3.1.1"                     �"The truth value used to indicate whether port
            Auto-negotiation is enabled on the given port associated
            with the remote system." "IEEE Std 802.3 30.12.3.1.2"                     �"This object contains the value (bitmap) of the
            ifMauAutoNegCapAdvertisedBits object (defined in IETF RFC
            3636) which is associated with the given port on the
            remote system." "IEEE Std 802.3 30.12.3.1.3"                    r"An integer value that indicates the operational MAU type
            of the sending device.

            This object contains the integer value derived from the
            list position of the corresponding dot3MauType as listed in
            in Clause 13 and is equal to the last number in
            the respective dot3MauType OID.

            For example, if the ifMauType object is dot3MauType1000BaseTHD
            which corresponds to {dot3MauType 29}, the numerical value of
            this field is 29. For MAU types not listed in Clause 13,
            the value of this field shall be set to zero." "IEEE Std 802.3 30.12.3.1.4"                     �"This table contains Ethernet power information (as a part
            of the LLDP IEEE 802.3 organizational extension) of the remote
            system."                       ="Information about a particular physical network connection."                       l"The value that identifies the port Class of the given port
            associated with the remote system." "IEEE Std 802.3 30.12.3.1.5"                     �"The truth value used to indicate whether the MDI power
            is supported on the given port associated with the remote
            system." "IEEE Std 802.3 30.12.3.1.6"                     �"The truth value used to identify whether MDI power is
            enabled on the given port associated with the remote system." "IEEE Std 802.3 30.12.3.1.7"                    "The truth value is derived from the value of
            pethPsePortPowerPairsControlAbility object (defined in
            Clause 8) and is used to indicate whether the pair selection
            can be controlled on the given port associated with the
            remote system." "IEEE Std 802.3 30.12.3.1.8"                     �"This object contains the value of the pethPsePortPowerPairs
            object (defined in Clause 8) which is associated with
            the given port on the remote system." "IEEE Std 802.3 30.12.3.1.9"                     �"This object contains the value of the
            pethPsePortPowerClassifications object (defined in
            Clause 8) which is associated with the given port on the
            remote system." "IEEE Std 802.3 30.12.3.1.10"                     �"A GET returns an integer indicating whether the remote
             system is a PSE or a PD and whether it is Type 1 or Type 2." "IEEE Std 802.3 30.12.3.1.14"                    �"A GET returns an integer indicating the power sources of the
            remote system. When the remote system is a PSE, it indicates
            whether it is being powered by a primary power source; a backup
            power source; or unknown. When the remote system is a PD, it
            indicates whether it is being powered by a PSE and locally;
            locally only; by a PSE only; or unknown." "IEEE Std 802.3 30.12.3.1.15"                     �"A GET returns the priority of a PD system. For a PSE, this
            is the priority that the remote system requests. For a PD, this
            is the priority that the remote system has assigned." "IEEE Std 802.3 30.12.3.1.16"                    �"A GET returns the PD requested power value that was used
            by the remote system to compute the power value that is has
            currently allocated to the PD. For a PSE, it is the PD requested
            power value received from the remote system. The definition and
            encoding of PD requested power value is the same as described in
            lldpV2Xdot3LocPDRequestedPowerValue." "IEEE Std 802.3 30.12.3.1.17"                    "A GET returns the PSE allocated power value
            received from the remote system. For a PSE, it is the PSE allocated
            power value that was used by the remote system to compute the power
            value that it has currently requested from the PSE. For a PD, it
            is the PSE allocated power value received from the remote system.
            The definition and encoding of PSE allocated power value is
            the same as described in lldpV2Xdot3LocPSEAllocatedPowerValue." "IEEE Std 802.3 30.12.3.1.18"                     �"This table contains one row per port/destination
            address pair of maximum frame
            size information (as a part of the LLDP IEEE 802.3
            organizational extension) of the remote system."                       P"Maximum Frame Size information about a particular port
            component."                       �"An integer value indicating the maximum supported frame
             size in octets on the port component associated with the
             remote system." "IEEE Std 802.3 30.12.3.1.13"                     �"This table contains one row per port of Energy Efficient Ethernet
            information (as a part of the LLDP IEEE 802.3 organizational
            extension) on the local system known to this agent."                       0"Information about a particular port component."                       �"A GET returns the value of Tw_sys_tx that the remote system
            can support in the transmit direction.
            This object maps to the variable RemTxSystemValue as defined
            in IEEE Std 802.3 78.4.2.3." "IEEE Std 802.3 30.12.3.1.19"                    b"A GET returns the value of Tw_sys_tx that the local system is
            advertising that it can support in the transmit direction as
             echoed by the remote system under the control of the EEE DLL receiver
            state diagram. This object maps to the variable
            RemTxSystemValueEcho as defined in IEEE Std 802.3 78.4.2.3" "IEEE Std 802.3 30.12.3.1.20"                     �"A GET returns the value of Tw_sys_tx that
            the remote system is requesting in the receive direction.
            This object maps to the variable RemRxSystemValue as
            defined in IEEE Std 802.3 78.4.2.3." "IEEE Std 802.3 30.12.3.1.21"                    w"A GET returns the value of Tw_sys_tx that
            the local system is advertising that it is requesting in the
            receive direction and is echoed by the remote system under the
            control of the EEE DLL transmitter state diagram. This object
            maps to the variable RemRxSystemValueEcho as defined in
            IEEE Std 802.3 78.4.2.3." "IEEE Std 802.3 30.12.3.1.22"                     �"A GET returns the value of the fallback Tw_sys_tx
            that the remote system is advertising.
            This object maps to the variable RemFbSystemValue as defined
            in IEEE Std 802.3 78.4.2.3." "IEEE Std 802.3 30.12.3.1.23"                            n"A compliance statement for SNMP entities that implement
            the LLDP IEEE 802.3 organizational extension MIB.

            This group is mandatory for all agents that implement the
            LLDP IEEE 802.3 organizational extension in TX and/or RX mode.

            This version defines compliance requirements for
            V2 of the LLDP MIB."              f"The compliance statement for SNMP entities that implement
            the LLDP IEEE 802.3 organizational extension MIB.

            This group is mandatory for agents that implement the
            LLDP IEEE 802.3 organizational extension in the TX mode.

            This version defines compliance requirements for
            V2 of the LLDP MIB."              f"The compliance statement for SNMP entities that implement
            the LLDP IEEE 802.3 organizational extension MIB.

            This group is mandatory for agents that implement the
            LLDP IEEE 802.3 organizational extension in the RX mode.

            This version defines compliance requirements for
            V2 of the LLDP MIB."                   �"The collection of objects that are used to configure the
            LLDP IEEE 802.3 organizational extension implementation behavior."                 �"The collection of objects that are used to represent LLDP
            IEEE 802.3 organizational extension Local Device Information."                 �"The collection of objects that are used to represent LLDP
            IEEE 802.3 organizational extension Local Device Information."                    