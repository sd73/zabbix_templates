    
�"This TC describes the format of a chassis identifier string.
            Objects of this type are always used with an associated
            LldpChassisIdSubtype object, which identifies the format of
            the particular LldpChassisId object instance.

            If the associated LldpChassisIdSubtype object has a value of
            'chassisComponent(1)', then the octet string identifies
            a particular instance of the entPhysicalAlias object
            (defined in IETF RFC 2737) for a chassis component (i.e.,
            an entPhysicalClass value of 'chassis(3)').

            If the associated LldpChassisIdSubtype object has a value
            of 'interfaceAlias(2)', then the octet string identifies
            a particular instance of the ifAlias object (defined in
            IETF RFC 2863) for an interface on the containing chassis.
            If the particular ifAlias object does not contain any values,
            another chassis identifier type should be used.

            If the associated LldpChassisIdSubtype object has a value
            of 'portComponent(3)', then the octet string identifies a
            particular instance of the entPhysicalAlias object (defined
            in IETF RFC 2737) for a port or backplane component within
            the containing chassis.

            If the associated LldpChassisIdSubtype object has a value of
            'macAddress(4)', then this string identifies a particular
            unicast source address (encoded in network byte order and
            IEEE 802.3 canonical bit order), of a port on the containing
            chassis as defined in IEEE Std 802-2001.

            If the associated LldpChassisIdSubtype object has a value of
            'networkAddress(5)', then this string identifies a particular
            network address, encoded in network byte order, associated
            with one or more ports on the containing chassis.  The first
            octet contains the IANA Address Family Numbers enumeration
            value for the specific address type, and octets 2 through
            N contain the network address value in network byte order.

            If the associated LldpChassisIdSubtype object has a value
            of 'interfaceName(6)', then the octet string identifies
            a particular instance of the ifName object (defined in
            IETF RFC 2863) for an interface on the containing chassis.
            If the particular ifName object does not contain any values,
            another chassis identifier type should be used.

            If the associated LldpChassisIdSubtype object has a value of
            'local(7)', then this string identifies a locally assigned
            Chassis ID."              8"The value of a management address associated with the LLDP
            agent that may be used to reach higher layer entities to
            assist discovery by network management.

            It should be noted that appropriate security credentials,
            such as SNMP engineId, may be required to access the LLDP
            agent using a management address.  These necessary credentials
            should be known by the network management and the objects
            associated with the credentials are not included in the
            LLDP agent."             "IEEE 802.1AB-2004 9.5.9.5"�"This TC describes the basis of a particular type of
            interface associated with the management address.

            The enumeration 'unknown(1)' represents the case where the
            interface is not known.

            The enumeration 'ifIndex(2)' represents interface identifier
            based on the ifIndex MIB object.

            The enumeration 'systemPortNumber(3)' represents interface
            identifier based on the system port numbering convention."              I"This TC describes the source of a particular type of port
            identifier used in the LLDP MIB.

            The enumeration 'interfaceAlias(1)' represents a port
            identifier based on the ifAlias MIB object, defined in IETF
            RFC 2863.

            The enumeration 'portComponent(2)' represents a port
            identifier based on the value of entPhysicalAlias (defined in
            IETF RFC 2737) for a port component (i.e., entPhysicalClass
            value of 'port(10)'), within the containing chassis.

            The enumeration 'macAddress(3)' represents a port identifier
            based on a unicast source address (encoded in network
            byte order and IEEE 802.3 canonical bit order), which has
            been detected by the agent and associated with a particular
            port (IEEE Std 802-2001).

            The enumeration 'networkAddress(4)' represents a port
            identifier based on a network address, detected by the agent
            and associated with a particular port.

            The enumeration 'interfaceName(5)' represents a port
            identifier based on the ifName MIB object, defined in IETF
            RFC 2863.

            The enumeration 'agentCircuitId(6)' represents a port
            identifier based on the agent-local identifier of the circuit
            (defined in RFC 3046), detected by the agent and associated
            with a particular port.

            The enumeration 'local(7)' represents a port identifier
            based on a value locally assigned."              	A"This TC describes the format of a port identifier string.
            Objects of this type are always used with an associated
            LldpPortIdSubtype object, which identifies the format of the
            particular LldpPortId object instance.

            If the associated LldpPortIdSubtype object has a value of
            'interfaceAlias(1)', then the octet string identifies a
            particular instance of the ifAlias object (defined in IETF
            RFC 2863).  If the particular ifAlias object does not contain
            any values, another port identifier type should be used.

            If the associated LldpPortIdSubtype object has a value of
            'portComponent(2)', then the octet string identifies a
            particular instance of the entPhysicalAlias object (defined
            in IETF RFC 2737) for a port or backplane component.

            If the associated LldpPortIdSubtype object has a value of
            'macAddress(3)', then this string identifies a particular
            unicast source address (encoded in network byte order
            and IEEE 802.3 canonical bit order) associated with the port
            (IEEE Std 802-2001).

            If the associated LldpPortIdSubtype object has a value of
            'networkAddress(4)', then this string identifies a network
            address associated with the port.  The first octet contains
            the IANA AddressFamilyNumbers enumeration value for the
            specific address type, and octets 2 through N contain the
            networkAddress address value in network byte order.

            If the associated LldpPortIdSubtype object has a value of
            'interfaceName(5)', then the octet string identifies a
            particular instance of the ifName object (defined in IETF
            RFC 2863).  If the particular ifName object does not contain
            any values, another port identifier type should be used.

            If the associated LldpPortIdSubtype object has a value of
            'agentCircuitId(6)', then this string identifies a agent-local
            identifier of the circuit (defined in RFC 3046).

            If the associated LldpPortIdSubtype object has a value of
            'local(7)', then this string identifies a locally
            assigned port ID."              �"This TC describes the source of a chassis identifier.

            The enumeration 'chassisComponent(1)' represents a chassis
            identifier based on the value of entPhysicalAlias object
            (defined in IETF RFC 2737) for a chassis component (i.e.,
            an entPhysicalClass value of 'chassis(3)').

            The enumeration 'interfaceAlias(2)' represents a chassis
            identifier based on the value of ifAlias object (defined in
            IETF RFC 2863) for an interface on the containing chassis.

            The enumeration 'portComponent(3)' represents a chassis
            identifier based on the value of entPhysicalAlias object
            (defined in IETF RFC 2737) for a port or backplane
            component (i.e., entPhysicalClass value of 'port(10)' or
            'backplane(4)'), within the containing chassis.

            The enumeration 'macAddress(4)' represents a chassis
            identifier based on the value of a unicast source address
            (encoded in network byte order and IEEE 802.3 canonical bit
            order), of a port on the containing chassis as defined in
            IEEE Std 802-2001.

            The enumeration 'networkAddress(5)' represents a chassis
            identifier based on a network address, associated with
            a particular chassis.  The encoded address is actually
            composed of two fields.  The first field is a single octet,
            representing the IANA AddressFamilyNumbers value for the
            specific address type, and the second field is the network
            address value.

            The enumeration 'interfaceName(6)' represents a chassis
            identifier based on the value of ifName object (defined in
            IETF RFC 2863) for an interface on the containing chassis.

            The enumeration 'local(7)' represents a chassis identifier
            based on a locally defined value."             "IETF RFC 2674 section 5"�"Each octet within this value specifies a set of eight ports,
            with the first octet specifying ports 1 through 8, the second
            octet specifying ports 9 through 16, etc.  Within each octet,
            the most significant bit represents the lowest numbered port,
            and the least significant bit represents the highest numbered
            port.  Thus, each port of the system is represented by a
            single bit within the value of this object.  If that bit has
            a value of '1' then that port is included in the set of ports;
            the port is not included if its bit has a value of '0'."              �"Each port contained in the chassis (that is known to the
            LLDP agent) is uniquely identified by a port number.

            A port number has no mandatory relationship to an
            InterfaceIndex object (of the interfaces MIB, IETF RFC 2863).
            If the LLDP agent is a IEEE 802.1D, IEEE 802.1Q bridge, the
            LldpPortNumber will have the same value as the dot1dBasePort
            object (defined in IETF RFC 1493) associated corresponding
            bridge port.  If the system hosting LLDP agent is not an
            IEEE 802.1D or an IEEE 802.1Q bridge, the LldpPortNumber
            will have the same value as the corresponding interface's
            InterfaceIndex object.

            Port numbers should be in the range of 1 and 4096 since a
            particular port is also represented by the corresponding
            port number bit in LldpPortList."              #"This TC describes the system capabilities.

            The bit 'other(0)' indicates that the system has capabilities
            other than those listed below.

            The bit 'repeater(1)' indicates that the system has repeater
            capability.

            The bit 'bridge(2)' indicates that the system has bridge
            capability.

            The bit 'wlanAccessPoint(3)' indicates that the system has
            WLAN access point capability.

            The bit 'router(4)' indicates that the system has router
            capability.

            The bit 'telephone(5)' indicates that the system has telephone
            capability.

            The bit 'docsisCableDevice(6)' indicates that the system has
            DOCSIS Cable Device capability (IETF RFC 2669 & 2670).

            The bit 'stationOnly(7)' indicates that the system has only
            station capability and nothing else.

            The bit 'cVLANComponent(8)' indicates that the system has
            C-VLAN component functionality.

            The bit 'sVLANComponent(9)' indicates that the system  has
            S-VLAN component functionality.

            The bit 'twoPortMACRelay(10)' indicates that the system has
            Two-port MAC Relay (TPMR) functionality."                                                                    f"Management Information Base module for LLDP configuration,
            statistics, local system data and remote systems data
            components.

            Copyright (C) IEEE (2004).  This version of this MIB module
            is published as subclause 12.1 of IEEE Std 802.1AB-2004;
            see the standard itself for full legal notices."�"  WG-URL: http://grouper.ieee.org/groups/802/1/index.html
             WG-EMail: stds-802-1@ieee.org

              Contact: Paul Congdon
               Postal: Hewlett-Packard Company
                       8000 Foothills Blvd.
                       Roseville, CA 95747
                       USA
                  Tel: +1-916-785-5753
               E-mail: paul_congdon@hp.com" "200411220000Z" ="Published as part of IEEE Std 802.1AB-2004 initial version."       -- November 22, 2004
              �"A lldpRemTablesChange notification is sent when the value
            of lldpStatsRemTableLastChangeTime changes.  It can be
            utilized by an NMS to trigger LLDP remote systems table
            maintenance polls.

            Note that transmission of lldpRemTablesChange
            notifications are throttled by the agent, as specified by the
            'lldpNotificationInterval' object."                        P"The interval at which LLDP frames are transmitted on
            behalf of this LLDP agent.

            The default value for lldpMessageTxInterval object is
            30 seconds.

            The value of this object must be restored from non-volatile
            storage after a re-initialization of the management system." "IEEE 802.1AB-2004 10.5.3.3"                    "The time-to-live value expressed as a multiple of the
            lldpMessageTxInterval object.  The actual time-to-live value
            used in LLDP frames, transmitted on behalf of this LLDP agent,
            can be expressed by the following formula: TTL = min(65535,
            (lldpMessageTxInterval * lldpMessageTxHoldMultiplier)) For
            example, if the value of lldpMessageTxInterval is '30', and
            the value of lldpMessageTxHoldMultiplier is '4', then the
            value '120' is encoded in the TTL field in the LLDP header.

            The default value for lldpMessageTxHoldMultiplier object is 4.

            The value of this object must be restored from non-volatile
            storage after a re-initialization of the management system." "IEEE 802.1AB-2004 10.5.3.3"                    �"The lldpReinitDelay indicates the delay (in units of
            seconds) from when lldpPortConfigAdminStatus object of a
            particular port becomes 'disabled' until re-initialization
            will be attempted.

            The default value for lldpReintDelay object is two seconds.

            The value of this object must be restored from non-volatile
            storage after a re-initialization of the management system." "IEEE 802.1AB-2004 10.5.3.3"                    J"The lldpTxDelay indicates the delay (in units
            of seconds) between successive LLDP frame transmissions
            initiated by value/status changes in the LLDP local systems
            MIB.  The recommended value for the lldpTxDelay is set by the
            following  formula:

               1 <= lldpTxDelay <= (0.25 * lldpMessageTxInterval)

            The default value for lldpTxDelay object is two seconds.

            The value of this object must be restored from non-volatile
            storage after a re-initialization of the management system." "IEEE 802.1AB-2004 10.5.3.3"                    5"This object controls the transmission of LLDP notifications.

            the agent must not generate more than one lldpRemTablesChange
            notification-event in the indicated period, where a
            'notification-event' is the transmission of a single
            notification PDU type to a list of notification destinations.
            If additional changes in lldpRemoteSystemsData object
            groups occur within the indicated throttling period,
            then these trap- events must be suppressed by the
            agent. An NMS should periodically check the value of
            lldpStatsRemTableLastChangeTime to detect any missed
            lldpRemTablesChange notification-events, e.g. due to
            throttling or transmission loss.

            If notification transmission is enabled for particular ports,
            the suggested default throttling period is 5 seconds.

            The value of this object must be restored from non-volatile
            storage after a re-initialization of the management system."                       S"The table that controls LLDP frame transmission on individual
            ports."                       �"LLDP configuration information for a particular port.
            This configuration parameter controls the transmission and
            the reception of LLDP frames on those ports whose rows are
            created in this table."                      	"The index value used to identify the port component
            (contained in the local chassis with the LLDP agent)
            associated with this entry.

            The value of this object is used as a port index to the
            lldpPortConfigTable."                      �"The administratively desired status of the local LLDP agent.

            If the associated lldpPortConfigAdminStatus object has a
            value of 'txOnly(1)', then LLDP agent will transmit LLDP
            frames on this port and it will not store any information
            about the remote systems connected.

            If the associated lldpPortConfigAdminStatus object has a
            value of 'rxOnly(2)', then the LLDP agent will receive,
            but it will not transmit LLDP frames on this port.

            If the associated lldpPortConfigAdminStatus object has a
            value of 'txAndRx(3)', then the LLDP agent will transmit
            and receive LLDP frames on this port.

            If the associated lldpPortConfigAdminStatus object has a
            value of 'disabled(4)', then LLDP agent will not transmit or
            receive LLDP frames on this port.  If there is remote systems
            information which is received on this port and stored in
            other tables, before the port's lldpPortConfigAdminStatus
            becomes disabled, then the information will naturally age out." "IEEE 802.1AB-2004 10.5.1"                    
"The lldpPortConfigNotificationEnable controls, on a per
            port basis,  whether or not notifications from the agent
            are enabled. The value true(1) means that notifications are
            enabled; the value false(2) means that they are not."                      A"The lldpPortConfigTLVsTxEnable, defined as a bitmap,
            includes the basic set of LLDP TLVs whose transmission is
            allowed on the local LLDP agent by the network management.
            Each bit in the bitmap corresponds to a TLV type associated
            with a specific optional TLV.

            It should be noted that the organizationally-specific TLVs
            are excluded from the lldpTLVsTxEnable bitmap.

            LLDP Organization Specific Information Extension MIBs should
            have similar configuration object to control transmission
            of their organizationally defined TLVs.

            The bit 'portDesc(0)' indicates that LLDP agent should
            transmit 'Port Description TLV'.

            The bit 'sysName(1)' indicates that LLDP agent should transmit
            'System Name TLV'.

            The bit 'sysDesc(2)' indicates that LLDP agent should transmit
            'System Description TLV'.

            The bit 'sysCap(3)' indicates that LLDP agent should transmit
            'System Capabilities TLV'.

            There is no bit reserved for the management address TLV type
            since transmission of management address TLVs are controlled
            by another object, lldpConfigManAddrTable.

            The default value for lldpPortConfigTLVsTxEnable object is
            empty set, which means no enumerated values are set.

            The value of this object must be restored from non-volatile
            storage after a re-initialization of the management system." "IEEE 802.1AB-2004 10.2.1.1"                     �"The table that controls selection of LLDP management address
            TLV instances to be transmitted on individual ports."                      �"LLDP configuration information that specifies the set
            of ports (represented as a PortList) on which the local
            system management address instance will be transmitted.

            This configuration object augments the lldpLocManAddrEntry,
            therefore it is only present along with the management
            address instance contained in the associated
            lldpLocManAddrEntry entry.

            Each active lldpConfigManAddrEntry must be restored from
            non-volatile and re-created (along with the corresponding
            lldpLocManAddrEntry) after a re-initialization of the
            management system."                      �"A set of ports that are identified by a PortList, in which
            each port is represented as a bit.  The corresponding local
            system management address instance will be transmitted on the
            member ports of the lldpManAddrPortsTxEnable.

            The default value for lldpConfigManAddrPortsTxEnable object
            is empty binary string, which means no ports are specified
            for advertising indicated management address instance." "IEEE 802.1AB-2004 10.2.1.1"                   -- empty binary string
    �"The value of sysUpTime object (defined in IETF RFC 3418)
            at the time an entry is created, modified, or deleted in the
            in tables associated with the lldpRemoteSystemsData objects
            and all LLDP extension objects associated with remote systems.

            An NMS can use this object to reduce polling of the
            lldpRemoteSystemsData objects."                      �"The number of times the complete set of information
            advertised by a particular MSAP has been inserted into tables
            contained in lldpRemoteSystemsData and lldpExtensions objects.

            The complete set of information received from a particular
            MSAP should be inserted into related tables.  If partial
            information cannot be inserted for a reason such as lack
            of resources, all of the complete set of information should
            be removed.

            This counter should be incremented only once after the
            complete set of information is successfully recorded
            in all related tables.  Any failures during inserting
            information set which result in deletion of previously
            inserted information should not trigger any changes in
            lldpStatsRemTablesInserts since the insert is not completed
            yet or or in lldpStatsRemTablesDeletes, since the deletion
            would only be a partial deletion. If the failure was the
            result of lack of resources, the lldpStatsRemTablesDrops
            counter should be incremented once."                      e"The number of times the complete set of information
            advertised by a particular MSAP has been deleted from
            tables contained in lldpRemoteSystemsData and lldpExtensions
            objects.

            This counter should be incremented only once when the
            complete set of information is completely deleted from all
            related tables.  Partial deletions, such as deletion of
            rows associated with a particular MSAP from some tables,
            but not from all tables are not allowed, thus should not
            change the value of this counter."                       �"The number of times the complete set of information
            advertised by a particular MSAP could not be entered into
            tables contained in lldpRemoteSystemsData and lldpExtensions
            objects because of insufficient resources."                      T"The number of times the complete set of information
            advertised by a particular MSAP has been deleted from tables
            contained in lldpRemoteSystemsData and lldpExtensions objects
            because the information timeliness interval has expired.

            This counter should be incremented only once when the complete
            set of information is completely invalidated (aged out)
            from all related tables.  Partial aging, similar to deletion
            case, is not allowed, and thus, should not change the value
            of this counter."                       �"A table containing LLDP transmission statistics for
            individual ports.  Entries are not required to exist in
            this table while the lldpPortConfigEntry object is equal to
            'disabled(4)'."                      �"LLDP frame transmission statistics for a particular port.
             The port must be contained in the same chassis as the
             LLDP agent.

             All counter values in a particular entry shall be
             maintained on a continuing basis and shall not be deleted
             upon expiration of rxInfoTTL timing counters in the LLDP
             remote systems MIB of the receipt of a shutdown frame from
             a remote LLDP agent.

             All statistical counters associated with a particular
             port on the local LLDP agent become frozen whenever the
             adminStatus is disabled for the same port."                      "The index value used to identify the port component
            (contained in the local chassis with the LLDP agent)
            associated with this entry.

            The value of this object is used as a port index to the
            lldpStatsTable."                       ^"The number of LLDP frames transmitted by this LLDP agent
            on the indicated port." "IEEE 802.1AB-2004 10.5.2"                     �"A table containing LLDP reception statistics for individual
            ports.  Entries are not required to exist in this table while
            the lldpPortConfigEntry object is equal to 'disabled(4)'."                      �"LLDP frame reception statistics for a particular port.
             The port must be contained in the same chassis as the
             LLDP agent.

             All counter values in a particular entry shall be
             maintained on a continuing basis and shall not be deleted
             upon expiration of rxInfoTTL timing counters in the LLDP
             remote systems MIB of the receipt of a shutdown frame from
             a remote LLDP agent.

             All statistical counters associated with a particular
             port on the local LLDP agent become frozen whenever the
             adminStatus is disabled for the same port."                      "The index value used to identify the port component
            (contained in the local chassis with the LLDP agent)
            associated with this entry.

            The value of this object is used as a port index to the
            lldpStatsTable."                      �"The number of LLDP frames received by this LLDP agent on
            the indicated port, and then discarded for any reason.
            This counter can provide an indication that LLDP header
            formating problems may exist with the local LLDP agent in
            the sending system or that LLDPDU validation problems may
            exist with the local LLDP agent in the receiving system." "IEEE 802.1AB-2004 10.5.2"                     �"The number of invalid LLDP frames received by this LLDP
            agent on the indicated port, while this LLDP agent is enabled." "IEEE 802.1AB-2004 10.5.2"                     �"The number of valid LLDP frames received by this LLDP agent
            on the indicated port, while this LLDP agent is enabled." "IEEE 802.1AB-2004 10.5.2"                     i"The number of LLDP TLVs discarded for any reason by this LLDP
            agent on the indicated port." "IEEE 802.1AB-2004 10.5.2"                    �"The number of LLDP TLVs received on the given port that
            are not recognized by this LLDP agent on the indicated port.

            An unrecognized TLV is referred to as the TLV whose type value
            is in the range of reserved TLV types (000 1001 - 111 1110)
            in Table 9.1 of IEEE Std 802.1AB-2004.  An unrecognized
            TLV may be a basic management TLV from a later LLDP version." "IEEE 802.1AB-2004 10.5.2"                    �"The counter that represents the number of age-outs that
            occurred on a given port.  An age-out is the number of
            times the complete set of information advertised by a
            particular MSAP has been deleted from tables contained in
            lldpRemoteSystemsData and lldpExtensions objects because
            the information timeliness interval has expired.

            This counter is similar to lldpStatsRemTablesAgeouts, except
            that the counter is on a per port basis.  This enables NMS to
            poll tables associated with the lldpRemoteSystemsData objects
            and all LLDP extension objects associated with remote systems
            on the indicated port only.

            This counter should be set to zero during agent initialization
            and its value should not be saved in non-volatile storage.
            When a port's admin status changes from 'disabled' to
            'rxOnly', 'txOnly' or 'txAndRx', the counter associated with
            the same port should reset to 0.  The agent should also flush
            all remote system information associated with the same port.

            This counter should be incremented only once when the
            complete set of information is invalidated (aged out) from
            all related tables on a particular port.  Partial aging
            is not allowed, and thus, should not change the value of
            this counter." "IEEE 802.1AB-2004 10.5.2"                         b"The type of encoding used to identify the chassis
            associated with the local system." "IEEE 802.1AB-2004 9.5.2.2"                     h"The string value used to identify the chassis component
            associated with the local system." "IEEE 802.1AB-2004 9.5.2.3"                     �"The string value used to identify the system name of the
            local system.  If the local agent supports IETF RFC 3418,
            lldpLocSysName object should have the same value of sysName
            object." "IEEE 802.1AB-2004 9.5.6.2"                     �"The string value used to identify the system description
            of the local system.  If the local agent supports IETF RFC 3418,
            lldpLocSysDesc object should have the same value of sysDesc
            object." "IEEE 802.1AB-2004 9.5.7.2"                     m"The bitmap value used to identify which system capabilities
            are supported on the local system." "IEEE 802.1AB-2004 9.5.8.1"                     k"The bitmap value used to identify which system capabilities
            are enabled on the local system." "IEEE 802.1AB-2004 9.5.8.2"                     ~"This table contains one or more rows per port information
            associated with the local system known to this agent."                       �"Information about a particular port component.

            Entries may be created and deleted in this table by the
            agent."                      "The index value used to identify the port component
            (contained in the local chassis with the LLDP agent)
            associated with this entry.

            The value of this object is used as a port index to the
            lldpLocPortTable."                       b"The type of port identifier encoding used in the associated
            'lldpLocPortId' object." "IEEE 802.1AB-2004 9.5.3.2"                     u"The string value used to identify the port component
            associated with a given port in the local system." "IEEE 802.1AB-2004 9.5.3.3"                    "The string value used to identify the 802 LAN station's port
            description associated with the local system.  If the local
            agent supports IETF RFC 2863, lldpLocPortDesc object should
            have the same value of ifDescr object." "IEEE 802.1AB-2004 9.5.5.2"                     j"This table contains management address information on the
            local system known to this agent."                      �"Management address information about a particular chassis
            component.  There may be multiple management addresses
            configured on the system identified by a particular
            lldpLocChassisId.  Each management address should have
            distinct 'management address type' (lldpLocManAddrSubtype) and
            'management address' (lldpLocManAddr.)

            Entries may be created and deleted in this table by the
            agent."                       w"The type of management address identifier encoding used in
            the associated 'lldpLocManagmentAddr' object." "IEEE 802.1AB-2004 9.5.9.3"                     �"The string value used to identify the management address
            component associated with the local system.  The purpose of
            this address is to contact the management entity." "IEEE 802.1AB-2004 9.5.9.4"                    �"The total length of the management address subtype and the
            management address fields in LLDPDUs transmitted by the
            local LLDP agent.

            The management address length field is needed so that the
            receiving systems that do not implement SNMP will not be
            required to implement an iana family numbers/address length
            equivalency table in order to decode the management adress." "IEEE 802.1AB-2004 9.5.9.2"                     �"The enumeration value that identifies the interface numbering
            method used for defining the interface number, associated
            with the local system." "IEEE 802.1AB-2004 9.5.9.5"                     �"The integer value used to identify the interface number
            regarding the management address component associated with
            the local system." "IEEE 802.1AB-2004 9.5.9.6"                     �"The OID value used to identify the type of hardware component
            or protocol entity associated with the management address
            advertised by the local system agent." "IEEE 802.1AB-2004 9.5.9.8"                        
Z"This table contains one or more rows per physical network
            connection known to this agent.  The agent may wish to ensure
            that only one lldpRemEntry is present for each local port,
            or it may choose to maintain multiple lldpRemEntries for
            the same local port.

            The following procedure may be used to retrieve remote
            systems information updates from an LLDP agent:

               1. NMS polls all tables associated with remote systems
                  and keeps a local copy of the information retrieved.
                  NMS polls periodically the values of the following
                  objects:
                     a. lldpStatsRemTablesInserts
                     b. lldpStatsRemTablesDeletes
                     c. lldpStatsRemTablesDrops
                     d. lldpStatsRemTablesAgeouts
                     e. lldpStatsRxPortAgeoutsTotal for all ports.

               2. LLDP agent updates remote systems MIB objects, and
                  sends out notifications to a list of notification
                  destinations.

               3. NMS receives the notifications and compares the new
                  values of objects listed in step 1.

                  Periodically, NMS should poll the object
                  lldpStatsRemTablesLastChangeTime to find out if anything
                  has changed since the last poll.  if something has
                  changed, NMS will poll the objects listed in step 1 to
                  figure out what kind of changes occurred in the tables.

                  if value of lldpStatsRemTablesInserts has changed,
                  then NMS will walk all tables by employing TimeFilter
                  with the last-polled time value.  This request will
                  return new objects or objects whose values are updated
                  since the last poll.

                  if value of lldpStatsRemTablesAgeouts has changed,
                  then NMS will walk the lldpStatsRxPortAgeoutsTotal and
                  compare the new values with previously recorded ones.
                  For ports whose lldpStatsRxPortAgeoutsTotal value is
                  greater than the recorded value, NMS will have to
                  retrieve objects associated with those ports from
                  table(s) without employing a TimeFilter (which is
                  performed by specifying 0 for the TimeFilter.)

                  lldpStatsRemTablesDeletes and lldpStatsRemTablesDrops
                  objects are provided for informational purposes."                       �"Information about a particular physical network connection.
            Entries may be created and deleted in this table by the agent,
            if a physical topology discovery process is active."                       �"A TimeFilter for this entry.  See the TimeFilter textual
            convention in IETF RFC 2021 and
            http://www.ietf.org/IESG/Implementations/RFC2021-Implementation.txt
            to see how TimeFilter works." "IETF RFC 2021 section 6"                    }"The index value used to identify the port component
            (contained in the local chassis with the LLDP agent)
            associated with this entry.  The lldpRemLocalPortNum
            identifies the port on which the remote system information
            is received.

            The value of this object is used as a port index to the
            lldpRemTable."                      �"This object represents an arbitrary local integer value used
            by this agent to identify a particular connection instance,
            unique only for the indicated remote system.

            An agent is encouraged to assign monotonically increasing
            index values to new entries, starting with one, after each
            reboot.  It is considered unlikely that the lldpRemIndex
            will wrap between reboots."                       c"The type of encoding used to identify the chassis associated
            with the remote system." "IEEE 802.1AB-2004 9.5.2.2"                     i"The string value used to identify the chassis component
            associated with the remote system." "IEEE 802.1AB-2004 9.5.2.3"                     b"The type of port identifier encoding used in the associated
            'lldpRemPortId' object." "IEEE 802.1AB-2004 9.5.3.2"                     f"The string value used to identify the port component
            associated with the remote system." "IEEE 802.1AB-2004 9.5.3.3"                     u"The string value used to identify the description of
            the given port associated with the remote system." "IEEE 802.1AB-2004 9.5.5.2"                     V"The string value used to identify the system name of the
            remote system." "IEEE 802.1AB-2004 9.5.6.2"                     ]"The string value used to identify the system description
            of the remote system." "IEEE 802.1AB-2004 9.5.7.2"                     n"The bitmap value used to identify which system capabilities
            are supported on the remote system." "IEEE 802.1AB-2004 9.5.8.1"                     l"The bitmap value used to identify which system capabilities
            are enabled on the remote system." "IEEE 802.1AB-2004 9.5.8.2"                     �"This table contains one or more rows per management address
            information on the remote system learned on a particular port
            contained in the local chassis known to this agent."                      E"Management address information about a particular chassis
            component.  There may be multiple management addresses
            configured on the remote system identified by a particular
            lldpRemIndex whose information is received on
            lldpRemLocalPortNum of the local system.  Each management
            address should have distinct 'management address
            type' (lldpRemManAddrSubtype) and 'management address'
            (lldpRemManAddr.)

            Entries may be created and deleted in this table by the
            agent."                       w"The type of management address identifier encoding used in
            the associated 'lldpRemManagmentAddr' object." "IEEE 802.1AB-2004 9.5.9.3"                     �"The string value used to identify the management address
            component associated with the remote system.  The purpose
            of this address is to contact the management entity." "IEEE 802.1AB-2004 9.5.9.4"                     �"The enumeration value that identifies the interface numbering
            method used for defining the interface number, associated
            with the remote system." "IEEE 802.1AB-2004 9.5.9.5"                     �"The integer value used to identify the interface number
            regarding the management address component associated with
            the remote system." "IEEE 802.1AB-2004 9.5.9.6"                     �"The OID value used to identify the type of hardware component
            or protocol entity associated with the management address
            advertised by the remote system agent." "IEEE 802.1AB-2004 9.5.9.8"                    *"This table contains information about an incoming TLV which
            is not recognized by the receiving LLDP agent.  The TLV may
            be from a later version of the basic management set.

            This table should only contain TLVs that are found in
            a single LLDP frame.  Entries in this table, associated
            with an MAC service access point (MSAP, the access point
            for MAC services provided to the LCC sublayer, defined
            in IEEE 100, which is also identified with a particular
            lldpRemLocalPortNum, lldpRemIndex pair) are overwritten with
            most recently received unrecognized TLV from the same MSAP,
            or they will naturally age out when the rxInfoTTL timer
            (associated with the MSAP) expires." "IEEE 802.1AB-2004 10.3.2"                     �"Information about an unrecognized TLV received from a
            physical network connection.  Entries may be created and
            deleted in this table by the agent, if a physical topology
            discovery process is active."                       Y"This object represents the value extracted from the type
            field of the TLV." "IEEE 802.1AB-2004 10.3.5"                     Z"This object represents the value extracted from the value
            field of the TLV." "IEEE 802.1AB-2004 10.3.5"                    /"This table contains one or more rows per physical network
            connection which advertises the organizationally defined
            information.

            Note that this table contains one or more rows of
            organizationally defined information that is not recognized
            by the local agent.

            If the local system is capable of recognizing any
            organizationally defined information, appropriate extension
            MIBs from the organization should be used for information
            retrieval."                      |"Information about the unrecognized organizationally
            defined information advertised by the remote system.
            The lldpRemTimeMark, lldpRemLocalPortNum, lldpRemIndex,
            lldpRemOrgDefInfoOUI, lldpRemOrgDefInfoSubtype, and
            lldpRemOrgDefInfoIndex are indexes to this table.  If there is
            an lldpRemOrgDefInfoEntry associated with a particular remote
            system identified by the lldpRemLocalPortNum and lldpRemIndex,
            there must be an lldpRemEntry associated with the same
            instance (i.e, using same indexes.)  When the lldpRemEntry
            for the same index is removed from the lldpRemTable, the
            associated lldpRemOrgDefInfoEntry should be removed from
            the lldpRemOrgDefInfoTable.

            Entries may be created and deleted in this table by the
            agent."                      "The Organizationally Unique Identifier (OUI), as defined
            in IEEE std 802-2001, is a 24 bit (three octets) globally
            unique assigned number referenced by various standards,
            of the information received from the remote system." "IEEE 802.1AB-2004 9.5.1.3"                    �"The integer value used to identify the subtype of the
            organizationally defined information received from the
            remote system.

            The subtype value is required to identify different instances
            of organizationally defined information that could not be
            retrieved without a unique identifier that indicates the
            particular type of information contained in the information
            string." "IEEE 802.1AB-2004 9.5.1.4"                    A"This object represents an arbitrary local integer value
            used by this agent to identify a particular unrecognized
            organizationally defined information instance, unique only
            for the lldpRemOrgDefInfoOUI and lldpRemOrgDefInfoSubtype
            from the same remote system.

            An agent is encouraged to assign monotonically increasing
            index values to new entries, starting with one, after each
            reboot.  It is considered unlikely that the
            lldpRemOrgDefInfoIndex will wrap between reboots."                       �"The string value used to identify the organizationally
            defined information of the remote system.  The encoding for
            this object should be as defined for SnmpAdminString TC." "IEEE 802.1AB-2004 9.5.1.5"                                 W"The compliance statement for SNMP entities which implement
            the LLDP MIB."                   �"The collection of objects which are used to configure the
            LLDP implementation behavior.

            This group is mandatory for agents which implement the LLDP."                 �"The collection of objects which are used to configure the
            LLDP implementation behavior.

            This group is mandatory for agents which implement the LLDP
            and have the capability of receiving LLDP frames."                 �"The collection of objects which are used to configure the
            LLDP implementation behavior.

            This group is mandatory for agents which implement the LLDP
            and have the capability of transmitting LLDP frames."                 �"The collection of objects which are used to represent LLDP
            reception statistics.

            This group is mandatory for agents which implement the LLDP
            and have the capability of receiving LLDP frames."                 �"The collection of objects which are used to represent LLDP
            transmission statistics.

            This group is mandatory for agents which implement the LLDP
            and have the capability of transmitting LLDP frames."                 �"The collection of objects which are used to represent LLDP
            Local System Information.

            This group is mandatory for agents which implement the LLDP
            and have the capability of transmitting LLDP frames."                "The collection of objects which are used to represent
            LLDP Remote Systems Information.  The objects represent the
            information associated with the basic TLV set.  Please note
            that even the agent doesn't implement some of the optional
            TLVs, it shall recognize all the optional TLV information
            that the remote system may advertise.

            This group is mandatory for agents which implement the LLDP
            and have the capability of receiving LLDP frames."                "The collection of notifications used to indicate LLDP MIB
            data consistency and general status information.

            This group is mandatory for agents which implement the LLDP
            and have the capability of receiving LLDP frames."                        