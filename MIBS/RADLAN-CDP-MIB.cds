    " v1OutputPackets counter specifies the number of sent CDP packets with version 1
          v2OutputPackets counter specifies the number of sent CDP packets with version 2
          v1InputPackets counter specifies the number of received CDP packets with version 1
          v2InputPackets counter specifies the number of received CDP packets with version 2
          totalInputPackets counter specifies the total number of received CDP packets
          totalOutputPackets counter specifies the total number of sent CDP packets
          illegalChksum counter specifies the number of received CDP packets with illegal checksum.
          errorPackets counter specifies the number of received CDP packets with other error (duplicated TLVs, illegal TLVs, etc.)
          maxNeighborsExceededInMainCache counter specifies the number of times a CDP neighbor could not be stored in the main cache.
          maxNeighborsExceededInSecondaryCache specifies counter the number of times a CDP neighbor could not be stored in the secondary cache. "               B"version-v1 - cdp version 1
         version-v2 - cdp version 2  "               w"filtering - CDP packets would filtered (dropped).
         bridging  - CDP packets  bridged as regular data packets  "                                                                 G"Warning trap indicating that duplex mismatch has been detected by CDP"                 K"Warning trap indicating that voice vlan mismatch has been detected by CDP"                 L"Warning trap indicating that native vlan mismatch has been detected by CDP"                                 5"The private MIB module definition for CDP protocol." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "200809140000Z" "201008110000Z" "201010250000Z" "201011100000Z" "201011140000Z" "201101090000Z" "201102150000Z" "201202140000Z" "201503040000Z" "201603300000Z" "Initial revision." I"Added rlCdpLogMismatchVoiceVlanEnable, rlCdpLogMismatchNativeVlanEnable" �"Added rlCdpSecondaryCacheTable.
                 Added maxNeighborsExceededInSecondaryCache.
                 Renamed maxNeighborsExceeded to maxNeighborsExceededInMainCache." �"Added rlCdpGlobalLogMismatchDuplexEnable.
                 Added rlCdpGlobalLogMismatchVoiceVlanEnable.
                 Added rlCdpGlobalLogMismatchNativeVlanEnable." I"Added rlCdpTlvTable.
                 Added rlCdpAdvertiseApplianceTlv." #"Added rlCdpValidateMandatoryTlvs." �"Added rlCdpLogMismatchDuplexTrap.
                 Added rlCdpLogMismatchVoiceVlanTrap.
                 Added rlCdpLogMismatchNativeVlanTrap." )"Added rlCdpTlvSysName to rlCdpTlvTable."G"Added rlCdpTlvPowerRequestTable.
		 Added rlCdpSecondaryCacheAddressTable.
		 Added rlCdpSecondaryCacheRequestedPowerTable.
		 Added rlCdpTlvPowerConsumption, 
		       rlCdpTlvPowerRequestedRequestId, 
		       rlCdpTlvPowerRequestedPowerManagementId, 
		       rlCdpTlvSparePairPoECapabilities 
		       to rlCdpTlvEntry.
		 Added rlCdpSecondaryCachePowerAvailable, 
		       rlCdpSecondaryCachePowerConsumption,
		       rlCdpSecondaryCacheSparePairPoECapabilities, 
		       rlCdpSecondaryCacheDeviceId,
		       rlCdpSecondaryCachePortId 
		       to rlCdpSecondaryCacheEntry."""Added rlCdpSecondaryCachePowerAvailableManagementPowerLevel,
		       rlCdpSecondaryCachePowerAvailableRequestId,
		       rlCdpSecondaryCachePowerAvailablePowerManagementId,
		       rlCdpSecondaryCachePowerRequestedPowerManagementId,
		       rlCdpSecondaryCachePowerRequestedRequestId."               +"Specifies the verison of sent CDP packets"                      "Specifices the CDP source-interface, which the IP address advertised
       into TLV is accoding to this source-interface instead
       of the outgoing interface.
       value of 0 indicates no source interface.
       value must belong to an ethernet port/lag "                       �"Enable logging messages when detecting mishmatch between
       advertised and received duplex mode.
       To enable loging on specific interface set the corresponing bit."                       D"This table contains all cdp counter values, indexed by conter name"                       $"The row definition for this table."                       ."counter name used as key for counters table "                       o"the value of the counter name specisifed by rlCdpCountersName, unsuppo
        will have no entry in the tab."                       M"By setting the MIB to True, all error and traffic counters are set to zero."                       N"By setting the MIB to True, all entries from the cdp cache table is deleted."                       2"voice vlan Id, used as the Appliance Vlan-Id TLV"                       f"The (conceptual) table contains externtion for the cdpCache table.
        indexed by cdpCacheEntry."                       $"The row definition for this table."                      �"This field contains the extention of the cdpCacheVersion field
            in the cdpCache table.
            In case the neighbour advertised the SW TLV as a string with length
            larger than 160, this field contains the chacters from place 160 and on.
            Zero-length strings indicates no Version
            field (TLV) was reported in the most recent CDP
            message, or it was smaller than 160 chars  "                       a"This field indicates the time remains in seconds
            till the entry should be expried. "                       d"This field indicates the cdp version that was reported in the most recent CDP
            message."                       ="Defines CDP packets handling when CDP is globally disabled."                       �"Enable logging messages when detecting mishmatch between
       advertised and received voice VLAN.
       To enable logging on specific interface set the corresponing bit."                       �"Enable logging messages when detecting mishmatch between
       advertised and received native VLAN.
       To enable loging on specific interface set the corresponing bit."                       w"The (conceptual) table contains partial information from cdpCache table.
        indexed by rlCdpSecondaryCacheEntry."                      �"An entry (conceptual row) in the rlCdpSecondaryCacheTable,
            containing partial information received via CDP on one
            interface from one device.  Entries appear when
            a CDP advertisement is received from a neighbor
            device.  Entries disappear when CDP is disabled
            on the interface, globally or when the secondary cache is cleared"                       ""The MAC address of the neighbor."                       �"The Device's Hardware Platform prefix, as reported in the most
            recent CDP message.  The zero-length string indicates
            that no Platform field (TLV) was reported in the most
            recent CDP message."                       ^"The Device's Functional Capabilities as reported in the
            most recent CDP message."                       �"The remote device's VoIP VLAN ID, as reported in the
        most recent CDP message. This object is not instantiated if
        no Appliance VLAN-ID field (TLV) was reported in the most
        recently received CDP message."                       T"This field indicates the number of seconds
            till the entry is expried. "                       �"The remote device's available power, as reported in the
        most recent CDP message. 
	A value of 0xFFFFFFFF indicates that no Power Available TLV 
	was reported in the most recently received CDP message."                       �"The remote device's consumed power, as reported in the
        most recent CDP message. 
	A value of 0xFFFFFFFF indicates that no Power Consumption TLV 
	was reported in the most recently received CDP message."                      "The remote device's Spare-Pair (4-wire) Power-Over-Ethernet negotiation capabilities.
            The bit 'supported(0)' indicates that the device supports Spare Pair POE.
            The bit 'detectionClassificationRequired(1)' indicates that the device requires
	    detection/classification on the spare-pair.
            The bit 'desiredState(2)' indicates whether the PD device desires power 
	    on the spare pair.
            The bit 'operationalState(3)' indicates whether the PSE device supplies power 
	    on the spare pair."                       �"The remote device's Device-ID prefix, as reported in the most
            recent CDP message.  The zero-length string indicates
            that no Device-ID TLV was reported in the most recent CDP message."                       �"The remote device's Port-ID prefix, as reported in the most
            recent CDP message.  The zero-length string indicates
            that no Port-ID TLV was reported in the most recent CDP message."                       �"The remote device's Management Power Level, as reported in the
        most recent CDP message Power Available TLV. 
	A value of zero indicates that no Power Available TLV 
	was reported in the most recently received CDP message."                       �"The remote device's echoed Request ID, as reported in the
        most recent CDP message Power Available TLV. 
	A value of zero indicates that no Power Available TLV 
	was reported in the most recently received CDP message."                       �"The remote device's Power Management ID, as reported in the
        most recent CDP message Power Available TLV. 
	A value of zero indicates that no Power Available TLV 
	was reported in the most recently received CDP message."                       �"The remote device's echoed Power Management ID, as reported in the
        most recent CDP message Power Requested TLV. 
	A value of zero indicates that no Power Requested TLV 
	was reported in the most recently received CDP message."                       �"The remote device's Request ID, as reported in the
        most recent CDP message Power Requested TLV. 
	A value of zero indicates that no Power Requested TLV 
	was reported in the most recently received CDP message."                       w"Globally enable/disable logging messages when detecting mishmatch between
       advertised and received duplex mode."                       v"Globally enable/disable logging messages when detecting mishmatch between
       advertised and received voice VLAN."                       w"Globally enable/disable logging messages when detecting mishmatch between
       advertised and received native VLAN."                       e"The (conceptual) table contains the local advertised information.
        indexed by rlCdpTlvEntry."                      "An entry (conceptual row) in the rlCdpTlvTable,
            containing local information advertised by CDP on one
            interface. Entries are available only when CDP is globally enabled,
            for interfaces on which CDP is enabled and the interface state is UP."                       �"The ifIndex value of the local interface.
            A value of zero is used to access TLVs which do not
            changed between interfaces."                      �"An indication of the format of Device-Id contained in the
        corresponding instance of rlCdpTlvDeviceId.

        serialNumber(1) indicates that the value of rlCdpTlvDeviceId
        object is in the form of an ASCII string contain the device
        serial number.

        macAddress(2) indicates that the value of rlCdpTlvDeviceId
        object is in the form of Layer 2 MAC address.

        other(3) indicates that the value of rlCdpTlvDeviceId object
        is in the form of a platform specific ASCII string contain
        info that identifies the device. For example: ASCII string
        contains serialNumber appended/prepened with system name."                       T"The Device-ID string as will be advertised in subsequent CDP
            messages."                       +"The Inet address type of rlCdpTlvAddress1"                      &"The (first) network-layer address of the device
          as will be advertised in the Address TLV of subsequent
          CDP messages.  For example, if the corresponding instance of
          rlCdpTlvAddress1Type had the value 'ipv4(1)', then this object
          would be an IPv4-address."                       +"The Inet address type of rlCdpTlvAddress2"                      &"The (first) network-layer address of the device
          as will be advertised in the Address TLV of subsequent
          CDP messages.  For example, if the corresponding instance of
          rlCdpTlvAddress2Type had the value 'ipv6(2)', then this object
          would be an IPv6-address."                       +"The Inet address type of rlCdpTlvAddress3"                      &"The (first) network-layer address of the device
          as will be advertised in the Address TLV of subsequent
          CDP messages.  For example, if the corresponding instance of
          rlCdpTlvAddress3Type had the value 'ipv6(2)', then this object
          would be an IPv6-address."                       �"The Port-ID string as will be advertised in subsequent CDP messages from
            this interface.  This will typically be the value of the ifName
            object (e.g., 'Ethernet0')."                       �"The Device's Functional Capabilities as will be advertised in
            subsequent CDP messages.  For latest set of specific
            values, see the latest version of the CDP specification." 3"Cisco Discovery Protocol Specification, 10/19/94."                     F"The Version string as will be advertised in subsequent CDP messages."                       ^"The Device's Hardware Platform as will be advertised in subsequent
            CDP messages."                       g"The local device's interface's native VLAN, as will be
        advertised in subsequent CDP messages."                       g"The local device's interface's duplex mode, as will be advertised
        in subsequent CDP messages."                       �"The local device's Appliance ID, as will be advertised in subsequent
        CDP messages. A value of zero denotes no Appliance VLAN-ID TLV will be
        advertised in subsequent CDP messages."                       �"The local device's VoIP VLAN ID, as will be advertised in subsequent
        CDP messages. A value of zero denotes no Appliance VLAN-ID TLV will be
        advertised in subsequent CDP messages."                       �"The local device's interface's extended trust mode, as will be advertised
        in subsequent CDP messages. A value of zero indicates the absence of extended
        trust."                      A"The COS value with which all packets received on an
         untrusted port should be marked by a simple switching device
         which cannot itself classify individual packets.
         This TLV only has any meaning if corresponding instance of rlCdpTlvExtendedTrust
         indicates the absence of extended trust."                       �"The Power Available TLV Request-ID field echoes the Request-ID field
        last received in a Power Requested TLV.  It is 0 if no Power Requested TLV
        has been received since the interface last transitioned to ifOperState == Up."                       4"The Power Available TLV Power-Management-ID field."                      "The Power Available TLV Available-Power field indicates the
        number of milliwatts of power available to powered devices at the
        time this object is instatiated.
	A value of 0xFFFFFFFF indicates that the Power Available TLV is not advertised."                      "The Power Available TLV Management-Power-Level field indicates the
        number of milliwatts representing the supplier's request to the powered
        device for its Power Consumption TLV. A value of 0xFFFFFFFF indicates
        the local device has no preference."                       C"The sysName MIB as will be advertised in subsequent CDP messages."                      "The value of Power Consumption TLV indicates the maximum amount of
         power, in milliwatts, expected to be obtained and consumed from
         the interface over which the CDP packet is sent.
	 A value of 0xFFFFFFFF indicates the TLV is not advertised."                       w"The Power Requested TLV Request-ID field.
	 A value of zero indicates that the Power Requested TLV is not advertised."                       �"The Power Requested TLV Power-Management-ID field echoes the Management-
         Power-ID field in the last received Power Available TLV, or to 0, 
	 if no Power Available TLV has been received."                      �"The capabilities advertised in the Spare-Pair POE TLV.
	The bit 'supported(0)' indicates that the device supports Spare Pair POE.
	The bit 'detectionClassificationRequired(1)' indicates that the device requires
	detection/classification on the spare-pair.
	The bit 'desiredState(2)' indicates whether the PD device desires power 
	on the spare pair.
	The bit 'operationalState(3)' indicates whether the PSE device supplies power 
	on the spare pair."                       �"The (conceptual) table contains the local advertised requested power levels
	 in Power Requested TLV.
        indexed by rlCdpTlvPowerRequestEntry."                      ."An entry (conceptual row) in the rlCdpTlvPowerRequestTable,
            containing locally requested power levels advertised by CDP on one
            interface. Entries are available only when CDP is globally enabled,
            for interfaces on which CDP is enabled and the interface state is UP."                       G"An index to the list of Requested-Power-Level in Power Requested TLV."                       >"A possible value of the Power Consumption TLV, in milliwatts"                       �"The (conceptual) table containing the list of
	    network-layer addresses of a neighbor interface,
	    as reported in the Address TLV of the most recently
	    received CDP message and stored in the secondary cache."                      �"An entry (conceptual row) in the rlCdpSecondaryCacheAddressTable,
            containing the list of network-layer addresses of a neighbor interface,
	    as reported in the Address TLV of the most recently received CDP message 
	    and stored in the secondary cache. Entries are available only when CDP is 
	    globally enabled, for interfaces on which CDP is enabled and the interface 
	    state is UP."                       b"The index of the address entry for a given
            cdpCacheIfIndex,cdpCacheDeviceIndex pair."                       x"An indication of the type of address contained in the
            corresponding instance of rlCdpSecondaryCacheAddress"                      "A network-layer address of the device as reported in the most 
	    recent CDP message's Address TLV. For example, if the the 
	    corresponding instance of rlCdpSecondaryCacheAddressType had the
            value 'ip(1)', then this object would be an IPv4-address."                       �"The (conceptual) table containing the list of
	    requested power levels by a remote device,
	    as reported in the Power Requested TLV of the most recently
	    received CDP message and stored in the secondary cache."                      �"An entry (conceptual row) in the rlCdpSecondaryCacheRequestedPowerTable,
            containing the list of requested power levels by a remote device,
	    as reported in the Power Requested TLV of the most recently received CDP message 
	    and stored in the secondary cache. Entries are available only when CDP is 
	    globally enabled, for interfaces on which CDP is enabled and the interface 
	    state is UP."                       p"The index of the requested power level entry for a given
            cdpCacheIfIndex,cdpCacheDeviceIndex pair."                       D"A requested power level in the Power Requested TLV, in milliwatts."                       �"By setting the MIB to True Appliance VLAN-ID TLV may be advertised.
         A value of False will prevent this TLV from being advertised."                      o"By setting the MIB to true all mandatory TLVs 0x0001-0x0006 will be validated.
         Incoming CDP frames without any of the TLVs will be dropped.
         A value of false indicates that only the Device ID TLV (0x0001) is mandatory.
         Frames containing Device ID TLV will be processed,
                 regardless of whether other TLVs are present or not."                       F"This table contains all CDP counter values, indexed by interface id."                       $"The row definition for this table."                       ;"Interface id, used as index for interface counters table."                       -"Num of received packets on rlCdpInterfaceId"                       0"Num of v1 received packets on rlCdpInterfaceId"                       0"Num of v2 received packets on rlCdpInterfaceId"                       +"Num of sent packets from rlCdpInterfaceId"                       ."Num of v1 sent packets from rlCdpInterfaceId"                       ."Num of v2 sent packets from rlCdpInterfaceId"                       4"Num of received packets with illegal CDP checksum."                       f"specifies the number of received CDP packets with other error (duplicated TLVs, illegal TLVs, etc.) "                       V"specifies the number of times a CDP neighbor could not be stored in the main cache. "                       [" specifies the number of times a CDP neighbor could not be stored in the secondary cache."                       �"By setting the scalar to a interface id , all error and traffic counters of this interface
         are set to zero.
         To clear the counters for ALL interfaces set the scalar to 0x0FFFFFFF"                                  