     m"VLAN mapping action for S-VLAN configuration:
                    1 - forward
                    2 - drop."               S"VLAN mapping port type:
                    1 - edge
                    2 - NNI."               e"VLAN mapping default VLAN configuration:
                    1 - set
                    2 - unset."               ^"VLAN mapping port mode:
                    1 - QinQ
                    2 - selective QinQ."                                                                                         O"The private MIB module definition for IP Multicast support in Radlan devices." W"5488 Marvell Lane
					Santa Clara, CA 95054
					USA

					Website:  www.marvell.com" "200602120000Z" "200404190000Z" 1"Editorial changes to support new MIB compilers." "Initial version of this MIB."              �"MIB's version :
           Version 2: the current VLAN MIB replaced the previous one;
           Version 3: field vlanPortForbiddenEgressPort was added.
           Version 4: dot1q and dot1v supported
           Version 5: Private Edge Vlan
                        vlanPrivateEdgeSupported
                        vlanPrivateEdgeMibVersion
                        vlanPrivateEdgeTable"                       8"Maximum number of VLAN Tables supported by the device."                       ;"This table translates Vlan name to Vlan's tag and ifindex"                       $"The row definition for this table."                       "The Vlan's name"                       "The Vlan's tag"                       "The Vlan's ifindex"                       <"This table hold information on port status trunk or access"                       $"The row definition for this table."                       ""The port state, 1 is generic cli"                      G"If a value of the parameter is true a frame with unknown
         destination MAC address sent by the Layer 3 to a VLAN will be
         sent to all ports of the VLAN.
         If a value of the parameter is false a frame with unknown
         destination MAC address sent by the Layer 3 to a VLAN will be
         discarded."                        "supported or not default vlan."                       1"802.1v standard for vlan per port and protocol."                       :"if supported default vlan , indicate enabled or disabled"                       %"special vlan tag used for this port"                       " entry of special tag"                        "specify the special vlan tag ."                       ]"The row status variable, used according to
       row installation and removal conventions."                       -"special Current vlan tag used for this port"                       " entry of Current special tag"                        "specify the special vlan tag ."                       /"specify if the special vlan tag is reserved ."                       +"specify if the special vlan tag is used ."                       "is private edge supported."                       "private edge version."                       "table for pve port and uplink"                       " entry of pve"                       "specify the uplink port."                       ]"The row status variable, used according to
       row installation and removal conventions."                       "is DynamicVlanVlan supported."                       "table for DynamicVlan"                       " entry of DynamicVlan"                       "mac address "                       
"vlan Tag"                       ]"The row status variable, used according to
       row installation and removal conventions."                       <"This table hold information on port status trunk or access"                       $"The row definition for this table."                       	"The ext"                       ]"The row status variable, used according to
       row installation and removal conventions."                       "is private vlan supported."                       "table for PrivateVlan"                       " entry of PrivateVlan"                       
"vlan Tag"                       ]"The row status variable, used according to
       row installation and removal conventions."                       "table for PrivateVlan"                       " entry of PrivateVlan"                       
"vlan Tag"                       ]"The row status variable, used according to
       row installation and removal conventions."                       $" multicast vlan used for this port"                       " entry of multicast tag"                       ,"specify the TV vlan tag, vlan must exist ."                       ]"The row status variable, used according to
       row installation and removal conventions."                       �"A table that contains mappings from Range of MAC
         addresses to Group Identifiers used for
         MAC-based VLAN Classification."                       I"A mapping from a Range of MAC addresses to a
         Group Identifier."                       $"The base MAC address of the range." "IEEE 802.1v clause 8.6.2"                     "The Mask of the range.
        The mask determains the leading '1' bits of the mask (MSB).
        48 means single HOST and 9 means the widest range.
        The MASK is limited to 9 to avoid entring ranges including
        multicast addresses.
        "                       "Represents a group of ranges of MAC addresses
         that are associated together when assigning a
         VID to a frame."                       1"This object indicates the status of this entry."                       Q"A table that contains VID sets used for
         MAC-based VLAN Classification."                       !"A VID set for a port and group."                       E"Designates a group of Ranges in the ranges
         Group Database."                       P"The VID associated with a group of range MAC addresses for
         each port."                       1"This object indicates the status of this entry."                       "table for pve port and uplink"                       " entry of pve"                       "specify the uplink group."                       "specify the uplink port."                       ]"The row status variable, used according to
       row installation and removal conventions."                       "table for pve port and uplink"                       " entry of pve"                       "specify the ifIndex group id."                       "specify the ifIndex group id."                       �"A table that contains mappings from subnet
                 range to Group Identifiers used for
                 Port-and-subnet-based VLAN Classification." "IEEE 802.1v clause 8.6.4"                     H"A mapping from a subnet to a
                        Group Identifier."                       "The IP address of the range "                       -"The numbers of continuous ones in the mask "                       u"Represents a group of subnets that are associated
                        together when assigning a VID to a frame."                       1"This object indicates the status of this entry."                       l"A table that contains VID sets used for
                        Port-and-subnet-based VLAN Classification."                       "A VID set for a port."                       O"Designates a group of subnets in the
                         Group Database."                       S"The VID associated with a group of subnets for
                        each port."                       1"This object indicates the status of this entry."                       4" TriplePlay table, map CPE vlan to multicastTvVlan"                       " entry of TriplePlay table"                       !" Specifies  the CPE inner vlan."                       )" Specifies the multicast TV outer vlan."                       Y"The row status variable, used according to
       row creation and removal conventions."                       R" TriplePlayMulticastTv table saves a list of ports for a certain multicastTvVlan"                       )" entry of triple play MulticastTv table"                       +"Specifies the multicast TV external vlan."                       "the multicast tv port list."                       /"enable disable ext managment on default vlan."                          �"The vlanVoiceAgingTimeout indicates the time (in units of
            minutes) from when the last OUI MAC was ageout from the FDB the port
            will be removed from the Voice VLAN.

            The default value for vlanVoiceAgingTimeout object is 1440 minutes (24 hours).

            The value of this object must be restored from non-volatile
            storage after a re-initialization of the management system."                       �"A table containing static configuration information for
        each voice VLAN configured into the device and dynamic port membership.
        All entries are permanent and will
        be restored after the device is reset."                       H"Information for a voice VLAN configured into the device by management."                       �"An administratively assigned Priority, which will be used
        for all traffic on the voice vlan, this gives the packets
        the requested priority (CoS) within the bridge."                       ^"Remark VPT on tagged frames egress the voice vlan according.
         to priority true.false"                       1"This object indicates the status of this entry."                       �"A table containing static global configuration information for Voice VLANs OUI MAC Prefixes.
        All entries are permanent and will be restored after the device is reset."                       b"Information for a voice VLANs OUI MAC Prefixes configured into the
        device by management."                      3"The index value used to identify the OUI MAC Prefix component
             associated with this entry.

            The value of this object is used as an index to the
            vlanVoiceOUITable.

            Voice VLANs OUI Prefix is the first 3 most significant
            octets of the MAC address."                       *"An optional text that describes the OUI."                       1"This object indicates the status of this entry."                       �"A table containing static and dynamic per port configuration information for Voice VLAN.
        All entries are permanent and will be restored after the device is reset."                       ;"Static and dynamic per port information for a voice VLAN."                       E"Enable this port to be a candidate to be added into the Voice VLAN."                       5"The Voice VLAN-ID the port is a candidate to be in."                       �"Specify this port to be in Secure Mode when entering the Voice VLAN.
          In Secure mode only frames with MAC prefix matched to one of the OUI table prefixes
         are accepted, otherwise dropped."                      8"Port's current status of membership in Voice VLAN.

         Port's possible values of membership in Voice VLAN:
          'Active(1)'    - Port is currently added to a Voice VLAN .
          'NotActive(2)' - Specifies either that port is a candidate to be
                           in Voice VLAN or disabled."                       �"Port's current QOS mode in Voice VLAN.
         Possible values:
          'src(1)' - Only traffic with OUI prefix in the source MAC received QOS of the Voice Vlan.
          'all(2)' - All traffic through that port received QOS of the Voice Vlan."                      �"The vlanVoiceOUISetToDefault indicates that vlanVoiceOUITable
            should be set to it's default values if existed
            (OUI default prefixes).

            To do so the vlanVoiceOUITable should be previuosly deleted by usual
            entries destroying.

            This object behaviors as write-only than
            reading this object will always return 'false'."                           $"list of default valn tagged ports."                       0"List of default VLAN membership enabled ports."                       4" TriplePlay table, map CPE vlan to multicastTvVlan"                       " entry of TriplePlay table"                       "Inet type IPv4/IPv6."                       !" Specifies  the CPE inner vlan."                       )" Specifies the multicast TV outer vlan."                       Y"The row status variable, used according to
       row creation and removal conventions."                       R" TriplePlayMulticastTv table saves a list of ports for a certain multicastTvVlan"                       )" entry of triple play MulticastTv table"                       +"Specifies the multicast TV external vlan."                       "the multicast tv port list."                       1"Indicates enabled or disabled of Asymetric Vlan"                       ="Private vlan table which contains the private vlan entries."                       @"Private vlan entry which contains the private vlan definition."                       M"The static vlan ID which is set to one of the
          private vlan types."                      �"private vlan types:
            primary    - Carries traffic from promiscuous ports.
                         promiscuous port can communicate with all ports of the
                         same PVLAN, including the isolated and community
                         ports of the same PVLAN.

            isolated   - Carries traffic from isolated ports.
                         isolated ports can communicate only with the
                         promiscuous ports of the same PVLAN.

            community  - Carries traffic from community ports.
                         community ports of the same community can communicate
                         among themselves and with the promiscuous ports of the
                         same PVLAN."                       �"The primary vlan ID which has defined in VlanPrivateEntry and which is
          associated with secondary vlan (in vlanPrivateMapTable).
          vlanPrivatePrimaryVid is equivalent to vlanPrivateVid when vlanPrivateVid is
          primary vlan."                       ]"The row status variable, used according to
       row installation and removal conventions."                       M"Private vlan mapping table which contains the private vlan mapping entries."                       �"Private vlan mapping entry which contains the primary / secondary
         private vlan association and their ports membership."                       �"The primary private vlan ID which is associated with the secondary
         (isolated or community) vlan (vlanPrivateMapSecondaryVid)."                       n"The secondary private vlan ID which is associated with the primary
         vlan (vlanPrivateMapPrimaryVid)."                       �"The private vlan promiscuous ports mode which are belongs to the
          association of vlanPrivateMapPrimaryVid and vlanPrivateMapSecondaryVid."                       �"The private vlan host ports mode which are belongs to the
          association of vlanPrivateMapPrimaryVid and vlanPrivateMapSecondaryVid."                       �"The private vlan active promiscuous ports mode which are belongs to the
          association of vlanPrivateMapPrimaryVid and vlanPrivateMapSecondaryVid."                       �"The private vlan active host ports mode which are belongs to the
          association of vlanPrivateMapPrimaryVid and vlanPrivateMapSecondaryVid."                       ]"The row status variable, used according to
       row installation and removal conventions."                       ."The tables contains trunk mode port entries."                       �" The entry contains port ifIndex,native vlan id and vlan list the port has a membership.
          The vlan list can contain not created vlans."                       -"Indicated native vlan index.Default value 0"                       ."vlan trunk mode list 1. Default value is {0}"                       ."vlan trunk mode list 2. Default value is {0}"                       ."vlan trunk mode list 3. Default value is {0}"                       ."vlan trunk mode list 4. Default value is {0}"                       /"The tables contains access mode port entries."                       K" The entry contains port ifIndex,access vlan id and multicast TV vlan id."                       -"Indicated access vlan id.Default value is 0"                       ""Indicated multicast TV vlan id. "                       1"The tables contains customer mode port entries."                       V" The entry contains port ifIndex,customer vlan id and customer multicast TV vlan id."                       /"Indicated customer vlan id.Default value is 0"                       C"vlan customer port mode multicast TV list 1. Default value is {0}"                       C"vlan customer port mode multicast TV list 2. Default value is {0}"                       C"vlan customer port mode multicast TV list 3. Default value is {0}"                       C"vlan customer port mode multicast TV list 4. Default value is {0}"                       '"The table defines L3/L2 port context."                       ?"The entry contains port ifIndex and switch port enable value."                       �"Indicated if a port is switchport (l2 port) or no switchport (l3 port)
                        1 - switchport
                        2 - no switchport. Default is 1"                       8"The tables contains current port mode context entries."                       /"The entry contains current port mode context."                      �"Indicated port context value:
                        0. Lag
                        1. Monitor
                        2. L3
                        3. RAVA
                        4. Dot1x
                        5. Dot1q
                        6. Access
                        7. Trunk
                        8. Customer
                        9. PV_promisc
                        10. PV_host
						11. VM_tunnel
						12. VM_one_to_one"                       ."Enable / Disable Shared Vlans at the device."                       L"Shared vlan learning mapping table which contains the SVL mapping entries."                       T"SVL mapping entry which contains the primary / secondary
         SVL association."                       j"The primary SVL ID which is associated with the secondary
          shared vlan vlanRsvlMapSecondaryVid."                       h"The secondary SVL ID which is associated with the primary
          shared vlan vlanRsvlMapPrimaryVid."                       ^"The row status variable, used according to
        row installation and removal conventions."                       ="A table containing static vlan port membership information."                       -"Static vlan membership information per port"                       7"The port egress vlan static list.Default value is {0}"                       7"The port egress vlan static list.Default value is {0}"                       7"The port egress vlan static list.Default value is {0}"                       7"The port egress vlan static list.Default value is {0}"                       @"The port egress untagged vlan static list.Default value is {0}"                       @"The port egress untagged vlan static list.Default value is {0}"                       @"The port egress untagged vlan static list.Default value is {0}"                       @"The port egress untagged vlan static list.Default value is {0}"                       :"The port forbidden vlan static list.Default value is {0}"                       :"The port forbidden vlan static list.Default value is {0}"                       :"The port forbidden vlan static list.Default value is {0}"                       :"The port forbidden vlan static list.Default value is {0}"                       8"A table contains only one entry of a static vlan list."                       ;"Staticly created by local or network management vlan list"                      �"An index is entrie's sequence.
      This field substitutes a vlan type.
      If the vlan was created by user configuration then
      the type is static.
      If the vlan was created by GVRP/MVRP protocols then the type is dynamicGvrp.
      If the vlan was created by Radius server attribute assignment mechanism then
      the type is dynamicRava.
      current includes all vlans which are exist in dot1qVlanCurrentTable."                       3"A list of staticaly created vlans from 1 to 1024."                       H"A list of according to the type field created vlans from 1025 to 2048."                       H"A list of according to the type field created vlans from 2049 to 3072."                       H"A list of according to the type field created vlans from 3073 to 4094."                       /"A table contains created by user vlans names."                       ;"Staticly created by local or network management vlan list"                       {"An administratively assigned string,which may be used
     to identify the VLAN. The VLAN name must be unique or no name." #"IEEE 802.1Q/D11 Section 12.10.2.1"                     -"A table saves a list of vlans per port/lag."                       +"Entry of Triple Play Multicast Tv  table."                       C"A list of staticaly created Triple Play MTV vlans from 1 to 1024."                       F"A list of staticaly created Triple Play MTV vlans from 1025 to 2048."                       F"A list of staticaly created Triple Play MTV vlans from 2049 to 3072."                       F"A list of staticaly created Triple Play MTV vlans from 3073 to 4094."                       t"A table contains a bitmap of the VLAN owners(applications) that can create the VLAN and/or add a port to the VLAN."                       3"Staticly or dynamicly created VLAN ID owner entry"                       �"This field contains a bitmap of owners that can creates and/or  add a port
      to the VLAN.
      There exist three such type of owners :
      Default VLAN
      Manual created VLAN
      Dynamic(RAVA)created VLAN
      GVRP(MVRP)created VLAN
     "                       ;"1-4094 actual vlan (must exist in dot1qvlan static table)"                       ,"Ethernet Type used for VLAN Mapping tunnel"                       J"The tables contains vlan mapping tunnel mode port configuration entries."                       ^" The entry contains port ifIndex, ethernet type value and L2protocol behavior for Edge port."                       O"Specifies S-VLAN-ID used to encapsulate of forwarded untagged Layer 2 frames."                       S"Specify class of service (CoS) value into S-VLAN tag of forwarded Layer 2 frames."                       T"Set a drop threshold for received forwarded L2 protocol frames in kbps resolution."                       f"Set a shutdown threshold for received forwarded L2 protocol frames in packets-per-second resolution."                       S"Configure CDP forward over the Provider network untagged Layer 2 frames received."                       T"Configure LLDP forward over the Provider network untagged Layer 2 frames received."                       S"Configure STP forward over the Provider network untagged Layer 2 frames received."                       S"Configure VTP forward over the Provider network untagged Layer 2 frames received."                       I"The table contains vlan mapping tunnel mode port configuration entries."                       E" The entry contains port ifIndex, ethernet type value for NNI port."                       ."Indicated ethernet type. Default is 0x8100. "                       ]"The row status variable, used according to
       row installation and removal conventions."                       4"The tables contains vlan mapping tunnel mode port."                       R" The entry contains VLAN mapping configuration for edge port, C-VLAN and S-VLAN."                       ""C-VLAN value to be encapsulated."                       "S-VLAN value."                       1"VLAN mapping default VLAN configuration exists."                       "VLAN mapping action defined."                       '"VLAN mapping port type - edge or NNI."                       2"VLAN mapping port mode - QinQ or selective QinQ."                       \"he row status variable, used according to
       row installation and removal conventions."                       4"The tables contains vlan mapping tunnel mode port."                       Q" The entry contains VLAN mapping configuration for Nni port, C-VLAN and S-VLAN."                       ""C-VLAN value to be encapsulated."                       "S-VLAN value."                       '"VLAN mapping port type - edge or NNI."                       \"he row status variable, used according to
       row installation and removal conventions."                       T"Class of service (CoS) value globally into S-VLAN tag of forwarded Layer 2 frames."                                      