                                                                       1"The private MIB module definition for IPv6 MIB." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "200809250000Z" "Initial version of this MIB."               �"The time interval between tokens being placed in the bucket,
         each token represents a single ICMP error message.
         The interval measured in milliseconds."                       p"The maximum number of tokens stored in the bucket,
         each token represents a single ICMP error message."                       �"The interface which would be used as the egress interface
        for packets sent without a specified IPv6Z interface identifier
        or with the default '0' identifier. Zero value means no default
        interface specified."                       �"This table defines general prefix description,
            based on which a number of longer, more specific, prefixes can
            be defined."                       '"Single entry in general prefix table."                       ""The name assigned to the prefix."                       +"Prefix inet address type. Has to be IPv6."                       �"The IPv6 network assigned to the general prefix.
         This argument must be in the form documented in RFC4293
         where the address is specified in hexadecimal using 16-bit values
         between colons."                       �"Indicates the number of leading one bits that form the
        mask to be logical-ANDed with the inet address
        before being compared to the value in the
        rlIpv6GeneralPrefixInetAddr field."                       M"Interface id to use when creating prefix based on point-to-point interface."                       "Row status."                       w"Maximum number of hops used in router advertisements and all IPv6 packets that
         are originated by the router."                       w"This table defines IPv6 prefixes which are included in IPv6 Neighbor
           Discovery (ND) router advertisements."                       2"Single entry in Neighbor Discovery Prefix table."                      "The index value that uniquely identifies the interface on
            which this prefix is configured.  The interface identified
            by a particular value of this index is the same interface as
            identified by the same value of the IF-MIB's ifIndex."                       �"Indicates whether this object belongs to 'default' entry.
            Default entry contains specifics about advertising prefixes which
            were created from local ipv6 addresses."                       +"Prefix inet address type. Has to be IPv6."                       �"The IPv6 network prefix to include in router advertisements.
          This argument must be in the form documented in RFC4293 where
          the address is specified in hexadecimal using 16-bit values between
          colons."                       �"The length of the IPv6 prefix. A decimal value that indicates
          how many of the high-order contiguous bits of the address comprise
          the prefix (the network portion of the address)."                       ="Admin status of the entry. Relevant only for default entry."                       :"Whether the prefix is included in router advertisements."                      9"If object has the value 'onlink(1)', this prefix is confidered as on-link.
           This prefix will be advertised with the L-bit set and will be present
           in the Routing Table.
           If object has the value 'not-onlink(2)', this prefix will be advertised
           with the L-bit clear, but connected state of the prefix will not be changed.
           If object has the value 'offlink(3)', this prefix is confidered as on-link.
           This prefix will be advertised with the L-bit clear, and will be
           not present in the Routing Table."                       �"If object has the value 'true(1)', this prefix indicates to hosts on
           the local link that the specified prefix can be used for IPv6
           autoconfiguration. The prefix will be advertised with the A-bit set."                       l"The amount of time (in seconds) that the specified IPv6 prefix is
          advertised as being preferred."                       h"The amount of time (in seconds) that the specified IPv6 prefix is
          advertised as being valid."                       "Row status."                       |"This table is parallel to inetCidrRouteTable, and is used to
            configure or display additional route parameters."                       /"Additional parameters for a particular route."                       �"Indicates to a visiting mobile node the interval at which that node
            may expect to receive RAs. The node may use this information in its
            movement detection algorithm."                       V"Configures a default router preference (DRP) for the router on a specific interface."                       �"Indicates that hop limit value used in router advertisement is
            an user configured value and not necessarily value that is used by
            router itself."                       D"This scalar indicates to clear all ipv6 routes from inetCidrTable."                       �"This table used to represent all Path MTU changes to specific destination
            received from 'packet-too-big' messages."                       !"Single entry in Path MTU table."                       +"Prefix inet address type. Has to be IPv6."                       �"The IPv6 destination address for which packet-too-big message
         was received.
         This argument must be in the form documented in RFC4293
         where the address is specified in hexadecimal using 16-bit values
         between colons."                       ^"The MTU value that was received in packet-too-bug message for
         specific destination."                       "This entry's age (seconds)"                       V"This entity is used to clear all or specific-type entries from ipNetToPhysicalTable."                       #"A particular entry in this table."                       ="Interface index of to clear or zero in case of whole table."                       2"Scope of the action - type of entries to delete."                       +"This entity's IPv6 host forwarding table."                       I"A particular Static(user configured) route to a particular destination."                       `"The type of the address used as the destination
       internetwork address or subnet address."                       5"Destination internetwork address or subnet address."                       �"Indicates the number of leading one bits that form the
        mask to be logical-ANDed with the destination address
        before being compared to the value in the
        rlIpv6HostForwardingDest field."                       N"The type of the address used as the next-hop address
        for this route."                      9"The next-hop IP address, if any.
        A next-hop IP address is not required if an output interface
        index is specified (in other words, if rlIpv6HostForwardingIfIndex is
        non-zero).
        If there is no next-hop IP address, the rlIpv6HostForwardingNextHop
        object is set to all zeroes."                       �"The ifIndex value that identifies the local interface
        through which the next hop of this route should be
        reached.  A value of 0 is valid and represents the
        scenario where no interface is specified."                       "Forwarding type"                       "Path cost for this route."                      �"the MIB is relevant when mtsc parameter DHCPv6_client_enabled_by_default is TRUE.
                 If the MIB has non zero value the meaning is that ipv6 interface has removed from configuration by the user
                 on the interface and signs to application not to add ipv6 interface. Otherwise (zero value) - the meaning is
                 that Ipv6 interface must be added. "                       N"The system management IPv6 address which is kept between system mode changes"                       �"The system management IPv6 action:
             clear - delete all ipv6 interfaces from startup configuration database except rlManagementIpv6"                       1"This entity's IPv6 Tunnel if/addr/prefix table."                       1"A particular tunnel configured data to IPv6 db."                       "IfIndex of tunnel interface"                       I"Action of the entry. All other fields relevant for appropriate actions."                       '"Tunnel type (manual/isatap/6to4/...)."                       F"The address used for this tunnel. Could be local IPv4 of the tunnel."                       A"The address/prefix length used for above address if applicable."                       5"Mtu of this interface. Used for host isatap tunnels"                       D"Minimal router solicitation interval. Used for host isatap tunnels"                       ;"IPv4 address used for link-layer of ipv6 over ipv4 tunnel"                       �"The default value inserted into the TC
      field of the IPv6 header of datagrams originated at
      this entity, whenever a TC value is not supplied
      by the application."                       |"The default value inserted into the User Priority
      field in the 802.1q VLAN tag of IPv4 frames sent by the
      CPU."                       S"Sets the maximum transmission unit (MTU) size in bytes of IPv6 packets (payload)."                       i"This entity's IPv6 auxulary mapping table. Serves to map nexthop ipv6 address to on-link prefix ifindex"                       P"An Auxulary Mapping table to find onlink prefix ifindex for ipv6 static route."                       N"The type of the address used as the next-hop address
        for this route."                       "The next-hop IP address"                       1"The ifIndex mapped to specified necthop address"                                       �"This table is parallel to ipAddressTable, and is used to
            add/delete IPv6 entries to/from that table. It contains
            private objects."                       0"An address mapping for a particular interface."                       $"The prefix length of this address."                       2"Extend standard field ipAddressType to multicast"                       u"This table is parallel to ipv6InterfaceTable, and is used to
            configure additional interface parameters."                       A"Additional configuration parameters for a particular interface."                       5"ND Duplicated address detection number of attempts."                       Z"Enables or disables Stateless Address Auto configuration
         on specific interface."                       c"Enables or disables sending of ICMP Destination Unreachable
         Error on specific interface."                       e"The maximum transmission unit (MTU) size of IPv6 packets
            sent on an interface in bytes."                       4"Set version of MLD protocol on specific interface."                      
"This value will be included in all IPv6 router advertisements sent
            out this interface. Very short intervals are not recommended in
            normal IPv6 operation. When a nondefault value is configured, the
            configured time is both advertised and used by the router itself.
            When value 0 is configured, 0 seconds (unspecified) advertised in
            router advertisements and the value 1000 milliseconds is used for
            the neighbor discovery activity of the router itself."                       �"Enables or disables sending of ICMP IPv6 redirect messages to
         re-send a packet through the same interface on which the packet was
         received."                       |"This table is parallel to inetCidrRouteTable, and is used to
            configure or display additional route parameters."                       /"Additional parameters for a particular route."                       �"The remaining length of time, in seconds, that this route
            will continue to be valid, i.e., time until deprecation.
            A value of 4,294,967,295 represents infinity."                       �"A reference to MIB definitions specific to the particular routing
            protocol which is responsible for this route, as determined by the
            value specified  in the route's inetCidrRouteProto value."                       �"This table is parallel to ipNetToPhysicalTable, and is used to
            configure or display additional neighbor parameters."                       &"Additional parameters for a neighbor"                       q"This object has the value 'true(1)', if the neighbor
            is router; otherwise, the value is 'false(2)'."                       t"Time (in seconds) since the address was confirmed to be reachable.
            Only, relevant for dynamic entries."                       �"This entity's static (user configured) Inet Routing table.
         Entries are MAX-ACCESSible even if not used for forwarding "                       I"A particular Static(user configured) route to a particular destination."                       `"The type of the address used as the destination
       internetwork address or subnet address."                      q"Destination internetwork address or subnet address.  The
        destination prefix length is applied to this value, and to a
        particular destination address, to determine whether the route
        applies to the particular address.
        If the prefix length is L, then applying the length to an address
        means taking the first L bits of the address."                       �"Indicates the number of leading one bits that form the
        mask to be logical-ANDed with the destination address
        before being compared to the value in the
        rlInetStaticRouteDest field."                       N"The type of the address used as the next-hop address
        for this route."                      �"The next-hop IP address, if any.
        If rlInetStaticRouteAction is 'forward', there may or may not be
        a next-hop IP address.
        A next-hop IP address is not required if an output interface
        index is specified (in other words, if rlInetStaticRouteIfIndex is
        non-zero).
        If rlInetStaticRouteAction is not 'forward', there is no next-hop
        IP address.
        If there is no next-hop IP address, the rlInetStaticRouteNextHop
        object is set to all zeroes."                       �"The ifIndex value that identifies the local interface
        through which the next hop of this route should be
        reached.  A value of 0 is valid and represents the
        scenario where no interface is specified."                       ""Path cost for this static route."                       >"Same as inetCidrRouteType  MIB (excluded 'other' route type)"                      V"Static  - The route is configured over Static IP.
                  This route is written to configuration files.
        Dhcp    - The route is Configured by DHCP
                  (received as part of DHCP configuration)
                  This route IS NOT written to configuration files
        Default - The route is Configured by default system config
                  exists till any other configuration is applied.
        Icmp    - The route is Configured by ICMP protocol either by
                  router advertisements or to be advertised in router
                  advertisements ."                       �"The row status variable, used according to row
        installation and removal conventions.
        A row entry cannot be modified when the status is
        marked as active(1)."                      �"active - An indication that the route has implication on routing
       inactive - the route is a backup route or it is down. It is not used
                  in forwarding decision.
       Down means that the Ip interface on which it is configured is down.
       (Note: ip interface down may be for two reason - its admin status or
       the L2 interface , on which the ip interface is configured, status"                       "Track object number"                       "Track status"                       �"This table defines administrative distances for
         different protocol routes that are inserted into
         the routing table."                       +"A set of distances per inet address type."                       Q"The inet address type for distance definitions set,
       either IPv4 or IPv6."                       A"The administrative distance used for directly connected routes."                       5"The administrative distance used for static routes."                       2"The administrative distance used for RIP routes."                       <"The administrative distance used for OSPF internal routes."                       N"The administrative distance used for OSPF Autonomous System external routes."                       ?"Internal inetCidrRouteTable - this entity's IP Routing table." $"RFC 1213 Section 6.6, The IP Group"                    d"A particular route to a particular destination, under a
        particular policy (as reflected in the
        rlInternInetCidrRoutePolicy object).

        Dynamically created rows will survive an agent reboot.

        Implementers need to be aware that if the total number
        of elements (octets or sub-identifiers) in
        rlInternInetCidrRouteDest, rlInternInetCidrRoutePolicy, and
        rlInternInetCidrRouteNextHop exceeds 111, then OIDs of column
        instances in this table will have more than 128 sub-
        identifiers and cannot be accessed using SNMPv1,
        SNMPv2c, or SNMPv3."                       �"The type of the rlInternInetCidrRouteDest address, as defined
        in the InetAddress MIB.

        Only those address types that may appear in an actual
        routing table are allowed as values of this object." 
"RFC 4001"                    �"The destination IP address of this route.

        The type of this address is determined by the value of
        the rlInternInetCidrRouteDestType object.

        The values for the index objects rlInternInetCidrRouteDest and
        rlInternInetCidrRoutePfxLen must be consistent.  When the value
        of rlInternInetCidrRouteDest (excluding the zone index, if one
        is present) is x, then the bitwise logical-AND
        of x with the value of the mask formed from the
        corresponding index object rlInternInetCidrRoutePfxLen MUST be
        equal to x.  If not, then the index pair is not
        consistent and an inconsistentName error must be
        returned on SET or CREATE requests."                      �"Indicates the number of leading one bits that form the
        mask to be logical-ANDed with the destination address
        before being compared to the value in the
        rlInternInetCidrRouteDest field.

        The values for the index objects rlInternInetCidrRouteDest and
        rlInternInetCidrRoutePfxLen must be consistent.  When the value
        of rlInternInetCidrRouteDest (excluding the zone index, if one
        is present) is x, then the bitwise logical-AND
        of x with the value of the mask formed from the
        corresponding index object rlInternInetCidrRoutePfxLen MUST be
        equal to x.  If not, then the index pair is not
        consistent and an inconsistentName error must be
        returned on SET or CREATE requests."                      "This object is an opaque object without any defined
        semantics.  Its purpose is to serve as an additional
        index that may delineate between multiple entries to
        the same destination.  The value { 0 0 } shall be used
        as the default value for this object."                      '"The type of the rlInternInetCidrRouteNextHop address, as
        defined in the InetAddress MIB.

        Value should be set to unknown(0) for non-remote
        routes.

        Only those address types that may appear in an actual
        routing table are allowed as values of this object." 
"RFC 4001"                     �"On remote routes, the address of the next system en
       route.  For non-remote routes, a zero length string.

        The type of this address is determined by the value of
        the rlInternInetCidrRouteNextHopType object."                       �"The ifIndex value that identifies the local interface
        through which the next hop of this route should be
        reached.  A value of 0 is valid and represents the
        scenario where no interface is specified."                      �"The type of route.  Note that local(3) refers to a
        route for which the next hop is the final destination;
        remote(4) refers to a route for which the next hop is
        not the final destination.

        Routes that do not result in traffic forwarding or
        rejection should not be displayed, even if the
        implementation keeps them stored internally.

        reject(2) refers to a route that, if matched, discards
        the message as unreachable and returns a notification
        (e.g., ICMP error) to the message sender.  This is used
        in some protocols as a means of correctly aggregating
        routes.

        blackhole(5) refers to a route that, if matched,
        discards the message silently."                       �"The routing mechanism via which this route was learned.
        Inclusion of values for gateway routing protocols is
        not intended to imply that hosts should support those
        protocols."                      "The number of seconds since this route was last updated
        or otherwise determined to be correct.  Note that no
        semantics of 'too old' can be implied, except through
        knowledge of the routing protocol by which the route
        was learned."                      "The Autonomous System Number of the Next Hop.  The
        semantics of this object are determined by the routing-
        protocol specified in the route's rlInternInetCidrRouteProto
        value.  When this object is unknown or not relevant, its
        value should be set to zero."                      	"The primary routing metric for this route.  The
        semantics of this metric are determined by the routing-
        protocol specified in the route's rlInternInetCidrRouteProto
        value.  If this metric is not used, its value should be
        set to -1."                      
"An alternate routing metric for this route.  The
        semantics of this metric are determined by the routing-
        protocol specified in the route's rlInternInetCidrRouteProto
        value.  If this metric is not used, its value should be
        set to -1."                      
"An alternate routing metric for this route.  The
        semantics of this metric are determined by the routing-
        protocol specified in the route's rlInternInetCidrRouteProto
        value.  If this metric is not used, its value should be
        set to -1."                      
"An alternate routing metric for this route.  The
        semantics of this metric are determined by the routing-
        protocol specified in the route's rlInternInetCidrRouteProto
        value.  If this metric is not used, its value should be
        set to -1."                      
"An alternate routing metric for this route.  The
        semantics of this metric are determined by the routing-
        protocol specified in the route's rlInternInetCidrRouteProto
        value.  If this metric is not used, its value should be
        set to -1."                       �"The row status variable, used according to row
        installation and removal conventions.

        A row entry cannot be modified when the status is
        marked as active(1)."                       �"The remaining length of time, in seconds, that this route
            will continue to be valid, i.e., time until deprecation.
            A value of 4,294,967,295 represents infinity."                       �"A reference to MIB definitions specific to the particular routing
            protocol which is responsible for this route, as determined by the
            value specified  in the route's inetCidrRouteProto value."                       �"This entity's static (user configured) Inet Routing table.
         Entries are MAX-ACCESSible even if not used for forwarding "                       I"A particular Static(user configured) route to a particular destination."                       `"The type of the address used as the destination
       internetwork address or subnet address."                      q"Destination internetwork address or subnet address.  The
        destination prefix length is applied to this value, and to a
        particular destination address, to determine whether the route
        applies to the particular address.
        If the prefix length is L, then applying the length to an address
        means taking the first L bits of the address."                       �"Indicates the number of leading one bits that form the
        mask to be logical-ANDed with the destination address
        before being compared to the value in the
        rlInternInetStaticRouteDest field."                       N"The type of the address used as the next-hop address
        for this route."                      "The next-hop IP address, if any.
        If rlInternInetStaticRouteAction is 'forward', there may or may not be
        a next-hop IP address.
        A next-hop IP address is not required if an output interface
        index is specified (in other words, if rlInternInetStaticRouteIfIndex is
        non-zero).
        If rlInternInetStaticRouteAction is not 'forward', there is no next-hop
        IP address.
        If there is no next-hop IP address, the rlInternInetStaticRouteNextHop
        object is set to all zeroes."                       �"The ifIndex value that identifies the local interface
        through which the next hop of this route should be
        reached.  A value of 0 is valid and represents the
        scenario where no interface is specified."                       H"Path cost for this static route. Value of 0 signs default value metric"                       >"Same as inetCidrRouteType  MIB (excluded 'other' route type)"                      V"Static  - The route is configured over Static IP.
                  This route is written to configuration files.
        Dhcp    - The route is Configured by DHCP
                  (received as part of DHCP configuration)
                  This route IS NOT written to configuration files
        Default - The route is Configured by default system config
                  exists till any other configuration is applied.
        Icmp    - The route is Configured by ICMP protocol either by
                  router advertisements or to be advertised in router
                  advertisements ."                       �"The row status variable, used according to row
        installation and removal conventions.
        A row entry cannot be modified when the status is
        marked as active(1)."                      "active - An indication that the route has implication on routing
       inactive - the route is a backup route or it is down. It is not used
                  in forwarding decision.
       Down means that the Ip interface on which it is configured is down."                                                                  