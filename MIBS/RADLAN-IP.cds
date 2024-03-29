    r"The origin of the address.

            following are same as ipAddressOriginTC in standard MIB:

            manual(2) indicates that the address was manually configured
            to a specified address, e.g., by user configuration.

            dhcp(4) indicates an address that was assigned to this
            system by a DHCP server.

            linklayer(5) indicates an address created by IPv6 stateless
            auto-configuration.

            random(6) indicates an address chosen by the system at
            random, e.g., an IPv4 address within 169.254/16, or an RFC
            3041 privacy address.

            following are additional to standard MIB:

            autoConfig(7) indicates that the address was auto configured configured
            to a specified address, e.g., not by user configuration.

            eui64(8) indicates that the address was partially configured configured
            to a specified address, e.g., address suffix is based on MAC address with
            EUI-64 representation.

            tunnelIsatap(9) indicates that the address an ISATATP tunnel representation.

            tunnelIsatap(10) indicates that the address an 6to4 tunnel representation.

            tunnelIsatap(11) indicates that the address was partially configured configured
            to a specified address, e.g., address prefix is preconfigured.
            "                                                                                                                         /"The private MIB module definition for IP MIB." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "200606220000Z" "Initial version of this MIB."               �"This table is parralel to MIB II IpAddrTable, and is used to
        add/delete entries to/from that table. In addition it contains
        private objects."                       O"The addressing information for one of this
            entity's IP addresses."                       S"The IP address to which this entry's addressing
            information pertains."                      "The index value which uniquely identifies the
            interface to which this entry is applicable.  The
            interface identified by a particular value of this
            index is the same interface as identified by the
            same value of ifIndex."                       �"The subnet mask associated with the IP address of
            this entry.  The value of the mask is an IP
            address with all the network bits set to 1 and all
            the hosts bits set to 0."                       u" This variable controls forwarding of IP (sub)net-directed
          broadcasts destined for an attached sub(net). "                       c"In case there are two IP routers in the domain,
             the address of the second IP router."                       n" The validity of this entry. Invalid indicates that this entry is
          invalid in IpAddrTable (MIB II)."                       �" Indicates how the host part of ip subnet broadcast messages will be
          filled:
           0 - host part will be filled by 0
           1 - host part will be filled by 1."                       �"Indicates whether the router will reply to incoming ARP requests on
         this interface, providing the physical address corresponding to this
         IP interface."                       "The IP Interface name"                       �"The IP Interface owner. Static if interface defined by user, dhcp
            if received by boot protocol like DHCP and internal
            for internal usage."                        "The IP Interface admin status."                       A"If active the interface can be used to send and receive frames."                      5"The IP preference, to be selected as source IP for rsIpAdEntIfIndex.
                this source IP selection is first by preference value.
                if more than one IP has the same preference the one with the
                lowest IP is selected.
                (higher value -> higher preference)"                       �"The IP address unique status defines IP address
                               state in an assignment process and
                               after duplication detection."                       �"Enables or disables sending of ICMP redirect messages to
         re-send a packet through the same interface on which the packet was
         received."                           E"This variable controlls the ability to generate ICMP error messages"                       ]"This table contains ICMP Router Discovery parameters
        configurated per IP interface."                       4"The ICMP parameters configurated for IP interface."                       <"The IP address to which this entry's information pertains."                      " The IP destination address to be used for multicast
              Router Advertisements sent from the interface. The
              only permissible values are the all-systems multicast
              address, 224.0.0.1, or the limited-broadcast address,
              255.255.255.255."                       �"The maximum time allowed between sending multicast
             Router Advertisements from the interface, in seconds.
             Must be no less than 4 seconds and no greater than 1800
             seconds."                      $"The minimum time allowed between sending unsolicited
             multicast Router Advertisements from the interface, in
             seconds.  Must be no less than 3 seconds and no greater
             than rsIcmpRdMaxAdvertInterval.
             Default: 0.75 * rsIcmpRdMaxAdvertInterval."                       �"The maximum length of time that the advertised addresses
             are to be considered as valid. Must be no less than
             rsIcmpRdMaxAdvertInterval and no greater than 9000 seconds.
             Default: 3 * rsIcmpRdMaxAdvertInterval."                       Q"A flag indicating whether or not the address is to be
              advertised."                       �"The preferability of the address as a default router
             address, relative to other router addresses on the same
             subnet."                       b"Setting of any value to this object set values of
             all fields to the default values."                              "Setting to value deleteArpTab(1): deletes the arp table -
                                              static and dynamic entries
            deleteIpArpDynamicEntries(2):     delete all dynamic entries
            deleteIpArpStaticEntries(3):      delete all static entries
            deleteIpArpDelDynamicRefreshStatic(4) - delete all dynamic -
                                                    refresh static, thus
                                                    refrashing FFT.
            on get returns the last action"                      "This variable defines the maximum time period (in second) that can
          pass between ARP requests concerning an entry in the ARP table.
          After this time period, the entry is deleted from the table.
          Default value 0 means using value based on IP forwarding mode."                      T"When ARP Proxy is enabled, the router can respond to
          ARP requests for nodes located on a different sub-net,
          provided they are it its network table. The router responds
          with its own MAC address.
          When ARP Proxy is disabled, the router responds only
          to ARP requests for its own IP addresses."                       f"Displays how many ARP requests have been sent out to an ARP server
          for address resolution."                       m"Displays how many ARP replies have been sent out to an ARP client
          in response to request packets."                       �"Displays how many proxy ARP replies have been sent out in response
          to request packets. A proxy router serving as a gateway to a subnet
          would respond with a proxy reply."                       u"Specifies the frequency in seconds in which to send out ARP
          requests to resolve the Next Hop MAC address."                      �"MIB's version, the current version is 2.
          Version 1:
            rsArpDeleteTable
                Setting this object to any not-null value has the effect
                of deleting all entries of the ARP table.
          Version 2:
            rsArpDeleteTable
                Setting to value deleteArpTab(1): deletes the arp table -
                                                  static and dynamic entries
                deleteIpArpDynamicEntries(2):     delete all dynamic entries
                deleteIpArpStaticEntries(3):      delete all static entries
                deleteIpArpDelDynamicRefreshStatic(4):
                                                    delete all dynamic -
                                                    refresh static, thus
                                                    refrashing FFT.
                on get returns the last action.
            New MIB variables support:
                rsArpRequestsSent
                rsArpRepliesSent
                rsArpProxyRepliesSent
                rsArpUnresolveTimer
                rsArpMibVersion
          Version 3:
            New MIB variables support:
            rsArpStaticTable
            rsArpInterfaceTable"                       ]"The table used for adding static ARP entries
         without specifying Layer 2 interface."                       F"Each entry contains one IpAddress to `physical' address equivalence."                       H"The IpAddress corresponding to the media-dependent `physical' address."                       )"The media-dependent `physical' address."                       "Entry status."                      "L2 Interface specific configuration for ARP Application.
         Entry in this table will be dynamically created,
         when first IP Address is defined on specific L2 interface,
         and destroyed when the last IP address on this L2 interface is removed"                       W"Each entry contains L2 Interface specific configuration
         for ARP Application."                      "The index value that uniquely identifies the interface to
         which this entry is applicable.  The interface identified by
         a particular value of this index is the same interface as
         identified by the same value of the IF-MIB's ifIndex."                      "This variable defines the maximum time period (in second) that can
          pass between ARP requests concerning an entry in the ARP table.
          After this time period, the entry is deleted from the table.
          Default value 0 means using value from rsArpInactiveTimeOut"                      T"When ARP Proxy is enabled, the router can respond to
          ARP requests for nodes located on a different sub-net,
          provided they are it its network table. The router responds
          with its own MAC address.
          When ARP Proxy is disabled, the router responds only
          to ARP requests for its own IP addresses."                       4"Displays how many ARP entries stored in ARP Table."                           3" General Retransmission time-out value (seconds) "                       1" Total Retransmission time-out value (seconds) "                       �"The file name include path where the Router Server will put the full
         configuration. The default destination address will be the sender
         address."                       �"The file name include path where the Router Server will get the full
         configuration from. The default destination address will be the sender
         address."                       �"The file name include path where the Router Server will get the
         software. The default source address will be the sender address."                       2"The IP address of the configuration / sw server."                       G"The Software Device Name specifies a device name, using this Software"                       5"Holds the current action done on the software file "                                   C"Enables, disables or shutdown (doesn't delete configuration) RIP."                       ""                       N"This table translates IP interfaces's name to
        IP interface's address"                       $"The row definition for this table."                       "The IP Interface name"                       "The IP Interface address"                                "The IpAddrTable MIB's version."                       h"Augmenting ipCidrRouteTable (ip forwarfing information table)
             for added info as read only"                       K"A row of the table ipCidrRouteTable Extended
         by this definition."                       �"Added infor for ipCidrRouteTable.
        extends the info of ipCidrRouteProto to show the route inner protocol.
        Allowes the user to see which type of route in the protocol
        e.g. ospf internal, ospf external."                           �"This entity's    static (user configured) IP Routing table.
       entries are MAX-ACCESSible even if not used for forwarding "                       r"A particular Static(user configured) route to  a  particular  destina-
         tion, under a particular policy."                      �"The destination IP address of this route.
       This object may not take a Multicast (Class  D)
       address value.
       Any assignment (implicit or  otherwise)  of  an
       instance  of  this  object to a value x must be
       rejected if the bitwise logical-AND of  x  with
       the  value of the corresponding instance of the
       rlIpStaticRouteMask object is not equal to x."                      "Indicate the mask to be logical-ANDed with the
       destination address before being compared to
       the value in the rlIpStaticRouteDest  field.   For
       those  systems that do not support arbitrary
       subnet masks, an agent constructs the value  of
       the  rlIpStaticRouteMask  by  reference to the IP Ad-
       dress Class.
       Any assignment (implicit or  otherwise)  of  an
       instance of this object to a value x must be
       rejected if the bitwise logical-AND of  x  with
       the  value of the corresponding instance of the
       rlIpStaticRouteDest object is not equal to ipCidrRoute-
       Dest."                       E"See ipCidrRouteTos definition
        For now only value 0 is valid"                       Y"On remote routes, the address of the next sys-
       tem en route; Otherwise, 0.0.0.0."                       �"The routing  metric  for  this  route.
       The semantics of this metric are determined by the user.
       normal semantic will be next hop count or some administarative distance
       to create routing policy."                      9"The type of route.  Note that local(3)  refers
       to  a route for which the next hop is the final
       destination this is the case when user overides the a local interface
       entry to change it parameters;
       remote(4) refers to  a  route  for
       which  the  next  hop is not the final destina-
       tion.
       reject (2) refers to a route which, if matched, discards
       the message as unreachable. This is may be used as a means of
       correctly aggregating routes, When static routes are distributed (leaked)
       to other protocols."                      "The Autonomous System Number of the Next  Hop.
       The  semantics of this object are determined by
       the routing-protocol specified in  the  route's
       ipCidrRouteProto  value. When  this object is
       unknown or not relevant its value should be set
       to zero."                      �"active - An indication that the route has implication on routing
       inactive - the route is a backup route or it is down. It is not used
                  in forwarding decision.
       Down means that the Ip interface on which it is configured is down.
       (Note: ip interface down may be for two reason - its admin status or
       the L2 interface , on which the ip interface is configured, status"                       ]"The row status variable, used according to
       row installation and removal conventions."                      �"Static - The route is configured over Static IP.
                 This route is written to configuration files.
        Dhcp -   The route is Configured by DHCP
                 (received as part of DHCP configuration)
                 This route IS NOT written to configuration files
        Dhcp -   The route is Configured default system config
                 exist till any other configuration
                 is applied"                           E"This variable specifies current number of entries in rsIpAddrTable."                       J"This variable specifies current number of static prefixes in the system."                       I"This variable specifies current total number of prefixes in the system."                       O"The system management IPv4 address which is kept between system modes changes"                       �"The system management IPv4 action:
             clear - delete all ipv4 interfaces from startup configuration database except rlManagementIpv4"                       X"The system management IPs addresses ifIndex which is kept between system modes changes"                       �"The table specifies IPv4 and IPv6 source 
                       interfaces per application. Only supported 
                       applications are present in the table."                       $"The row definition for this table."                       Z"The application which source interfaces are 
                      defined in the entry."                       v"The ifIndex value of source interface for IPv4 address.
                      Zero means the interface is undefined."                       v"The ifIndex value of source interface for IPv6 address.
                      Zero means the interface is undefined."                      �"This table is parralel to MIB II ipAddressTable, and is used to
            add/delete entries to/from that table.
            The table contains addressing information relevant to the
            entity's interfaces.

            In addition to ipAddressTable defined in standard MIB a represenattion of
            IPv6 addresses based on additionl address origin such as EUI-64, general
            prefix etc.
            In this case the address information is partial address information.
            Together with the address origin and the general prefix (when needed) user can
            construct full address information.

            The index (key) for this table includes this information additionally to the address."                       0"An address mapping for a particular interface."                       &"The address type of rlIpAddressAddr."                      *"The IP address to which this entry's addressing information
            pertains.  The address type of this object is specified in
            rlIpAddressAddrType.

            In case of auto-configure address such as eui-64, general-prefix and others
            it contains the partial address before appropriate manipulation.

            Implementors need to be aware that if the size of
            rlIpAddressAddr exceeds 116 octets, then OIDS of instances of
            columns in this row will have more than 128 sub-identifiers
            and cannot be accessed using SNMPv1, SNMPv2c, or SNMPv3.

            Note:
            Since interpeak doesnt use origin, 3rd index (key) - rlIpAddressOrigin, as part of the key,
            we assume that no same address can exists from different origins."                       "The origin of the address."                       ""The name assigned to the prefix."                      "The index value that uniquely identifies the interface to
            which this entry is applicable.  The interface identified by
            a particular value of this index is the same interface as
            identified by the same value of the IF-MIB's ifIndex."                       2"Extend standard field ipAddressType to multicast"                       ~"A pointer to the row in the prefix table to which this
            address belongs.  May be { 0 0 } if there is no such row."                       �"The status of the address, describing if the address can be
            used for communication.

            In the absence of other information, an IPv4 address is
            always preferred(1)."                       �"The value of sysUpTime at the time this entry was created.
            If this entry was created prior to the last re-
            initialization of the local network management subsystem,
            then this object contains a zero value."                       �"The value of sysUpTime at the time this entry was last
            updated.  If this entry was updated prior to the last re-
            initialization of the local network management subsystem,
            then this object contains a zero value."                      �"The status of this conceptual row.

            The RowStatus TC requires that this DESCRIPTION clause
            states under which circumstances other objects in this row
            can be modified.  The value of this object has no effect on
            whether other objects in this conceptual row can be
            modified.

            A conceptual row can not be made active until the
            rlIpAddressIfIndex has been set to a valid index."                       �"The storage type for this conceptual row.  If this object
            has a value of 'permanent', then no other objects are
            required to be able to be modified."                       $"The prefix length of this address."                      "The Complete IP address to which this entry's addressing information
            pertains.

            In case of auto-configure address such as eui-64, general-prefix and others
            it contains the complete address after appropriate manipulation"                       2"The current operational state of the IP address."                       �"The default value inserted into the DSCP
      field of the IP header of datagrams originated at
      this entity, whenever a DSCP value is not supplied
      by the application."                       |"The default value inserted into the User Priority
      field in the 802.1q VLAN tag of IPv4 frames sent by the
      CPU."                       S"Sets the maximum transmission unit (MTU) size in bytes of IPv4 packets (payload)."                       ""clear - delete all icmp counters"                        "clear - delete all ip counters"                       $"The system management port ifIndex"                                  