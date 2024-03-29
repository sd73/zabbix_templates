 -- From draft2674ext.mib
   '"A simple status value for the object."                                                                 �"The Bridge MIB Extension module for managing Priority
        and Multicast Filtering, defined by IEEE 802.1D-1998,
        including Restricted Group Registration defined by
        IEEE 802.1t-2001." "Email: Bridge-mib@ietf.org" "200203010000Z" "Draft 0 (RFC 2674 update)."                       �"Indicates the optional parts of IEEE 802.1D and 802.1Q
        that are implemented by this device and are manageable
        through this MIB.  Capabilities that are allowed on a
        per-port basis are indicated in dot1dPortCapabilities." T"ISO/IEC 15802-3 Section 5.2,
        IEEE 802.1Q/D11 Section 5.2, 12.10.1.1.3/b/2"                     �"The value true(1) indicates that Traffic Classes are
        enabled on this bridge.  When false(2), the bridge
        operates with a single priority level for all traffic."                      G"The administrative status requested by management for
        GMRP.  The value enabled(1) indicates that GMRP should
        be enabled on this device, in all VLANs, on all ports
        for which it has not been specifically disabled.  When
        disabled(2), GMRP is disabled, in all VLANs, on all
        ports and all GMRP packets will be forwarded
        transparently.  This object affects both Applicant and
        Registrar state machines.  A transition from disabled(2)
        to enabled(1) will cause a reset of all GMRP state
        machines on all ports."                       o"A table that contains capabilities information about
        every port that is associated with this bridge."                       V"A set of capabilities information about this port
        indexed by dot1dBasePort."                       �"Indicates the parts of IEEE 802.1D and 802.1Q that are
        optional on a per-port basis that are implemented by
        this device and are manageable through this MIB." C"ISO/IEC 15802-3 Section 5.2,
        IEEE 802.1Q/D11 Section 5.2"                         n"A table that contains information about every port that
        is associated with this transparent bridge."                       v"A list of Default User Priorities for each port of a
        transparent bridge.  This is indexed by dot1dBasePort."                       �"The default ingress User Priority for this port.  This
        only has effect on media, such as Ethernet, that do not
        support native User Priority."                       q"The number of egress traffic classes supported on this
        port.  This object may optionally be read-only."                      �"A list of Regenerated User Priorities for each received
        User Priority on each port of a bridge.  The Regenerated
        User Priority value may be used to index the Traffic
        Class Table for each input port.  This only has effect
        on media that support native User Priority.  The default
        values for Regenerated User Priorities are the same as
        the User Priorities." "ISO/IEC 15802-3 Section 6.4"                     N"A mapping of incoming User Priority to a Regenerated
        User Priority."                       6"The User Priority for a frame received on this port."                       _"The Regenerated User Priority the incoming User
        Priority is mapped to for this port."                       �"A table mapping evaluated User Priority to Traffic
        Class, for forwarding by the bridge.  Traffic class is a
        number in the range (0..(dot1dPortNumTrafficClasses-1))." "ISO/IEC 15802-3 Table 7-2"                     )"User Priority to Traffic Class mapping."                      T"The Priority value determined for the received frame.
        This value is equivalent to the priority indicated in
        the tagged frame received, or one of the evaluated
        priorities, determined according to the media-type.

        For untagged frames received from Ethernet media, this
        value is equal to the dot1dPortDefaultUserPriority value
        for the ingress port.

        For untagged frames received from non-Ethernet media,
        this value is equal to the dot1dRegenUserPriority value
        for the ingress port and media-specific user priority."                       4"The Traffic Class the received frame is mapped to."                       �"A table mapping Regenerated User Priority to Outbound
        Access Priority.  This is a fixed mapping for all port
        types, with two options for 802.5 Token Ring." "ISO/IEC 15802-3 Table 7-3"                     I"Regenerated User Priority to Outbound Access Priority
        mapping."                       H"The Outbound Access Priority the received frame is
        mapped to."                           j"A table of GARP control information about every bridge
        port.  This is indexed by dot1dBasePort."                       -"GARP control information for a bridge port."                       &"The GARP Join time, in centiseconds."                       '"The GARP Leave time, in centiseconds."                       *"The GARP LeaveAll time, in centiseconds."                           t"A table of GMRP control and status information about
        every bridge port.  Augments the dot1dBasePortTable."                       8"GMRP control and status information for a bridge port."                      X"The administrative state of GMRP operation on this port. The
        value enabled(1) indicates that GMRP is enabled on this port
        in all VLANs as long as dot1dGmrpStatus is also enabled(1).
        A value of disabled(2) indicates that GMRP is disabled on
        this port in all VLANs: any GMRP packets received will
        be silently discarded and no GMRP registrations will be
        propagated from other ports. Setting this to a value of
        enabled(1) will be stored by the agent but will only take
        effect on the GMRP protocol operation if dot1dGmrpStatus
        also indicates the value enabled(1).  This object affects
        all GMRP Applicant and Registrar state machines on this
        port.  A transition from disabled(2) to enabled(1) will
        cause a reset of all GMRP state machines on this port."                       e"The total number of failed GMRP registrations, for any
        reason, in all VLANs, on this port."                       Q"The Source MAC Address of the last GMRP message
        received on this port."                      U"The state of Restricted Group Registration on this port.
         If the value of this control is true(1), then creation
         of a new dynamic entry is permitted only if there is a
         Static Filtering Entry for the VLAN concerned, in which
         the Registrar Administrative Control value is Normal
         Registration." )"IEEE 802.1t clause 10.3.2.3, 14.10.1.3."                             V"A collection of objects indicating the optional
        capabilities of the device."                 w"A collection of objects providing device-level control
        for the Multicast Filtering extended bridge services."                 \"A collection of objects providing device-level control
        for the Priority services."                 �"A collection of objects defining the User Priority
        applicable to each port for media which do not support
        native User Priority."                 �"A collection of objects defining the User Priorities
        applicable to each port for media which support native
        User Priority."                 q"A collection of objects defining the traffic classes
        within a bridge for each evaluated User Priority."                 h"A collection of objects defining the media dependent
        outbound access level for each priority."                 j"A collection of objects providing port level control
        and status information for GARP operation."                 j"A collection of objects providing port level control
        and status information for GMRP operation."                 h"A collection of objects providing 64-bit statistics
         counters for high capacity bridge ports."                 i"A collection of objects providing overflow statistics
        counters for high capacity bridge ports."                     v"The compliance statement for device support of Priority
        and Multicast Filtering extended bridging services."   �"This group is mandatory for devices supporting the GMRP
            application, defined by IEEE 802.1D Extended Filtering
            Services." �"This group is mandatory only for devices supporting
            the priority forwarding operations defined by IEEE
            802.1D." �"This group is mandatory only for devices supporting
            the priority forwarding operations defined by the
            extended bridge services with media types, such as
            Ethernet, that do not support native User Priority." �"This group is mandatory only for devices supporting
            the priority forwarding operations defined by IEEE 802.1D
            and which have interface media types that support
            native User Priority e.g. IEEE 802.5." }"This group is mandatory only for devices supporting
            the priority forwarding operations defined by IEEE 802.1D." �"This group is optional and is relevant only for devices
            supporting the priority forwarding operations defined by
            IEEE 802.1D and which have interface media types that support
            native Access Priority e.g. IEEE 802.5.""This group is mandatory for devices supporting any
            of the GARP applications: e.g. GMRP, defined by the
            extended filtering services of 802.1D; or GVRP,
            defined by 802.1Q (refer to the Q-BRIDGE-MIB for
            conformance statements for GVRP)." �"This group is mandatory for devices supporting the
            GMRP application, as defined by IEEE 802.1D Extended
            Filtering Services." �"Support for this group in a device is mandatory for those
            bridge ports which map to network interfaces that have the
            value of the corresponding instance of ifSpeed
            greater than 650,000,000 bits/second." �"Support for this group in a device is mandatory for those
            bridge ports which map to network interfaces that have the
            value of the corresponding instance of ifSpeed
            greater than 650,000,000 bits/second." "Write access is not required." "Write access is not required." "Write access is not required."                     �"A table that contains information about every high
        capacity port that is associated with this transparent
        bridge."                       V"Statistics information for each high capacity port of a
        transparent bridge."                      Y"The number of frames that have been received by this
        port from its segment.  Note that a frame received on
        the interface corresponding to this port is only counted
        by this object if and only if it is for a protocol being
        processed by the local bridging function, including
        bridge management frames." $"ISO/IEC 15802-3 Section 14.6.1.1.3"                    ]"The number of frames that have been transmitted by this
        port to its segment.  Note that a frame transmitted on
        the interface corresponding to this port is only counted
        by this object if and only if it is for a protocol being
        processed by the local bridging function, including
        bridge management frames." $"ISO/IEC 15802-3 Section 14.6.1.1.3"                     �"Count of valid frames that have been received by this
        port from its segment which were discarded (i.e.,
        filtered) by the Forwarding Process." $"ISO/IEC 15802-3 Section 14.6.1.1.3"                    �"A table that contains the most-significant bits of
        statistics counters for ports that are associated with this
        transparent bridge that are on high capacity interfaces, as
        defined in the conformance clauses for this table. This table
        is provided as a way to read 64-bit counters for agents which
        support only SNMPv1.

        Note that the reporting of most-significant and
        least-significant counter bits separately runs the risk of
        missing an overflow of the lower bits in the interval between
        sampling. The manager must be aware of this possibility, even
        within the same varbindlist, when interpreting the results of
        a request or asynchronous notification."                      	"The most significant bits of statistics counters for a high
        capacity interface of a transparent bridge. Each object is
        associated with a corresponding object in dot1dTpPortTable
        which indicates the least significant bits of the counter."                       Y"The number of times the associated dot1dTpPortInFrames
        counter has overflowed." $"ISO/IEC 15802-3 Section 14.6.1.1.3"                     Z"The number of times the associated dot1dTpPortOutFrames
        counter has overflowed." $"ISO/IEC 15802-3 Section 14.6.1.1.3"                     ["The number of times the associated
        dot1dTpPortInDiscards counter has overflowed." $"ISO/IEC 15802-3 Section 14.6.1.1.3"                                        