                       �"The Bridge MIB Extension module for managing devices
         that support the Rapid Spanning Tree Protocol defined
         by IEEE 802.1w." "Email: Bridge-mib@ietf.org" "200403210000Z" 	"Draft 4"                       1"Rapid Spanning Tree information for the bridge."                 ."Default Spanning Tree path cost information."                 7"Rapid Spanning Tree information for individual ports."                     M"The compliance statement for device support of bridging
         services."   p"Support for this group is mandatory only if
                 both 16-bit and 32-bit Path Costs are supported."                                �"The version of Spanning Tree Protocol the bridge is
         currently running.  The value 'stpCompatible(0)'
         indicates the Spanning Tree Protocol specified in
         IEEE 802.1D and 'rstp(2)' indicates the Rapid Spanning
         Tree Protocol specified in IEEE 802.1w.  New value may
         be defined as future versions of the protocol become
         available." +"IEEE 802.1w clause 14.8.1, 17.12, 17.16.1"                     e"The value used by the Port Transmit state machine to limit
         the maximum transmission rate." "IEEE 802.1w clause 17.16.6"                    ."The version of the Spanning Tree default Path Costs that
         are to be used by this Bridge.  A value of 8021d1998(1)
         uses the 16-bit default Path Costs from IEEE Std. 802.1D-1998.
         A value of stp8021t2001(2) uses the 32-bit default Path
         Costs from IEEE Std. 802.1t."  "IEEE 802.1D & 802.1t Table 8-5"                     P"A table that contains port-specific Rapid Spanning Tree
         information."                       N"A list of Rapid Spanning Tree information maintained by
         each port."                       �"When operating in RSTP (version 2) mode, writing TRUE(1)
         to this object forces this port to transmit RSTP BPDUs.
         Any other operation on this object has no effect and
         it always returns FALSE(2) when read." ."IEEE 802.1w clause 14.8.2.4, 17.18.10, 17.26"                     �"The administrative value of the Edge Port parameter.  A
         value of TRUE(1) indicates that this port should be
         assumed as an edge-port and a value of FALSE(2) indicates
         that this port should be assumed as a non-edge-port." #"IEEE 802.1t clause 14.8.2, 18.3.3"                     �"The operational value of the Edge Port parameter.  The
         object is initialized to the value of
         dot1dStpPortAdminEdgePort and is set FALSE on reception of
         a BPDU." #"IEEE 802.1t clause 14.8.2, 18.3.4"                    �"The administrative point-to-point status of the LAN segment
         attached to this port.  A value of forceTrue(0) indicates that
         this port should always be treated as if it is connected to
         a point-to-point link.  A value of forceFalse(1) indicates
         that this port should be treated as having a shared media
         connection.  A value of auto(2) indicates that this port is
         considered to have a point-to-point link if it is an Aggregator
         and all of its members are aggregatable, or if the MAC entity
         is configured for full duplex operation, either through
         auto-negotiation or by management means." '"IEEE 802.1w clause 6.4.3, 6.5, 14.8.2"                    F"The operational point-to-point status of the LAN segment
         attached to this port.  It indicates whether a port is
         considered to have a point-to-point connection or not.
         The value is determined by management or by auto-detection,
         as described in the dot1dStpPortAdminPointToPoint object." '"IEEE 802.1w clause 6.4.3, 6.5, 14.8.2"                    "The administratively assigned value for the contribution
         of this port to the path cost of paths towards the spanning
         tree root.

         Writing a value of '0' assigns the automatically calculated
         default Path Cost value to the port.  If the default Path
         Cost is being used, this object returns '0' when read.

         This complements the object dot1dStpPortPathCost or
         dot1dStpPortPathCost32, which returns the operational value
         of the path cost." #"IEEE 802.1D-1998: Section 8.5.5.3"                    