     %"Ethernet Segment type from RFC7432."               R"The tunnel type for forwarding BUM traffic for a
                 bridge domain."               $"Locally configured multicast mode."               '"Operational status of an EVPN object."               9"A reason for the current oper status of an EVPN object."               �"Operational mode for an Ethernet Segment.
                 Only single-homing and all-active multi-homing modes
                 are supported."               "Ethernet Segment number."               <"A reason for the current oper status of an VxLAN instance."               *"The representation of route target type."               #"Syntax for a route distinguisher."               ,"Syntax for an Ethernet Segment Identifier."               +"The representation of route target value."               ]"Status values for an Ethernet Segment or interface in an
                 Ethernet Segment."               "Virtual Network Identifier."              %"The source of an EVPN route.

                 -  'local' indicates that the EVPN route was created based
                    on information from locally attached sites.

                 -  'remote' indicates that the EVPN route was received from
                    a remote EVPN instance."               /"The desired administrative state of an entry."                                                                                             <"The MIB module for management of the VxLAN/EVPN protocols." "www.eltex.nsk.ru"       -- Th Aug 12 00:00:00 GMT 2021
               g"Each entry of this table represents primary configuration
                 of certain VxLAN instance."                       7"Represents a primary configuration of VxLAN instance."                       2"An index that identifies a VxLAN instance entry."                       t"The row status of VxLAN Instance table entry. Should be
                 used to create and destroy table entries."                       t"The administrative status of VxLAN instance. Should be 
                 used to activate and deactivate instance."                       �"Virtual Network Identifier.
                 Should be used to determine VxLAN segment and encapsulated
                 packet's VNI number."                       ]"ID of a VLAN interface from which incoming packets
                 should be encapsulated."                       *"A string that identifies VxLAN instance."                       ,"Multicast mode used by this bridge-domain."                      ;"The type of IP multicast group address to be used for
                 BUM traffic for a VXLAN Bridge Domain. The address is
                 required if eltexEvpnVxlanMcastMode is 'pimAsm'.

                 Note that the multicast configuration must be consistent
                 across all routers in the VNI."                       �"The IP multicast group address to be used for BUM traffic
                 for a VXLAN Bridge Domain.  The address is required if
                 eltexEvpnVxlanMcastMode is 'pimAsm'."                       9"The route distinguisher in use for this VxLAN instance."                       �"The auto-derived route target for this VxLAN instance.

                 Set to all zeros if EVPN does not have the information
                 required to derive the value."                       +"Operational status of the VxLAN instance."                       �"The reason for the VxLAN instance to be in its current oper
                 status, if the instance is not active or activating."                       f"Indicates that vni used for VXLAN encapsulation
                 of IP packets routed in VRF IP-VRF."                       p"Each entry of this table contains VxLAN instance name and index
                 pairs for auxiliary purposes."                       b"Entry that contains VxLAN instance name and index pairs for
                 auxiliary purposes."                       *"A string that identifies VxLAN instance."                       2"An index that identifies a VxLAN instance entry."                       �"The next precalculated VxLAN instance index that will
                 be used in case of configuration of VxLAN instance through CLI."                       m"Each entry of this table represents route target configuration
                 for certain VxLAN instance."                       C"Represents route target configuration for certain VxLAN instance."                       "8-byte route target value."                       t"The row status of VxLAN Instance table entry. Should be
                 used to create and destroy table entries."                       F"The type of route target which can be either import, export or both."                       Z"Read-only table for displaying VxLAN tunnels in use by
                 VxLAN instances."                       '"A VXLAN tunnel used by EVPN instance."                       1"The local VNI associated with the VxLAN tunnel."                       2"The remote VNI associated with the VxLAN tunnel."                       6"The destination IP address type of the VxLAN tunnel."                       1"The destination IP address of the VxLAN tunnel."                       1"The source IP address type of the VxLAN tunnel."                       ,"The source IP address of the VxLAN tunnel."                       ""VxLAN tunnel operational status."                       C"The index of VxLAN instance entry this tunnel is associated with."                       <"Local VLAN interface ID that is associated with local VNI."                           ]"Read-write table providing configuration parameters for
                 Ethernet Segments."                       ("Configuration for an Ethernet Segment."                       �"Interface index of the Ethernet Segment.
                 Note that this is the interface index bundle
                 interface for the link to the multi-homed CE."                       e"Row status. Used to create and delete the configuration
                 for this Ethernet Segment."                       %"Ethernet Segment type from RFC7432."                       !"Number of the Ethernet Segment."                       1"Configured Ethernet Segment System MAC address."                       �"Read-only Ethernet Segment status table. An entry exists
                 for each interface that has been configured or
                 auto-discovered as an Ethernet Segment."                        "Status of an Ethernet Segment."                       �"Status of the Ethernet Segment configuration.
                 A value of 'up' indicates that the Ethernet Segment
                 configuration is being used in EVPN route advertisements."                       �"Status of the interface.
                 A value of 'up' indicates that the interface is active
                 and capable of forwarding data."                       %"Ethernet Segment type from RFC7432."                       !"Number of the Ethernet Segment."                       1"Configured Ethernet Segment System MAC address."                       m"Indicates which multi-homing procedures, if any, are in
                 operation on the Ethernet Segment."                       �"The route distinguisher in use for advertising
                 the Ethernet Segment route.
                 If no value is configured for evpnEsRouteDistinguisher, the
                 value is auto-generated based on the BGP router ID."                       6"The ES-Import Route Target for the Ethernet Segment."                       x"Time to wait after advertising the Ethernet Segment
                 before running the designated forwarder election."                       �"Type of tunnel endpoint address to advertise in EVPN
                 routes for this ES, or 'unknown' if there is no associated
                 IP address."                       �"Tunnel endpoint address to use in EVPN routes for this ES.
                 This will be the value of evpnEsTnnlEndptAddr if configured
                 otherwise the local router address configured for the
                 entity."                       c"Read-only table listing the IP address of each PE
                 connected to Ethernet Segment."                       ""A member of an Ethernet Segment."                       ;"IP address type of a PE connected to an Ethernet Segment."                       6"IP address of a PE connected to an Ethernet Segment."                       P"Indicates whether the IP address belongs to the local
                 router."                       w"Read-only table identifying the designated forwarder for
                 each supported VLAN on an Ethernet Segment."                       ="The designated forwarder for a VLAN on an Ethernet Segment."                       c"VLAN identifier of a service on the Ethernet Segment, or 0 for
                 untagged traffic."                       ."IP address type of the designated forwarder."                       d"The IP address of the designated forwarder for the VLAN
                 on this Ethernet Segment."                           4"Read-write table for configuring IP-VRFs for EVPN."                       "Configuration for an IP-VRF."                       5"The MRID for which this entry contains information."                       ["Row status. Used to create and delete the configuration
                 for this IP-VRF."                       �"The VXLAN Network Identifier for the IP-VRF.  This is
                 required if the encapsulation is 'vxlan' and ignored
                 otherwise."                       1"Operational status of the IP-VRF configuration."                       \"The reason for the IP-VRF configuration to be in its
                 current oper status."                      �"The route distinguisher in use for this IP-VRF.

                 This is set as follows.

                 -  The value of evpnIpVrfRouteDistinguisher if configured
                    and not set to all zeros.

                 -  Automatically derived if evpnIpVrfRouteDistinguisher is
                    set to all zeros and the IP-VRF has the information
                    required to derive the value.

                    The auto-derived RD is {0x0001, <local IP addr>, VNI}.

                    The <local IP addr> is the configured local router IPv4
                    address, if any, otherwise it is the BGP router ID.

                 -  Set to all zeros otherwise."                       "The text name of the IP-VRF."                           �"Read-only table for displaying MAC addresses belonging to
                 EVPN instances. This includes MAC addresses learned from
                 locally attached customer sites and MAC addresses received
                 from remote EVPN instances."                       1"A MAC address associated with an EVPN instance."                       -"VPN ID which is equal to VxLAN index value."                       6"The Ethernet tag ID associated with the MAC address."                       ""The MAC address in the EVPN FDB."                       y"Type of IP address associated with the MAC address, or
                 'unknown' if there is no associated IP address."                       5"IP address associated with the MAC address, if any."                       m"Arbitrary index, used to distinguish multiple paths
                 associated with a single MAC/IP entry."                       0"Source from which the MAC address was learned."                       �"Type of IP address associated with the BGP next hop for
                 the MAC address.

                 Set to 'unknown' for MAC addresses learned from local
                 customer sites."                       �"The BGP next hop for the MAC address.

                 This returns a zero length string for MAC addresses
                 learned from local customer sites."                       �"The local interface index through which the MAC address
                 can be reached, or zero for a MAC addresses
                 learned through BGP."                       4"The label or VNI associated with this MAC address."                      X"Indicates whether the MAC/IP entry is in use for forwarding.

                 For MAC/IP advertisements from remote EVPN instances,
                 this indicates whether the entry has been accepted
                 and programmed.

                 Always set to 'true' for MAC addresses learned from
                 local customer sites."                       V"The Ethernet Segment Identifier advertised with the
                 MAC/IP address."                       W"The MAC Mobility sequence number associated with the
                 MAC/IP address."                       9"Whether the Sticky flag is set for this MAC/IP address."                       z"Whether the MAC/IP address is being dampened (routes for this
                 MAC/IP are ignored due to a duplication)."                       �"Read-only table for displaying inclusive multicast routes
                 associated with EVPN instances.  This includes routes sent
                 by the local router and routes received from remote EVPN
                 instances."                       Q"An inclusive multicast route associated with an EVPN
                 instance."                       )"The Route Distinguisher from the route."                       0"The Ethernet tag ID associated with the route."                       +"The originating router's IP address type."                       &"The originating router's IP address."                       *"Source from which the route was learned."                       \"Tunnel type as contained in the PMSI attribute associated
                 with the route."                       /"The label or VNI associated with this tunnel."                       ""Tunnel endpoint IP address type."                      �"Tunnel endpoint IP address, taken from the PMSI attribute
                 associated with the route.

                 -  For a tunnel type of ingressReplication, this is the
                    IP address to which data is replicated.
                 -  For a tunnel type of pimAsm, pimBidir or pimSsm, this
                    is the multicast group IP address.
                 -  For other unsupported types this is empty."                      