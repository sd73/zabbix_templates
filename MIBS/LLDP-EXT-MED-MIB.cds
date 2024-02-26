    �"Device Class to which the device is a member.

            A value of notDefined(0) indicates that the device
            has capabilities not covered by any of the LLDP-MED classes.

            A value of endpointClass1(1) indicates that the device
            has endpoint class 1 capabilities.

            A value of endpointClass2(2) indicates that the device
            has endpoint class 2 capabilities.

            A value of endpointClass3(3) indicates that the device
            has endpoint class 3 capabilities.

            A value of networkConnectivity(4) indicates that the device
            has network connectivity device capabilities.
            "              d"The location subtype advertised by the remote endpoint.

             A value coordinateBased(2) indicates that the location subtype
             advertised by the endpoint is defined to use the relevant sub-
             fields of the DHCP option for Coordinate LCI as specified in
             ANSI/TIA-1057, Section 10.2.4.3.1.

             A value civicAddress(3) indicates that the location subtype
             advertised by the endpoint is defined to use the relevant sub-
             fields of the DHCP option for Civic Address as specified in
             ANSI/TIA-1057, Section 10.2.4.3.2.

             A value elin(4) indicates that the location subtype
             advertised by the endpoint is defined to use the Emergency
             Location Information Number (ELIN) as specified in
             ANSI/TIA-1057, Section 10.2.4.3.3."              W"The media type that defines the primary function of the
             application for the policy advertised by an endpoint.

             Having the bit voice(1) set indicates that the media type defining
             a primary function of the application for the policy advertised on
             the local port is voice.

             Having the bit voiceSignaling(3) set indicates that the media type
             defining a primary function of the application for the policy
             advertised on the local port is voice signaling.

             Having the bit guestVoice(4) set indicates that the media type
             Defining a primary function of the application for the policy
             advertised on the local port is guest voice.

             Having the bit guestVoiceSignaling(5) set indicates that the media
             type defining a primary function of the application for the policy
             advertised on the local port is guest voice signaling.

             Having the bit softPhoneVoice(6) set indicates that the media type
             Defining a primary function of the application for the policy
             advertised on the local port is softphone voice.

             Having the bit videoConferencing(7) set indicates that the media
             type defining a primary function of the application for the policy
             advertised on the local port is voice.

             Having the bit streamingVideo(8) set indicates that the media type
             defining a primary function of the application for the policy
             advertised on  the local port is streaming video.

             Having the bit videoSignaling(2) set indicates that the media type
             defining a primary function of the application for the policy
             advertised on the local port is video signaling."              9"Bitmap that includes the MED organizationally defined set of LLDP
            TLVs the device is capable of and whose transmission is allowed on
            the local LLDP agent by network management.

            Each bit in the bitmap corresponds to an LLDP-MED subtype associated
            with a specific TIA TR41.4 MED TLV.

            Having the bit 'capabilities(0)' set indicates that the LLDP
            agent refers to the Capabilities TLVs.

            Having the bit 'networkPolicy(1)' set indicates that the LLDP
            agent refers to the Network Policy TLVs.

            Having the bit 'location(2)' set indicates that
            the LLDP agent refers to the Emergency Communications
            System Location TLVs.

            Having the bit 'extendedPSE(3)' set indicates that
            the LLDP agent refers to the Extended PoE TLVs with PSE
            capabilities.

            Having the bit 'extendedPD(4)' set indicates that
            the LLDP agent refers to the Extended PoE TLVs with PD
            capabilities.

            Having the bit 'inventory(5)' set indicates that
            the LLDP agent refers to the Hardware Revision, Firmware
            Revision, Software Revision, Serial Number, Manufacturer Name,
            Model Name, and Asset ID TLVs."                                        Z"The LLDP Management Information Base extension module for
            TIA-TR41.4 media endpoint discovery information.

            In order to assure the uniqueness of the LLDP-MIB,
            lldpXMedMIB is branched from lldpExtensions using the TIA OUI
            value as the node.  An OUI/'company_id' is a 24 bit globally
            unique assigned number referenced by various standards.

            Copyright (C) TIA (2005).  This version of this MIB module
            is published as Section 13.3 of ANSI/TIA-1057.

            See the standard itself for full legal notices."�"  WG-URL: http://www.tiaonline.org/standards/sfg/scope.cfm#TR-41.4
             WG-EMail: tr41@tiacomm.org
              Contact: Chair, TIA TR-41
               Postal: Telecommunications Industry Association
                       2500 Wilson Blvd., Suite 300
                       Arlington, VA 22201 USA
                  Tel: (703) 907-7700
               E-mail: tr41@tiacomm.org" "200507280000Z" %"Published as part of ANSI/TIA-1057."       -- July 28th, 2005
          "A notification generated by the local device sensing
                a change in the topology that indicates that a new remote
                device attached to a local port, or a remote device disconnected
                or moved from one port to another."                         "Local Device Class." "" ANSI/TIA-1057, Section 10.2.2.2"                     b"A table that controls selection of LLDP TLVs to be transmitted
            on individual ports."                      �"LLDP configuration information that controls the
            transmission of the MED organizationally defined TLVs on
            LLDP transmission capable ports.

            This configuration object augments the lldpPortConfigEntry of
            the LLDP-MIB, therefore it is only present along with the port
            configuration defined by the associated lldpPortConfigEntry
            entry.

            Each active lldpXMedPortConfigEntry must be stored and
            retrieved from non-volatile storage (along with the
            corresponding lldpPortConfigEntry) after a re-initialization
            of the management system."                      �"The bitmap includes the MED organizationally defined set of LLDP
            TLVs whose transmission is possible for the respective port
            on the LLDP agent of the device. Each bit in the bitmap corresponds
            to an LLDP-MED subtype associated with a specific TIA TR41.4 MED
            optional TLV. If the bit is set, the agent supports the
            corresponding TLV." !"ANSI/TIA-1057, Section 10.2.2.3"                    }"The lldpXMedPortConfigTLVsTxEnable, defined as a bitmap,
            includes the MED organizationally defined set of LLDP
            TLVs whose transmission is allowed on the local LLDP agent by
            the network management.  Each bit in the bitmap corresponds
            to an LLDP-MED subtype associated with a specific TIA TR41.4 MED
            optional TLV. If the bit is set, the agent will send the
            corresponding TLV if the respective capability is supported per
            port.

            Setting a bit with in this object for a non-supported capability
            shall have no functional effect and will result in an inconsistent
            value error returned to the management application.

            There are other rules and restrictions that prevent arbitrary
            combinations of TLVs to be enabled on LLDP-MED devices according to
            the device classes. These rules are defined in Section 10.2.1,
            Tables 5 - 9 of ANSI/TIA-1057. In case a management application
            attempts to set this object to a value that does not follow the rules,
            the set operation shall have and will result in an inconsistent
            value error returned to the management application.

            Setting this object to an empty set is valid and effectively
            disables LLDP-MED on a per-port basis by disabling transmission of
            all MED organizational TLVs. In this case the remote tables objects
            in the LLDP-MED MIB corresponding to the respective port will not
            be populated.

            The default value for lldpXMedPortConfigTLVsTxEnable object
            is an empty set, which means no enumerated values are set.

            The value of this object must be restored from non-volatile
            storage after a re-initialization of the management system." !"ANSI/TIA-1057, Section 10.2.2.3"                     �"A value of 'true(1)' enables sending the topology change
             traps on this port.
             A value of 'false(2)' disables sending the topology change
             traps on this port." " ANSI/TIA-1057, Section 12.3"                     �"The number of times the fast start LLDPDU are being sent during the
             activation of the fast start mechanism defined by LLDP-MED."  " ANSI/TIA-1057, Section 11.2.1"                         �"This table contains one row per policy type per port
             of media policy information (as a part of the MED
             organizational extension) on the local system known
             to this agent."                       S"Information about a particular policy on a specific
             port component."                       }"The media type that defines the primary function of the
             application for the policy advertised by an endpoint." !"ANSI/TIA-1057, Section 10.2.3.1"                    �"An extension of the VLAN Identifier for the port,
             as defined in IEEE 802.1P-1998.

             A value of 1 through 4094 is used to define a valid PVID.

             A value of 0 shall be used if the device is using priority tagged
             frames, meaning that only the 802.1p priority level is significant
             and the default VID of the ingress port is being used instead.

             A value of 4095 is reserved for implementation use." "" ANSI/TIA-1057, Section 10.2.3.5"                     �"This object contains the value of the 802.1p priority
            which is associated with the given port on the
            local system." #" ANSI/TIA-1057, Section 10.2.3.6 "                     �"This object contains the value of the Differentiated Service
            Code Point (DSCP) as defined in IETF RFC 2474 and RFC 2475
            which is associated with the given port on the local system." "" ANSI/TIA-1057, Section 10.2.3.7"                    O"A value of 'true' indicates that the
             network policy for the specified application type is
             currently unknown.  In this case, the VLAN ID, the
             layer 2 priority and the DSCP value fields are ignored.
             A value of 'false' indicates that this network policy
             is defined  " "" ANSI/TIA-1057, Section 10.2.3.2"                    �"A value of 'true' indicates that the application is using a
             tagged VLAN.
             A value of 'false' indicates that for the specific application
             the device either is using an untagged VLAN or does not
             support port based VLAN operation.  In this case, both the
             VLAN ID and the Layer 2 priority fields are ignored and
             only the DSCP value has relevance " "" ANSI/TIA-1057, Section 10.2.3.3"                     Z"The vendor-specific hardware revision string
            as advertised by the endpoint." "" ANSI/TIA-1057, Section 10.2.6.1"                     Z"The vendor-specific firmware revision string
            as advertised by the endpoint." "" ANSI/TIA-1057, Section 10.2.6.2"                     Z"The vendor-specific software revision string
            as advertised by the endpoint." "" ANSI/TIA-1057, Section 10.2.6.3"                     O"The vendor-specific serial number
            as advertised by the endpoint." "" ANSI/TIA-1057, Section 10.2.6.4"                     S"The vendor-specific manufacturer name
            as advertised by the endpoint." "" ANSI/TIA-1057, Section 10.2.6.5"                     L"The vendor-specific model name
            as advertised by the endpoint." "" ANSI/TIA-1057, Section 10.2.6.6"                     ["The vendor-specific asset tracking identifier
            as advertised by the endpoint." "" ANSI/TIA-1057, Section 10.2.6.7"                    �"This table contains Location information as advertised
            by the local system.

            The information may be configured per port by a Location
            Information Server (LIS) or other management application.

            Multiple Location TLVs of different subtypes may be transmitted
            in the same PDU.

            The information in this table MUST be stored in non-volatile-memory
            and persist over restart/reboot sequences."                       >"Information about Location information for the local device."                       6"The location subtype advertised by the local device." !"ANSI/TIA-1057, Section 10.2.4.2"                     �"The location information. Parsing of this information is
             dependent upon the location subtype, as defined by the value of the
             lldpXMedLocLocationSubtype object. " !"ANSI/TIA-1057, Section 10.2.4.3"                    �"Defines the type of Power-via-MDI (Power over Ethernet) advertised
             by the local device.

             A value pseDevice(2) indicates that the device is advertised as a
             Power Sourcing Entity (PSE).

             A value pdDevice(3) indicates that the device is advertised as a
             Powered Device (PD).

             A value of none(4) indicates that the device does not support PoE." !"ANSI/TIA-1057, Section 10.2.5.1"                     s"This table contains one row per port of PSE PoE
            information on the local system known to this agent."                       6"Information about a particular port PoE information."                       �"This object contains the value of the power available from the
            PSE via this port expressed in units of 0.1 watts." #" ANSI/TIA-1057, Section 10.2.5.4 "                    d"Reflects the PD power priority that is being advertised on this
             PSE port.

             If both locally configure priority and
             ldpXMedRemXPoEPDPowerPriority are available on this port, it is
             a matter of local policy which one takes precedence. This object
             reflects the active value on this port.

             If the priority is not configured or known by the PD, the value
             unknown(1) will be returned.

             A value critical(2) indicates that the device advertises its power
             Priority as critical, as per RFC 3621.

             A value high(3) indicates that the device advertises its power
             Priority as high, as per RFC 3621.

             A value low(4) indicates that the device advertises its power
             Priority as low, as per RFC 3621." !"ANSI/TIA-1057, Section 10.2.5.3"                    8"Defines the type of PSE Power Source advertised
             by the local device.

             A value primary(2) indicates that the device advertises its power
             source as primary.

             A value backup(3) indicates that the device advertises its power
             Source as backup." !"ANSI/TIA-1057, Section 10.2.5.2"                     l"This object contains the value of the power required by a
            PD expressed in units of 0.1 watts." #" ANSI/TIA-1057, Section 10.2.4.3 "                    �"Defines the type of Power Source advertised as being used
             by the local device.

             A value fromPSE(2) indicates that the device advertises its power
             source as received from a PSE.

             A value local(3) indicates that the device advertises its power
             source as local.

             A value localAndPSE(4) indicates that the device advertises its
             power source as using both local and PSE power." !"ANSI/TIA-1057, Section 10.2.5.2"                    �"Defines the priority advertised as being required by this PD.

             A value critical(2) indicates that the device advertises its power
             Priority as critical, as per RFC 3621.

             A value high(3) indicates that the device advertises its power
             Priority as high, as per RFC 3621.

             A value low(4) indicates that the device advertises its power
             Priority as low, as per RFC 3621." !"ANSI/TIA-1057, Section 10.2.5.3"                         k"A table that displays LLDP-MED capabilities of remote devices
            connected to individual ports."                      �"LLDP-MED capabilities of remote devices connected to the device
            ports and communicating via LLDP-MED.

            The remote tables in the LLDP-MED MIB excepting this table may be
            sparsely populate. An entry in one of these table is meaningful
            and shall be populated by the agent only if the corresponding bits
            for the respective function are set in the objects in this table. "                      �"The bitmap includes the MED organizationally defined set of LLDP
            TLVs whose transmission is possible on the LLDP agent of the remote
            device connected to this port. Each bit in the bitmap corresponds
            to an LLDP-MED subtype associated with a specific TIA TR41.4 MED
            optional TLV. If the bit is set, the agent has the capability
            to support the corresponding TLV." ""ANSI/TIA-1057, Sections 10.2.2.1"                    �"The bitmap includes the MED organizationally defined set of LLDP
            TLVs whose transmission is possible on the LLDP agent of the remote
            device connected to this port. Each bit in the bitmap corresponds
            to an LLDP-MED subtype associated with a specific TIA TR41.4 MED
            optional TLV. If the bit is set, the agent currently supports the
            corresponding TLV." ""ANSI/TIA-1057, Sections 10.2.2.1"                     X"Device Class as advertised by the device remotely connected to the
             port." "" ANSI/TIA-1057, Section 10.2.2.2"                    e"This table contains media policy information as advertised
            by the remote system.

            This table may be sparsely populated. Entries in this table are
            relevant only if the networkPolicy(0) bits in the
            lldpXMedRemCapSupported and lldpXMedRemCapCurrent objects of the
            corresponding ports are set."                       "Information about the per port per policy type policy
             information for a particular physical network connection."                       �"The media type that defines the primary function of the
             application for the policy advertised by the endpoint connected
             remotely to this port." !"ANSI/TIA-1057, Section 10.2.3.1"                    �"An extension of the VLAN Identifier for the remote system
             connected to this port, as defined in IEEE 802.1P-1998.

             A value of 1 through 4094 is used to define a valid PVID.

             A value of 0 shall be used if the device is using priority tagged
             frames, meaning that only the 802.1p priority level is significant
             and the default VID of the ingress port is being used instead.

             A value of 4095 is reserved for implementation use." "" ANSI/TIA-1057, Section 10.2.3.5"                     �"This object contains the value of the 802.1p priority
            which is associated with the remote system connected at
            given port." "" ANSI/TIA-1057, Section 10.2.3.6"                     �"This object contains the value of the Differentiated Service
            Code Point (DSCP) as defined in IETF RFC 2474 and RFC 2475
            which is associated with remote system connected at the port." "" ANSI/TIA-1057, Section 10.2.3.7"                    N"A value of 'true' indicates that the
             network policy for the specified application type is
             currently unknown.  In this case, the VLAN ID, the
             layer 2 priority and the DSCP value fields are ignored.
             A value of 'false' indicates that this network policy
             is defined." "" ANSI/TIA-1057, Section 10.2.3.2"                    �"A value of 'true' indicates that the application is using a
             tagged VLAN.
             A value of 'false' indicates that for the specific application
             the device either is using an untagged VLAN or does not
             support port based VLAN operation.  In this case, both the
             VLAN ID and the Layer 2 priority fields are ignored and
             only the DSCP value has relevance " "" ANSI/TIA-1057, Section 10.2.3.3"                    ^"This table contains inventory information as advertised
            by the remote system.

            This table may be sparsely populated. Entries in this table are
            relevant only if the inventory(2) bits in the
            lldpXMedRemCapSupported and lldpXMedRemCapCurrent objects of the
            corresponding ports are set "                       f"Information about inventory information for the remote devices
             connected to the ports."                       a"The vendor-specific hardware revision string
            as advertised by the remote endpoint." "" ANSI/TIA-1057, Section 10.2.6.1"                     a"The vendor-specific firmware revision string
            as advertised by the remote endpoint." "" ANSI/TIA-1057, Section 10.2.6.2"                     a"The vendor-specific software revision string
            as advertised by the remote endpoint." "" ANSI/TIA-1057, Section 10.2.6.3"                     V"The vendor-specific serial number
            as advertised by the remote endpoint." "" ANSI/TIA-1057, Section 10.2.6.4"                     Z"The vendor-specific manufacturer name
            as advertised by the remote endpoint." "" ANSI/TIA-1057, Section 10.2.6.5"                     S"The vendor-specific model name
            as advertised by the remote endpoint." "" ANSI/TIA-1057, Section 10.2.6.6"                     b"The vendor-specific asset tracking identifier
            as advertised by the remote endpoint." "" ANSI/TIA-1057, Section 10.2.6.7"                    \"This table contains Location information as advertised
            by the remote system.

            This table may be sparsely populated. Entries in this table are
            relevant only if the Location(3) bits in the
            lldpXMedRemCapSupported and lldpXMedRemCapCurrent objects of the
            corresponding ports are set "                       e"Information about Location information for the remote devices
             connected to the ports."                       9"The location subtype advertised by the remote endpoint." ""ANSI/TIA-1057, Section 10.2.4.2 "                     �"The location information advertised by the remote endpoint.
             Parsing of this information is dependent upon the location
             subtype, as defined by the value of the corresponding
             lldpXMedRemLocationSubType object. " ""ANSI/TIA-1057, Section 10.2.4.3 "                     �"This table contains information about the PoE device type
            as advertised by the remote system.

            This table is densely populated."                       X"Information about PoE type of the remote devices
             connected to the ports."                      �"Defines the type of Power-via-MDI (Power over Ethernet) advertised
             by the remote device.

             A value pseDevice(2) indicates that the device is advertised as a
             Power Sourcing Entity (PSE).

             A value pdDevice(3) indicates that the device is advertised as a
             Powered Device (PD).

             A value none(4) indicates that the device does not support PoE." !"ANSI/TIA-1057, Section 10.2.5.1"                    p"This table contains extended PoE information as advertised
            by the remote devices of PSE type.

            This table may be sparsely populated. Entries in this table are
            relevant only if the extendedPSE(4) bits in the
            lldpXMedRemCapSupported and lldpXMedRemCapCurrent objects of the
            corresponding ports are set "                       l"Information about Extended PoE PSE information for
            the remote devices connected to the ports."                       �"This object contains the value of the power available from the
            PSE via this port expressed in units of 0.1 watts on the remote
            device." "" ANSI/TIA-1057, Section 10.2.5.4"                    9"Defines the type of PSE Power Source advertised
             by the remote device.

             A value primary(2) indicates that the device advertises its power
             source as primary.

             A value backup(3) indicates that the device advertises its power
             Source as backup." !"ANSI/TIA-1057, Section 10.2.5.2"                    �"This object contains the value of the PSE power priority
            advertised by the remote device.

            A value critical(2) indicates that the device advertises its power
            priority as critical, as per RFC 3621.

            A value high(3) indicates that the device advertises its power
            priority as high, as per RFC 3621.

            A value low(4) indicates that the device advertises its power
            priority as low, as per RFC 3621." !"ANSI/TIA-1057, Section 10.2.5.3"                    n"This table contains extended PoE information as advertised
            by the remote devices of PD type.

            This table may be sparsely populated. Entries in this table are
            relevant only if the extendedPD(5) bits in the
            lldpXMedRemCapSupported and lldpXMedRemCapCurrent objects of the
            corresponding ports are set "                       c"Information about XPoEPD information for the remote devices
             connected to the ports."                       �"This object contains the value of the power required by a
            PD connected remotely to the port
            expressed in units of 0.1 watts." #" ANSI/TIA-1057, Section 10.2.5.4 "                    �"Defines the type of Power Source advertised as being used
             by the device connected remotely to the port.

             A value fromPSE(2) indicates that the device advertises its power
             source as received from a PSE.

             A value local(3) indicates that the device advertises its power
             source as local.

             A value localAndPSE(4) indicates that the device advertises its
             power source as using both local and PSE power." !"ANSI/TIA-1057, Section 10.2.5.2"                    �"Defines the priority advertised as being required by the PD
             connected remotely to the port.

             A value critical(2) indicates that the device advertises its power
             Priority as critical, as per RFC 3621.

             A value high(3) indicates that the device advertises its power
             Priority as high, as per RFC 3621.

             A value low(4) indicates that the device advertises its power
             Priority as low, as per RFC 3621." !"ANSI/TIA-1057, Section 10.2.5.3"                             e"The compliance statement for SNMP entities which implement
            the LLDP MED extension MIB."   �"This group represents the information associated with
                the LLDP-MED optional Media Policy TLVs,
                therefore the agent may not implement them." �"This group represents the information associated with
                the LLDP-MED optional inventory TLVs,
                therefore the agent may not implement them." �"This group represents the information associated with
                the LLDP-MED optional Location TLVs,
                therefore the agent may not implement them." �"This group represents the information associated with
                the LLDP-MED optional extended PoE PolicyTLVs, carrying
                PSE information, therefore the agent may
                not implement them." �" This group represents the information associated with
                the LLDP-MED optional extended PoE Policy TLVs, carrying
                PD information, therefore the agent may
                not implement them."                 �"The collection of objects which are used to configure or
            describe the configuration or behavior of the LLDP-MED
            organizational extension implementation."                 �"The collection of objects which are used to represent LLDP
            MED organizational extensions for Media Policy Information."                 �"The collection of objects which are used to represent LLDP
            MED organizational extension for inventory Information."                 �"The collection of objects which are used to represent LLDP
            MED organizational extension for Location Information."                 �"The collection of objects which are used to represent LLDP
            MED organizational extensions for PoE PSE Information."                 "The collection of objects which are used to represent LLDP
            MED organizational extensions for PoE PD Information."                 �"The collection of objects which are used to represent LLDP-
            MED organizational extension Remote Device Information."                 *"Notifications sent by an LLDP-MED agent."                                            