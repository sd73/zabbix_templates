               �"Table containing the parameters and statistics
                         for the local PPP entity that are related to
                         the operation of Bridging over the PPP."                       K"Bridging information for a particular PPP
                         link."                      "The operational status of the Bridge network
                         protocol. If the value of this object is up
                         then the finite state machine for the Bridge
                         network protocol has reached the Opened state."                      <"Indicates whether the local node will perform
                         Tinygram Compression when sending packets to
                         the remote entity. If false then the local
                         entity will not perform Tinygram Compression.
                         If true then the local entity will perform
                         Tinygram Compression. The value of this object
                         is meaningful only when the link has reached
                         the open state (pppBridgeOperStatus is
                         opened)." P"Section 6.7, Tinygram Compression Option, of
                         RFC1220"                    �"If false(1) then the remote entity is not
                         expected to perform Tinygram Compression. If
                         true then the remote entity is expected to
                         perform Tinygram Compression. The value of this
                         object is meaningful only when the link has
                         reached the open state (pppBridgeOperStatus is
                         opened)." P"Section 6.7, Tinygram Compression Option, of
                         RFC1220"                    "Indicates whether the local node will include
                         the LAN Identification field in transmitted
                         packets or not. If false(1) then the local node
                         will not transmit this field, true(2) means
                         that the field will be transmitted. The value
                         of this object is meaningful only when the link
                         has reached the open state (pppBridgeOperStatus
                         is opened)." N"Section 6.8, LAN Identification Option, of
                         RFC1220"                    "Indicates whether the remote node has
                         indicated that it will include the LAN
                         Identification field in transmitted packets or
                         not. If false(1) then the field will not be
                         transmitted, if true(2) then the field will be
                         transmitted. The value of this object is
                         meaningful only when the link has reached the
                         open state (pppBridgeOperStatus is opened)." N"Section 6.8, LAN Identification Option, of
                         RFC1220"                     �"Table containing the parameters and statistics
                         for the local PPP entity that are related to
                         the operation of Bridging over the PPP."                       Y"Bridging Configuration information for a
                         particular PPP link."                      �"The immediate desired status of the Bridging
                         network protocol. Setting this object to open
                         will inject an administrative open event into
                         the Bridging network protocol's finite state
                         machine. Setting this object to close will
                         inject an administrative close event into the
                         Bridging network protocol's finite state
                         machine."                       �"If false then the local BNCP entity will not
                         initiate the Tinygram Compression Option
                         Negotiation. If true then the local BNCP entity
                         will initiate negotiation of this option." P"Section 6.7, Tinygram Compression Option, of
                         RFC1220"                    ~"If false then the local PPP Entity will not
                         initiate a Remote Ring Identification Option
                         negotiation. If true then the local PPP entity
                         will intiate this negotiation. This MIB object
                         is relevant only if the interface is for 802.5
                         Token Ring bridging." a"Section 6.4, IEEE 802.5 Remote Ring
                         Identification Option, of RFC1220"                    x"If false then the local PPP Entity is not to
                         initiate a Line Identification Option
                         negotiation. If true then the local PPP entity
                         will intiate this negotiation. This MIB object
                         is relevant only if the interface is for 802.5
                         Token Ring bridging." Z"Section 6.5, IEEE 802.5 Line Identification
                         Option, of RFC1220"                     �"If false then the local BNCP entity will not
                         initiate the LAN Identification Option
                         Negotiation. If true then the local BNCP entity
                         will initiate negotiation of this option." N"Section 6.8, LAN Identification Option, of
                         RFC1220"                     f"Table identifying which MAC media types are
                         enabled for the Bridging NCPs."                       R"Status of a specific MAC Type for a specific
                         PPP Link."                      c"The MAC type for which this entry in the
                         pppBridgeMediaTable is providing status
                         information. Valid values for this object are
                         defined in Section 6.6 MAC Type Support
                         Selection of RFC1220 (Bridging Point-to-Point
                         Protocol)." P"Section 6.6, MAC Type Support Selection, of
                         RFC1212."                    X"Indicates whether the local PPP Bridging
                         Entity will accept packets of the protocol type
                         identified in pppBridgeMediaMacType on the PPP
                         link identified by ifIndex or not. If this
                         object is accept then any packets of the
                         indicated MAC type will be received and
                         properly processed. If this object is dont-
                         accept then received packets of the indicated
                         MAC type will not be properly processed." P"Section 6.6, MAC Type Support Selection, of
                         RFC1212."                    A"Indicates whether the local PPP Bridging
                         Entity believes that the remote PPP Bridging
                         Entity will accept packets of the protocol type
                         identified in pppBridgeMediaMacType on the PPP
                         link identified by ifIndex or not." P"Section 6.6, MAC Type Support Selection, of
                         RFC1212."                     f"Table identifying which MAC media types are
                         enabled for the Bridging NCPs."                       R"Status of a specific MAC Type for a specific
                         PPP Link."                      i"The MAC type for which this entry in the
                         pppBridgeMediaConfigTable is providing status
                         information. Valid values for this object are
                         defined in Section 6.6 MAC Type Support
                         Selection of RFC1220 (Bridging Point-to-Point
                         Protocol)." P"Section 6.6, MAC Type Support Selection, of
                         RFC1212."                    �"Indicates whether the local PPP Bridging
                         Entity should accept packets of the protocol
                         type identified in pppBridgeMediaConfigMacType
                         on the PPP link identified by ifIndex or not.
                         Setting this object to the value dont-accept
                         has the affect of invalidating the
                         corresponding entry in the
                         pppBridgeMediaConfigTable object. It is an
                         implementation-specific matter as to whether
                         the agent removes an invalidated entry from the
                         table. Accordingly, management stations must be
                         prepared to receive tabular information from
                         agents that corresponds to entries not
                         currently in use. Changing this object will
                         have effect when the link is next restarted." P"Section 6.6, MAC Type Support Selection, of
                         RFC1212."                                