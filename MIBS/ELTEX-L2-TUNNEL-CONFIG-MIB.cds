     &"A tunneled protocol of an interface."                                                                o"This MIB module is for layer 2 tunneling related configurations
        on a device.

        Tunneling allows separate local networks to be considered as
        a single VLAN. These separate networks are connected via an
        ISP, which will tunnel the packets from one network to another,
        making it appear as if the two networks are actually just one." "www.eltex.nsk.ru"                       �"This object indicates whether the system will
        generate the eltexLtcTunnelDropThresholdExceeded and
        eltexLtcTunnelShutdownThresholdExceeded notifications."                       h"The destination MAC address that replaces the original destination
    MAC address of tunneled frames."                           �"This table contains information about the protocols being
        tunneled. Only tunneled protocol filtering capable interfaces
        are shown."                       x"Information about the protocols being tunneled. Only tunneled
        protocol filtering capable interfaces are shown."                      �"Indicates tunneled protocol of the interface.

        If a BIT is set, then the value of the corresponding
        protocol is tunneled. Specifically, if the 'stp(0)' BIT
        is set, then the Spanning Tree Protocol PDU is tunneled.
        At this moment, there are no other supported protocols.

        If the bit for a given protocol is set for an interface, then
        the statistics for that interface and protocol will start to be
        monitored."                       M"Specifies the user priority of the tunneled PDUs for the
        interface."                           �"This table contains information about the thresholds for
        protocol tunneling. Only tunneled protocol filtering capable
        interfaces are shown. The objects will be on a per interface,
        per protocol basis."                       �"Information about the thresholds for protocol tunneling. Only
        tunneled protocol filtering capable interfaces are shown. The
        entries will be on a per interface, per protocol basis"                       &"A tunneled protocol of an interface."                      ;"The drop threshold on an interface for a given protocol. After
        reaching this drop threshold, the interface will start dropping
        PDUs for the given protocol. This value cannot be greater than
        the value of eltexLtcTunnelShutdownThreshold.  A value of 0
        indicates that no limit is set."                      0"The shutdown threshold on an interface for a given protocol.
        After reaching the shutdown threshold, the interface will
        shutdown for the given protocol.  This value cannot be less
        than the value of eltexLtcTunnelDropThreshold. A value of 0
        indicates that no limit is set."                           M"This table contains protocol tunneling statistics on the
        interface."                       1"Protocol tunneling statistics on the interface."                       &"A tunneled protocol of an interface."                       �"The tunneled PDU encapsulation statistics of an interface.
        These statistics cover the number of tunneled ingress
        PDUs."                       �"The tunneled PDU de-encapsulation statistics of an interface.
        These statistics cover the number of tunneled egress PDUs."                       �"The number of PDUs dropped on an interface for a given
        protocol. The PDUs will be dropped when the
        eltexLtcTunnelDropThreshold is reached."                               `"This notification is generated when the
        eltexLtcTunnelDropThreshold has been exceeded."                 d"This notification is generated when the
        eltexLtcTunnelShutdownThreshold has been exceeded."                