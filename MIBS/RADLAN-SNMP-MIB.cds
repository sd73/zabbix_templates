    h"Represents the UDP address of NMS and the MRID through which it is
             connected in order to access the agent:
               octets   contents        encoding
                1-4     IP-address      network-byte order
                5-6     UDP-port        network-byte order
                7-8     MRID            network-byte order
            "              a"Represents the UDP address of NMS and the MRID through which it is
             connected in order to access the agent:
               octets   contents        encoding
                1-16    IPv6 address    network-byte order
                17-18   UDP-port        network-byte order
                19-20   MRID            network-byte order      "              �"Represents the UDP address of NMS (consisting of an IPv6 address,
         a zone index and a port number) and the MRID through which it is
         connected in order to access the agent:
          octets       contents         encoding
           1-16        IPv6 address     network-byte order
          17-20        zone index       network-byte order
          21-22        UDP-port         network-byte order
          23-24        MRID             network-byte order        "                                                                                         8"Private MIB module for SNMP support in Radlan devices." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "201102110000Z" "201002150000Z" "200709100000Z" "200606060000Z" "0410200000Z" k"Added support in usmUserTable augment for authentication and
                   privacy passwords saving." �"1. Changed SYNTAX of rlSnmpEngineID from
                      OCTET STRING (SIZE(5..32))to SnmpEngineID.
                   2. Added rlInet2EngineIdTable." "Added rlEvents MIB." "Added rlSNMPenable object." "Initial version of this MIB."                   U"The level of the tests done when configuring an entry in the snmpTargetParamsTable."                       U"The level of the tests done when configuring an entry in the snmpNotifyFilterTable."                      W"A variable for setting the router's local engineID value.
         Setting this variable will effect the value of snmpEngineID. Setting this
         variable to the value '00 00 00 00 00'H will cause snmpEngineID to get
         an automatically created value based on the device basic MAC address.
         This method of setting the agent's engineID is recommended for stand-alone
         systems. Setting this variable to any other (valid) value will set snmpEngineID
         to this value. Setting this variable to all 'ff'H or all zeros is not
         allowed, with the exception of the value '00 00 00 00 00'H.
         The last method is recommended for stackable system, in order for the
         engineID to be unique within an administrative domain.
         Setting this value (to a value different then the default value)
         is required before configuring users data in usmUserTable and
         vacmSecurityToGroupTable.
         Changing the value of this variable has 2 side-effects:
         - All user data will be deleted, including: all usmUserTable configured entries and
           vacmSecurityToGroupTable entries  where vacmSecurityModel = 3.
         - All snmpCommunityTable entries with snmpCommunityContextEngineID value
           equal to old rlSnmpEngineID value, will be updated with the new
           rlSnmpEngineID value."                      �"This table maps ip addresses to indices. The output index
     is used as a component in some SNMPv3 tables fields (for example:
     snmpTargetAddrName). Ipv4 addresses are not supported by this table.
     Note: in getNext operations on this table, only mappings which are in use
     in snmpTargetAddrTable (using rlTargetAddrMagicUsedInIndex) will be retreived.
     The mapped index does not include delimiters which are forbidden
     in SNMPv3 tag values (and thus can be used in tag fields). "                       %" The row definition for this table."                       "Type of NMS IP address."                       "NMS IP address."                       +"The index mapped for this row ip address."                       ,"This table extends rlTargetAddrExtEntry.  "                       %" The row definition for this table."                      h"Setting this field to a 4 octets length value means that ip mapping (using rlSNMPv3IpAddrToIndexTable)
     is used for this row. If such a mapping is not used, a 0-length octet string
     value should be used for this field (this is also the default).
     This field value is determined only once, upon creation of an entry in the
     snmpTargetAddrTable. A change in its value while updating an existing entry
     is ignored.
     Prior to creating a snmpTargetAddrTable entry with a 4 octets length value for
     this field, the rlSNMPv3IpAddrToIndexTable must be used in order to retrieve
     this value."                       @"This table maps inet addresses to SNMPv3 engine identifiers.  "                       %" The row definition for this table."                       /"Inet address type of the mapped inet address."                       "Mapped inet address."                       w"The SNMPv3 engine id to which the address denoted by rlInet2EngineIdAddressType and rlInet2EngineIdAddress is mapped."                       ("The management control for this table."                       $"This table extends usmUserEntry.  "                       %" The row definition for this table."                      ^"Authentication password.
     Setting the field to a non zero-length value will convert the given password
     to a localized authentication key, appropriate to the corresponding
     usmUserAuthProtocol field. The key is localized using the appropriate
     usmUserEngineID field, according to the algorithm specified in RFC 2574.
     This field may be set to a non zero-length value if the following conditions hold:
     1) This is the creation of the entry.
     2) The value of the corresponding usmUserCloneFrom field is zeroDotZero.
     Setting the field in any other case will cause no effect."                      P"Privacy password.
     Setting the field to a non zero-length value will convert the given password
     to a localized privacy key, appropriate to the corresponding
     usmUserAuthProtocol field. The key is localized using the appropriate
     usmUserEngineID field, according to the algorithm specified in RFC 2574.
     This field may be set to a non zero-length value if the following conditions hold:
     1) This is the creation of the entry.
     2) The value of the corresponding usmUserCloneFrom field is zeroDotZero.
     Setting the field in any other case will cause no effect."                           �"The SNMPv2 over UDP transport domain, used when Multi-Instance Router
             is supported (more than one MIR instance exist).
             The corresponding transport address is of type RlSnmpUDPMridAddress."               "The SNMPv2 over UDP over IPv6 transport domain, used when Multi-Instance Router
         is supported (more than one MIR instance exist).
         The corresponding transport address is of type RlSnmpUDPIpv6MridAddress
         for global IPv6 addresses."              "The SNMPv2 over UDP over IPv6 transport domain, used when Multi-Instance Router
         is supported (more than one MIR instance exist).
         The corresponding transport address is of type RlSnmpUDPIpv6zMridAddress
         for scoped IPv6 addresses with a zone index."               @"A table for determining the Mrid for the current SNMP request."                       %" The row definition for this table."                      �"The router instance the NMS wants to manage in the current SNMP request.
     The value of this object, when attaching a variable instance of the
     rlSnmpRequestManagedMridTable to an SNMP request, will determine the
     managed Mrid for this request.
     It is important to mention that the variable insance must be attached
     as the first variable in the PDU in order to influence all variables."                       "The status of this entry."                       "Enables or disables SNMP."                       ""The community table of the agent"                       %" The row definition for this table."                       j"Address type of the management station that will be allowed to
    communicate with the agent IP address"                       e"Address of the management station that will be allowed to
    communicate with the agent IP address"                       ]"The community string with which the management
     station will communicate with the agent"                       /"The allowed access to this management station"                       Z"Should the agent send traps to the management station,
     and what version is required"                       \"The status of this entry. If the status is invalid the
    community entry will be deleted"                       �"If enabled the device will only receive SNMP messages from the port,
     through which this NMS is reachable from the device."                       "The owner of this community"                      9"The transport protocol (usually UDP) port to which traps to the
    management station represebted by this entry will be sent. The default
    is the well-known IANA assigned port number for SNMP traps.
    This object is relevant only if rndCommunityInetTrapsEnable has a value
    different from trapsDisable."                       "For testing purposes"                       "For testing purposes"                       4"The MRID related configurations table of the agent"                       %" The row definition for this table."                       �"The router instance connecting the NMS who accessed the agent
     through the community table entry corresponding to the keys of this entry."                       �"The router instance currently managed by the NMS who accessed the agent
     through the community table entry corresponding to the keys of this entry "                           �" The rlEventsPollerId is the 1st key in all the rlEvents tables. Each poller must first GET from this
      object his Id. The agent will ensure uniqueness."                       �"The default polling time. Will be used to detrermined whether the events configured by a poller in
      rlEventsTable can be destroyed, in absence of an entry for this poller in the rlEventsPollingControlTable."                      T" SETting a id of an active poller will cause all the rows of this poller in the rlEventsTable
      to be destroyed. This is equivalent to SETting rlEventsStatus of each row of this poller to 'destroy'.
      GET operation on this variable is meaningless, and the value 0 will be returned in this case (actual
      pollers start from 1)."                       4"The table showing the events mask for each client."                       %" The row definition for this table."                       6"The poller id whose events are shown in this table  "                      Z"The semantics of the rlEventsMask is an array of timestamps (each 4 octets
     containing one time stamp). Each timestamp is in TimeTicks units encoded in network order.
     Thus the mask can contain up to 40 timestamps. If a place in the array is empty it will contain
     0.
     Each timestamp shows the time of the last occurrence of the event whose
     rlEventIndexKey in the rlEventsTable for this client id is the same as its index in the array.
     Each for bytes of the rlEventsMask will contain the timestamp in TimeTicks
     units encoded in network order of the last time the event "                       L"The table relating the events recorded to the indices in the rlEventsMask."                       %" The row definition for this table."                       @"The poller id whose event definitions are shown in this table."                       �"The event id of the polled event. This is the notification object identifier (in case of a
     SNMPV2 notification) or the translation to SNMPv2 notation of an SNMPv1 trap according to the RFC 3584
     (SNMP versions coexistence)."                       g"Index in the rlEventsMaskMask of this poller id that has been allocated for this event by the device."                      "RowStatus for this table. Note that the device may refuse for resource shortage reasons to honour a create request
     for this poller even if apparently there still is room in his rlEventsMaskMask (i.e. the poller has requested
     monitoring of less than 40 events). "                       V"The polling control table for a poller. Currently contain only the polling interval."                       %" The row definition for this table."                       ?"The poller id whose polling controls are shown in this table."                       �"The desired polling interval for this poller. If the device has determined that the poller has not
     polled the device for 3 times this polling interval it may destroy all the data related to this poller
     in the rlevents database "                           R"This table maintains the user agents to which the SNMP client will send requests"                       %" The row definition for this table."                       ""Type of Remote Agent IP address."                       "Remote Agent IP address."                       �"Remote Agent SNMPv1/v2 community string. Either this field or rlSnmpClientAgentsUsername
     must be configured to a non-empty string."                       &"Remote Agent SNMPv3 username string."                       ."Remote Agent SNMPv3 authentication protocol."                       '"Remote Agent SNMPv3 privacy protocol."                       z"Remote Agent SNMPv3 authentication key. The key size should be consistent 
     with the chosen authentication protocol."                       l"Remote Agent SNMPv3 privacy key. The key size should be consistent 
     with the chosen privacy protocol."                       �"The default timeout between 2 successive retries of sending SNMP requests to
     the agent. An application using the SNMP client may provide its own timeout
     value."                       �"The default number of retries the SNMP client should preform, in case no
     response is received from the agent. An application using the SNMP client
     may provide its own retries value. "                       ("The management control for this table."                                  