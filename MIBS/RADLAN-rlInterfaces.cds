     %"Auto negotiation capabilities bits."                                                     "The MIB module describes the private MIB for Switch Interfaces supported
               by Marvell MTS software and products." �"5488 Marvell Lane
                        Santa Clara, CA 95054
                        USA

                        Website:  www.marvell.com" "201304010000Z" "Added MODULE-IDENTITY"       -- April 1, 2013
       T"Switch media specific information and configuration of the device
     interfaces."                       ;"Defines the contents of each line in the swIfTable table."                       �"Index to the swIfTable. The interface defined by a
         particular value of this index is the same interface as
         identified by the same value of ifIndex (MIB II)."                       �" This variable indicates whether the physical address assigned to this
          interface should be the default one or be chosen from the set of
          reserved physical addresses of the device."                      )"This variable specifies whether this interface should operate in
         half duplex or full duplex mode. This specification will take effect
         only if swIfSpeedDuplexAutoNegotiation is disabled.
         A value of 'none' is returned if a value of the variable
         hasn't been set."                      " This variable indicates whether this interface operates in half
          duplex or full duplex mode.
          This variable can have the values hybrid or unknown
          only for a trunk.
          unknown - only if trunk operative status is not present."                       a"This variable indicates whether this interface activates back pressure
         when congested."                       �"If enable, this interface operates in tagged mode, i.e all frames sent
         out through this interface will have the 802.1Q header.
         If disabled the frames will not be tagged."                       B" This variable indicates the transceiver type of this interface."                      i"This variable indicates whether this interface should operate in locked
         or unlocked mode.
         In unlocked mode the device learns all MAC addresses from this port and
         forwards all frames arrived at this port. In locked mode no new MAC
         addresses are learned and only frames with known source MAC
         addresses are forwarded."                      A"This variable defines whether this interface operates in locked
         or unlocked mode. It is locked in each of the following two cases:
             1) if swLockAdminStatus  is set to locked
             2) no IP/IPX interface is defined over this interface and no
                VLAN contains this interface.
         In unlocked mode the device learns all MAC addresses from this port and
         forwards all frames arrived at this port. In locked mode no new MAC
         addresses are learned and only frames with known source MAC
         addresses are forwarded."                       1" This variable specifies the type of interface."                       �"This variable specifies the default VLAN tag which will be attached
         to outgoing frames if swIfTaggedMode for this interface is enabled."                       5" This variable specifies the default port priority."                       U"The status of a table entry.
        It is used to delete an entry from this table."                      ="on - Flow control will be enabled on this interface according to the
             IEEE 802.3x standard.
        off - Flow control is disabled.
        autoNegotiation - Flow control will be enabled or disabled on this
                          interface. If enabled, it will operate as specified
                          by the IEEE 802.3x standard.
        enabledRx - Flow control will be enabled on this interface for
                    recieved frames.
        enabledTx - Flow control will be enabled on this interface for
                    transmitted frames.
        An attempt to set this object to 'enabledRx(4)' or 'enabledTx(5)'
        will fail on interfaces that do not support operation
        at greater than 100 Mb/s.
        In any case, flow control can work only if swIfDuplexOperMode is
        full."                      A"This variable specifies the required speed of this interface in bits
         per second. This specification will take effect only if
         swIfSpeedDuplexAutoNegotiation is disabled.
         A value of 10 is returned for 10G.
         A value of 0 is returned if the value of the variable
         hasn't been set."                       �"If enabled the speed and duplex mode will be set by the device through
       the autonegotiation process. Otherwise these characteristics will be
       set according to the values of swIfSpeedAdminMode and
       swIfSpeedDuplexAutoNegotiation."                      ]"on - Flow control is enabled on this interface according to the
             IEEE 802.3x standard.
        off - Flow control is disabled.
        enabledRx - Flow control is enabled on this interface for
                    recieved frames.
        enabledTx - Flow control is enabled on this interface for
                    transmitted frames."                      _"If enabled the speed and duplex are determined by the device through
       the autonegotiation process.
       If disabled these characteristics are determined according to the values
       of swIfSpeedAdminMode and swIfDuplexAdminMode.
       hybrid - only for a trunk.
       unknown -  only for ports that there operative status is not present."                       V"This variable indicates the operative back pressure mode of
         this interface."                      m"This variable indicates which action this interface should be taken
        in locked mode and therefore relevant only in locked mode.
        Possible actions:
        discard(1) - every packet is dropped.
        forwardNormal(2) - every packet is forwarded according to the DST address.
        discardDisable(3) - drops the first packet and suspends the port."                     1--DEFVAL { discard } changed to product specific
l"This variable indicates which action this interface actually takes in
        locked mode and therefore relevant only in locked mode.
        Possible actions:
        discard(1) - every packet is dropped.
        forwardNormal(2) - every packet is forwarded according to the DST address.
        discardDisable(3) - drops the first packet and suspends the port."                       K"This variable indicates whether to create a SNMP trap in the locked mode."                     /--DEFVAL { false } changed to product specific
 X"This variable indicates whether a SNMP trap can be created in the
        locked mode."                       |"This variable indicates whether the port is suspended or not due to some
        feature. After reboot this value is false"                       �"This variable indicates the trap counter status per ifIndex
        (i.e. number of received packets since the last trap sent due to a
        packet which was received on this ifIndex). It's relevant only in locked
        mode while trap is enabled."                       �"This variable indicates the minimal frequency (in seconds) of sending
        a trap per ifIndex. It's relevant only in locked  mode and in trap
        enabled."           --    UNITS    "seconds"
         ,--DEFVAL { 10 } changed to product specific
 F"This variable reactivates (enables) an ifIndex (which was suspended)"                       �"The configuration is on a physical port, not include trunks.
        cross  - The interface should force crossover.
        normal - The interface should not force crossover.
        auto    - Auto mdix is enabled on the interface."                       �"cross  - The interface is in crossover mode.
        normal - The interface is not in crossover mode.
        unknown - Only for port that its operative status is not present
                  or down."                       �"This variable indicates the 802.1X host mode of a port. Relevant when the port's 802.1X control is auto.
        In addtion multiple-auth was added."                      3"This variable indicates which action this interface should take in single authorized.
        Possible actions:
        discard - every packet is dropped.
        forwardNormal - every packet is forwarded according to the DST address.
        discardDisable - drops the first packet and suspends the port."                      ?"This variable indicates which action this interface actually takes in single authorized.
        Possible actions:
        discard(1) - every packet is dropped.
        forwardNormal(2) - every packet is forwarded according to the DST address.
        discardDisable(3) - drops the first packet and suspends the port."                       M"This variable indicates whether to create a SNMP trap in single authorized."                       V"This variable indicates whether a SNMP trap can be created in the single authorized."                      "This variable indicates the trap counter status per ifIndex
        (i.e. number of received packets since the last trap sent due to a packet
        which was received on this ifIndex). It's relevant only in single authorized
        while trap is enabled."                       �"This variable indicates the minimal frequency (in seconds) of sending a
        trap per ifIndex. It's relevant only in single authorized and in trap enabled.
        A value of 0 means that trap is disabled."           -- UNITS    "seconds"
          �"This variable indicates what is the learning limitation on the locked interface.
        Possible values:
        disabled - learning is stopped. The dynamic addresses associated with the
            port are not aged out or relearned on other port as long as the port is
            locked.
        dynamic - dynamic addresses can be learned up to the maximum dynamic addresses
            allowed on the port. Relearning and aging of the dynamic addresses are
            enabled. The learned addresses aren't kept after reset.
        secure-permanent - secure addresses can be learned up to the maximum addresses
            allowed on the port. Relearning and aging of addresses are disabled.
            The learned addresses are kept after reset.
        secure-delete-on-reset - secure addresses can be learned up to the maximum addresses
            allowed on the port. Relearning and aging of addresses are disabled.
            The learned addresses are not kept after reset."                     2--DEFVAL { disabled } changed to product specific
 �"This variable defines the maximum number of dynamic addresses that
        can be asscoiated with the locked interface. It isn't relevant in
        disabled limitation mode."                       �"This variable indicates the actual number of dynamic addresses that can
        be asscoiated with the locked interface. It isn't relevant in disabled
        limitation mode."                       �"Administrative auto negotiation capabilities of the interface that can be advertised when
        swIfSpeedDuplexAutoNegotiation is enabled.
        default bit means advertise all the port's capabilities
        according to its type."                       }"Operative auto negotiation capabilities of the remote link.
        unknown bit means that port operative status is not up."                       �"Operative auto negotiation capabilities of the remote link.
        unknown bit means that port operative status is not up,
        or auto negotiation process not complete,
        or remote link is not auto negotiation able."                       P"This variable specifies the administrative mode of a combo Ethernet interface."                       K"This variable specifies the operative mode of a combo Ethernet interface."                       d"This variable specifies the administrative mode of the Maste-Slave preference in auto negotiation."                     +--    DEFVAL - according to MTSC parameter
  "Returns the port capabilities."                       8"The swIfTable Mib's version, the current version is 5."                       4"indicates if the locked port package is supported."                       �"indicates which port lock actions are supported:
                (bit 0 is the most significant bit)
            bit 0 - discard
            bit 1 - forwardNormal
            bit 2 - discardDisable"                      E"indicates with which port lock actions the trap option is supported
        (e.g. discard indicates that trap is supported only when the portlock
         action is discard):
                (bit 0 is the most significant bit)
            bit 0 - discard
            bit 1 - forwardNormal
            bit 2 - discardDisable"                       *"Port lock interfaces range configuration"                       J"Defines the contents of each line in the swIfPortLockIfRangeTable table."                       ("Index to the swIfPortLockIfRangeTable."                       N"The set of interfaces to which the port lock parameters should be configured"                      }"This variable indicates whether the interfaces range should operate in locked
         or unlocked mode.
         In unlocked mode the device learns all MAC addresses from these interfaces and
         forwards all frames arrived at these interfaces. In locked mode no new MAC
         addresses are learned and only frames with known source MAC
         addresses are forwarded."                      r"This variable indicates which action for these interfaces should be take
        in locked mode and therefore relevant only in locked mode.
        Possible actions:
        discard(1) - every packet is dropped.
        forwardNormal(2) - every packet is forwarded according to the DST address.
        discardDisable(3) - drops the first packet and suspends the port."                     1--DEFVAL { discard } changed to product specific
 K"This variable indicates whether to create a SNMP trap in the locked mode."                     /--DEFVAL { false } changed to product specific
 �"This variable indicates the minimal frequency (in seconds) of sending
        a trap for these interfaces. It's relevant only in locked  mode and in trap
        enabled."           --    UNITS    "seconds"
         ,--DEFVAL { 10 } changed to product specific
 A"Display information and configuration of the device interfaces."                       7"Defines the contents of each row in the swIfExtTable."                       /"Configure speed of an SFP Ethernet interface."                       '"pefrom mac operation on given ifindex"                       "Defines mac operation "                       �"Index to the rlMacOperationTable. The interface defined by a
         particular value of this index is the same interface as
         identified by the same value of ifIndex (MIB II)."                       j" This variable indicates what operation should be performed on the MAC
          of the given interface."                                       *"MIB's version, the current version is 1."                       T"Total number of physical ports on this device
         (including all stack units)"                      ["Each bit in this octet string indicates that the correspondig port's
        ifOperStatus is ON if set.
        The mapping of port number to bits in this octet string is as follows:
        The port with the L2 interface number 1 is mapped to the least
        significant bit of the 1st octet, the port with L2 ifNumber 2 to the
        next significant bit in the 1st octet, port 8 to the most-significant
        bit of the in the 1st octet, port 9 to the least
        significant bit of the 2nd octet, etc. and in general,
        port n to bit corresponding to 2**((n mod 8) -1) in byte n/8 + 1"                       h"Each bit that is set in this portList represent a port that
         its mib counters should be reset."                       2"The number of user defined ports on this device."                       g"First ifIndex of out-of-band port.
         This scalar exists only the device has out of band ports."                       ."The number of loopback ports on this device."                       "First ifIndex of loopback port.
         This scalar will exists only if rlIfNumOfLoopbackPorts
         is different from 0."                       c"Indicates which ports/trunks exist in the system.
         It doesn't indicate which are present."                       L"Indicates if the system will assign a unique MAC per Ethernet port or not."                       ."enable disable flow control on cascade ports"                       N"define which type of ports will be affected by flow control on cascade ports"                       4"define if flow control RX is supported per system."                       y"As a result of this set all of the local cascade ports
         will stop being consider unstable and will be force up."                       �"Specify L2 bound management interface index in a single IP address system
        when configurable management interface is supported."                       ^"As a result of this set all counters of
         all external cascade ports will be cleared."                       �"if port is non secure, its all dynamic MAC addresses are cleared.
          if port is secure, its all secure MAC addresses which have learned or configured are cleared."                       Z"The default packet length that is assigned to a packet in the
         Cut-Through mode."             --              Obsolete
         /"Enable or disable cut-Through for priority 0."                       /"Enable or disable cut-Through for priority 1."                       /"Enable or disable cut-Through for priority 2."                       /"Enable or disable cut-Through for priority 3."                       /"Enable or disable cut-Through for priority 4."                       /"Enable or disable cut-Through for priority 5."                       /"Enable or disable cut-Through for priority 6."                       /"Enable or disable cut-Through for priority 7."                       7"Information and configuration of cut-through feature."                       ;"Defines the contents of each line in the swIfTable table."                       @"Enable or disable cut-through for a priority for an interface."                       F"Enable or disable cut-through for untagged packets for an interface."                       5"Operational mode of spesific cut-through interface."                       Z"The default packet length that is assigned to a packet in the
         Cut-Through mode."                       f"The default packet length that is assigned to a packet in the
         Cut-Through mode after reset."                       !"Cut-Through global enable mode."                       -"Cut-Through global enable mode after reset."                      �"Define which mode will be enabled on flow control enabled ports.
        The interfaces with enabled flow control will receive pause frames, but will not send flow control pause
        frames
        Send-receive: The interfaces with enabled flow control will receive and send pause frames.
        Receive-only: The interfaces with enabled flow control will receive pause frames, but will not send flow
       control pause frames."                       X"define if flow control is enabled on all regular ports and trunk in the system or not."                      