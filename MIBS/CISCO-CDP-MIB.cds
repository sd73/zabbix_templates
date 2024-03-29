�-- *****************************************************************
-- CISCO-CDP-MIB.my:  CDP MIB file
--
-- Oct 1994, Arun Sastry
-- November 2001, Edward Pham
-- July 2004, Arvind Parthasarathy
-- March 2005, Praveen k Arora
-- March 2005, Karthikeyan Veerapandian
-- Copyright (c) 1994-1998, 1999, 2001, 2004, 2005 by cisco Systems, Inc.
-- All rights reserved.
-- *****************************************************************
--
                                                     a"The MIB module for management of the Cisco Discovery
                Protocol in Cisco devices.""       Cisco Systems
                        Customer Service

                Postal: 170 West Tasman Drive,
                        San Jose CA 95134-1706.
                        USA

                   Tel: +1 800 553-NETS

                E-mail: cs-snmp@cisco.com" "200503210000Z" "200503140000Z" "200111230000Z" "200104230000Z" "200011220000Z" "9812100000Z" "9809160000Z" "9607080000Z" "9508150000Z" "9507270000Z" "9501250000Z" @"Added the following object:
                 cdpInterfaceName." �"Added cdpCtAddressTable which contains the following
                 objects:
                 cdpCtAddressIndex,
                 cdpCtAddressType,
                 cdpCtAddress." �"Added cdpInterfaceExtTable which contains the following
                 objects:
                 cdpInterfaceExtendedTrust,
                 cdpInterfaceCosForUntrustedPort." u"Added the following objects:
                 cdpGlobalDeviceIdFormatCpb,
                 cdpGlobalDeviceIdFormat.""Added the following objects:
                 cdpCacheApplianceID,
                 cdpCacheVlanID,
                 cdpCachePowerConsumption,
                 cdpCacheMTU,
                 cdpCachePrimaryMgmtAddrType,
                 cdpCachePrimaryMgmtAddr,
                 cdpCacheSecondaryMgmtAddrType,
                 cdpCacheSecondaryMgmtAddr,
                 cdpCacheLastChange,
                 cdpCachePhysLocation,
                 cdpCacheSysName,
                 cdpCacheSysObjectID,
                 cdpGlobalLastChange" !"Added cdpGlobalDeviceId object." �"added these objects to cdpCacheTable:
                cdpCacheVTPMgmtDomain,
                cdpCacheNativeVLAN,
                cdpCacheDuplex.
                " Y"Obsolete cdpInterfaceMessageInterval and newly
                define cdpGlobal object." S"Specify a correct (non-negative) range for several
                index objects." /"Correct range of cdpInterfaceMessageInterval." 5"Move from ciscoExperiment to ciscoMgmt oid subtree."                       ]"The (conceptual) table containing the status of CDP on
            the device's interfaces."                       o"An entry (conceptual row) in the cdpInterfaceTable,
            containing the status of CDP on an interface."                      "The ifIndex value of the local interface.

            For 802.3 Repeaters on which the repeater ports do not
            have ifIndex values assigned, this value is a unique
            value for the port, and greater than any ifIndex value
            supported by the repeater; in this case, the specific
            port is indicated by corresponding values of
            cdpInterfaceGroup and cdpInterfacePort, where these
            values correspond to the group number and port number
            values of RFC 1516."                       �"An indication of whether the Cisco Discovery Protocol
            is currently running on this interface.  This variable
            has no effect when CDP is disabled (cdpGlobalRun = FALSE)."                       y"The interval at which CDP messages are to be generated
            on this interface.  The default value is 60 seconds."               {-- replaced by cdpGlobalMessageInterval
--  this object should be applied to the
--  whole system instead of per interface
       �"This object is only relevant to interfaces which are
            repeater ports on 802.3 repeaters.  In this situation,
            it indicates the RFC1516 group number of the repeater
            port which corresponds to this interface."                       �"This object is only relevant to interfaces which are
            repeater ports on 802.3 repeaters.  In this situation,
            it indicates the RFC1516 port number of the repeater
            port which corresponds to this interface."                       V"The name of the local interface as advertised by
             CDP in the Port-ID TLV"                       ["This table contains the additional CDP configuration on
         the device's interfaces."                       �"An entry in the cdpInterfaceExtTable contains the values
         configured for Extented Trust TLV and COS (Class of Service)
         for Untrusted Ports TLV on an interface which supports the
         sending of these TLVs."                      �"Indicates the value to be sent by Extended Trust TLV.

         If trusted(1) is configured, the value of Extended Trust TLV
         is one byte in length with its least significant bit equal to
         1 to indicate extended trust. All other bits are 0.

         If noTrust(2) is configured, the value of Extended Trust TLV
         is one byte in length with its least significant bit equal to
         0 to indicate no extended trust. All other bits are 0."                       @"Indicates the value to be sent by COS for Untrusted Ports TLV."                           k"The (conceptual) table containing the cached
            information obtained via receiving CDP messages."                      O"An entry (conceptual row) in the cdpCacheTable,
            containing the information received via CDP on one
            interface from one device.  Entries appear when
            a CDP advertisement is received from a neighbor
            device.  Entries disappear when CDP is disabled
            on the interface, or globally."                      �"Normally, the ifIndex value of the local interface.
            For 802.3 Repeaters for which the repeater ports do not
            have ifIndex values assigned, this value is a unique
            value for the port, and greater than any ifIndex value
            supported by the repeater; the specific port number in
            this case, is given by the corresponding value of
            cdpInterfacePort."                       X"A unique value for each device from which CDP messages
            are being received."                       n"An indication of the type of address contained in the
            corresponding instance of cdpCacheAddress."                      Q"The (first) network-layer address of the device
          as reported in the Address TLV of the most recently received
          CDP message.  For example, if the corresponding instance of
          cacheAddressType had the value 'ip(1)', then this object
          would be an IPv4-address.  If the neighbor device is
          SNMP-manageable, it is supposed to generate its CDP messages
          such that this address is one at which it will receive SNMP
          messages. Use cdpCtAddressTable to extract the remaining
          addresses from the Address TLV received most recently."                       �"The Version string as reported in the most recent CDP
            message.  The zero-length string indicates no Version
            field (TLV) was reported in the most recent CDP
            message."                       �"The Device-ID string as reported in the most recent CDP
            message.  The zero-length string indicates no Device-ID
            field (TLV) was reported in the most recent CDP
            message."                      ""The Port-ID string as reported in the most recent CDP
            message.  This will typically be the value of the ifName
            object (e.g., 'Ethernet0').  The zero-length string
            indicates no Port-ID field (TLV) was reported in the
            most recent CDP message."                       �"The Device's Hardware Platform as reported in the most
            recent CDP message.  The zero-length string indicates
            that no Platform field (TLV) was reported in the most
            recent CDP message."                      A"The Device's Functional Capabilities as reported in the
            most recent CDP message.  For latest set of specific
            values, see the latest version of the CDP specification.
            The zero-length string indicates no Capabilities field
            (TLV) was reported in the most recent CDP message." 3"Cisco Discovery Protocol Specification, 10/19/94."                    "The VTP Management Domain for the remote device's interface,
        as reported in the most recently received CDP message.
        This object is not instantiated if no VTP Management Domain field
        (TLV) was reported in the most recently received CDP message." '"managementDomainName in CISCO-VTP-MIB"                     �"The remote device's interface's native VLAN, as reported in the
        most recent CDP message.  The value 0 indicates
        no native VLAN field (TLV) was reported in the most
        recent CDP message."                       �"The remote device's interface's duplex mode, as reported in the
        most recent CDP message.  The value unknown(1) indicates
        no duplex mode field (TLV) was reported in the most
        recent CDP message."                       �"The remote device's Appliance ID, as reported in the
        most recent CDP message. This object is not instantiated if
        no Appliance VLAN-ID field (TLV) was reported in the most
        recently received CDP message."                       �"The remote device's VoIP VLAN ID, as reported in the
        most recent CDP message. This object is not instantiated if
        no Appliance VLAN-ID field (TLV) was reported in the most
        recently received CDP message."                       �"The amount of power consumed by remote device, as reported
        in the most recent CDP message. This object is not instantiated
        if no Power Consumption field (TLV) was reported in the most
        recently received CDP message."                      
"Indicates the size of the largest datagram that can be
        sent/received by remote device, as reported in the most recent
        CDP message. This object is not instantiated if no MTU field
        (TLV) was reported in the most recently received CDP message."                      	"Indicates the value of the remote device's sysName MIB object.
        By convention, it is the device's fully qualified domain name.
        This object is not instantiated if no sysName field (TLV) was
        reported in the most recently received CDP message."                       �"Indicates the value of the remote device's sysObjectID MIB
        object. This object is not instantiated if no sysObjectID field
        (TLV) was reported in the most recently received CDP message."                       y"An indication of the type of address contained in the
            corresponding instance of cdpCachePrimaryMgmtAddress."                      "This object indicates the (first) network layer
            address at which the device will accept SNMP messages
            as reported in the first address in the
            Management-Address TLV of the most recently received
            CDP message.  If the corresponding instance of
            cdpCachePrimaryMgmtAddrType has the value 'ip(1)',
            then this object would be an IP-address. If the
            remote device is not currently manageable via any
            network protocol, then it reports the special value
            of the IPv4 address 0.0.0.0, and that address is
            recorded in this object.  If the most recently received
            CDP message did not contain the Management-Address
            TLV, then this object is not instanstiated."                       {"An indication of the type of address contained in the
            corresponding instance of cdpCacheSecondaryMgmtAddress."                      "This object indicates the alternate network layer
            address at which the device will accept SNMP messages
            as reported in the second address in the
            Management-Address TLV of the most recently received
            CDP message.  If the corresponding instance of
            cdpCacheSecondaryMgmtAddrType has the value 'ip(1)',
            then this object would be an IP-address. If the
            remote device reports the special value of the
            IPv4 address 0.0.0.0, that address is recorded in
            this object.  If the most recently received CDP
            message did not contain the Management-Address
            TLV, or if that TLV contained only one address, then
            this object is not instanstiated."                      k"Indicates the physical location, as reported by the most recent
        CDP message, of a connector which is on, or physically connected
        to, the remote device's interface over which the CDP packet is
        sent. This object is not instantiated if no Physical Location
        field (TLV) was reported by the most recently received CDP
        message."                      "Indicates the time when this cache entry was last changed.
        This object is initialised to the current time when the entry
        gets created and updated to the current time whenever the value
        of any (other) object instance in the corresponding row is
        modified."                      �"The (conceptual) table containing the list of
            network-layer addresses of a neighbor interface,
            as reported in the Address TLV of the most recently
            received CDP message. The first address included in
            the Address TLV is saved in cdpCacheAddress.  This
            table contains the remainder of the addresses in the
            Address TLV."                      L"An entry (conceptual row) in the cdpCtAddressTable,
            containing the information on one address received via CDP
            on one interface from one device.  Entries appear
            when a CDP advertisement is received from a neighbor
            device, with an Address TLV.  Entries disappear when
            CDP is disabled on the interface, or globally. An entry
            or entries would also disappear if the most recently
            received CDP packet contain fewer address entries in the
            Address TLV, than are currently present in the CDP cache."                       �"The index of the address entry for a given
            cdpCacheIfIndex,cdpCacheDeviceIndex pair. It
            has the value N-1 for the N-th address in the
            Address TLV"                       k"An indication of the type of address contained in the
            corresponding instance of cdpCtAddress."                      �"The N-th network-layer address of the device as reported
            in the most recent CDP message's Address TLV, where N-1 is
            given by the value of cdpCtAddressIndex. For example, if
            the the corresponding instance of cdpCtAddressType had the
            value 'ip(1)', then this object would be an IPv4-address.
            NOTE - The 1st address received in the Address TLV is
                   available using cdpCacheAddress"                           �"An indication of whether the Cisco Discovery Protocol
            is currently running.  Entries in cdpCacheTable are
            deleted when CDP is disabled."                       f"The interval at which CDP messages are to be generated.
            The default value is 60 seconds."                       d"The time for the receiving device holds CDP message.
            The default value is 180 seconds."                       �"The device ID advertised by this device. The format of this
         device id is characterized by the value of
         cdpGlobalDeviceIdFormat object."                       �"Indicates the time when the cache table was last changed. It
        is the most recent time at which any row was last created,
        modified or deleted."                      �"Indicate the Device-Id format capability of the device.

         serialNumber(0) indicates that the device supports using
         serial number as the format for its DeviceId.

         macAddress(1) indicates that the device supports using
         layer 2 MAC address as the format for its DeviceId.

         other(2) indicates that the device supports using its
         platform specific format as the format for its DeviceId."                      "An indication of the format of Device-Id contained in the
        corresponding instance of cdpGlobalDeviceId. User can only
        specify the formats that the device is capable of as
        denoted in cdpGlobalDeviceIdFormatCpb object.

        serialNumber(1) indicates that the value of cdpGlobalDeviceId
        object is in the form of an ASCII string contain the device
        serial number.

        macAddress(2) indicates that the value of cdpGlobalDeviceId
        object is in the form of Layer 2 MAC address.

        other(3) indicates that the value of cdpGlobalDeviceId object
        is in the form of a platform specific ASCII string contain
        info that identifies the device. For example: ASCII string
        contains serialNumber appended/prepened with system name."                               +"The compliance statement for the CDP MIB."         --- superseded by ciscoCdpMIBComplianceV11R01
     +"The compliance statement for the CDP MIB."         --- superseded by ciscoCdpMIBComplianceV11R02
     +"The compliance statement for the CDP MIB."         --- superseded by ciscoCdpMIBComplianceV12R02
     +"The compliance statement for the CDP MIB."         (-- superseded by ciscoCdpMIBCompliance5
     +"The compliance statement for the CDP MIB."         --- superseded by ciscoCdpMIBComplianceV12R03
     +"The compliance statement for the CDP MIB."   ?"This group is mandatory for agents implementing CDP version 2" ~"This group is mandatory for agents implementing Extended Trust
         TLV and COS for Untrusted Port TLV of CDP version 2."                 P"A collection of objects for use with the Cisco
            Discovery Protocol."           (-- superseded by ciscoCdpMIBGroupV11R01
     P"A collection of objects for use with the Cisco
            Discovery Protocol."           (-- superseded by ciscoCdpMIBGroupV11R02
     P"A collection of objects for use with the Cisco
            Discovery Protocol."           (-- superseded by ciscoCdpMIBGroupV12R02
     P"A collection of objects for use with the Cisco
            Discovery Protocol."           (-- superseded by ciscoCdpMIBGroupV12R03
     Z"A collection of objects for use with the Cisco
            Discovery Protocol version 2."                 �"A collection of objects for use with the Cisco
            Discovery Protocol version 2 to configure the value
            for Extended Trust TLV and COS for Untrusted Port TLV."                 �"A collection of objects for use with the Cisco
            Discovery Protocol to obtain the addresses from
            the Address TLV of a received CDP packet."                 P"A collection of objects for use with the Cisco
            Discovery Protocol."                                