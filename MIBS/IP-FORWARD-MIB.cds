                                   �"The MIB module for the management of CIDR multipath IP
        Routes.

        Copyright (C) The Internet Society (2006).  This version
        of this MIB module is a part of RFC 4292; see the RFC
        itself for full legal notices."8"Editor:
        Brian Haberman
        Johns Hopkins University - Applied Physics Laboratory
        Mailstop 17-S442
        11100 Johns Hopkins Road
        Laurel MD,  20723-6099  USA

        Phone: +1-443-778-1319
        Email: brian@innovationslab.net

        Send comments to <ipv6@ietf.org>" "200602010000Z" "199609190000Z" "199207022156Z"�"IPv4/v6 version-independent revision.  Minimal changes
        were made to the original RFC 2096 MIB to allow easy
        upgrade of existing IPv4 implementations to the
        version-independent MIB.  These changes include:

        Adding inetCidrRouteDiscards as a replacement for the
        deprecated ipRoutingDiscards and ipv6DiscardedRoutes
        objects.

        Adding a new conformance statement to support the
        implementation of the IP Forwarding MIB in a
        read-only mode.
        The inetCidrRouteTable replaces the IPv4-specific
        ipCidrRouteTable, its related objects, and related
        conformance statements.

        Published as RFC 4292." A"Revised to support CIDR routes.
        Published as RFC 2096." )"Initial version, published as RFC 1354."               Q"The number of current inetCidrRouteTable entries that
        are not invalid."                      "The number of valid route entries discarded from the
        inetCidrRouteTable.  Discarded route entries do not
        appear in the inetCidrRouteTable.  One possible reason
        for discarding an entry would be to free-up buffer space
        for other route table entries."                       !"This entity's IP Routing table." $"RFC 1213 Section 6.6, The IP Group"                    P"A particular route to a particular destination, under a
        particular policy (as reflected in the
        inetCidrRoutePolicy object).

        Dynamically created rows will survive an agent reboot.

        Implementers need to be aware that if the total number
        of elements (octets or sub-identifiers) in
        inetCidrRouteDest, inetCidrRoutePolicy, and
        inetCidrRouteNextHop exceeds 111, then OIDs of column
        instances in this table will have more than 128 sub-
        identifiers and cannot be accessed using SNMPv1,
        SNMPv2c, or SNMPv3."                       �"The type of the inetCidrRouteDest address, as defined
        in the InetAddress MIB.

        Only those address types that may appear in an actual
        routing table are allowed as values of this object." 
"RFC 4001"                    �"The destination IP address of this route.

        The type of this address is determined by the value of
        the inetCidrRouteDestType object.

        The values for the index objects inetCidrRouteDest and
        inetCidrRoutePfxLen must be consistent.  When the value
        of inetCidrRouteDest (excluding the zone index, if one
        is present) is x, then the bitwise logical-AND
        of x with the value of the mask formed from the
        corresponding index object inetCidrRoutePfxLen MUST be
        equal to x.  If not, then the index pair is not
        consistent and an inconsistentName error must be
        returned on SET or CREATE requests."                      �"Indicates the number of leading one bits that form the
        mask to be logical-ANDed with the destination address
        before being compared to the value in the
        inetCidrRouteDest field.

        The values for the index objects inetCidrRouteDest and
        inetCidrRoutePfxLen must be consistent.  When the value
        of inetCidrRouteDest (excluding the zone index, if one
        is present) is x, then the bitwise logical-AND
        of x with the value of the mask formed from the
        corresponding index object inetCidrRoutePfxLen MUST be
        equal to x.  If not, then the index pair is not
        consistent and an inconsistentName error must be
        returned on SET or CREATE requests."                       "This object is an opaque object without any defined
        semantics.  Its purpose is to serve as an additional
        index that may delineate between multiple entries to
        the same destination.  The value { 0 0 } shall be used
        as the default value for this object."                      &"The type of the inetCidrRouteNextHop address, as
        defined in the InetAddress MIB.

        Value should be set to unknown(0) for non-remote
        routes.

        Only those address types that may appear in an actual
        routing table are allowed as values of this object." 
"RFC 4001"                     �"On remote routes, the address of the next system en
       route.  For non-remote routes, a zero length string.

        The type of this address is determined by the value of
        the inetCidrRouteNextHopType object."                       �"The ifIndex value that identifies the local interface
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
        protocols."                      
"The number of seconds since this route was last updated
        or otherwise determined to be correct.  Note that no
        semantics of 'too old' can be implied, except through
        knowledge of the routing protocol by which the route
        was learned."                      "The Autonomous System Number of the Next Hop.  The
        semantics of this object are determined by the routing-
        protocol specified in the route's inetCidrRouteProto
        value.  When this object is unknown or not relevant, its
        value should be set to zero."                      "The primary routing metric for this route.  The
        semantics of this metric are determined by the routing-
        protocol specified in the route's inetCidrRouteProto
        value.  If this metric is not used, its value should be
        set to -1."                      "An alternate routing metric for this route.  The
        semantics of this metric are determined by the routing-
        protocol specified in the route's inetCidrRouteProto
        value.  If this metric is not used, its value should be
        set to -1."                      "An alternate routing metric for this route.  The
        semantics of this metric are determined by the routing-
        protocol specified in the route's inetCidrRouteProto
        value.  If this metric is not used, its value should be
        set to -1."                      "An alternate routing metric for this route.  The
        semantics of this metric are determined by the routing-
        protocol specified in the route's inetCidrRouteProto
        value.  If this metric is not used, its value should be
        set to -1."                      "An alternate routing metric for this route.  The
        semantics of this metric are determined by the routing-
        protocol specified in the route's inetCidrRouteProto
        value.  If this metric is not used, its value should be
        set to -1."                       �"The row status variable, used according to row
        installation and removal conventions.

        A row entry cannot be modified when the status is
        marked as active(1)."                       N"The number of current ipCidrRouteTable entries
       that are not invalid."                       !"This entity's IP Routing table." $"RFC 1213 Section 6.6, The IP Group"                     Y"A particular route to  a  particular  destina-
       tion, under a particular policy."                      �"The destination IP address of this route.

       This object may not take a Multicast (Class  D)
       address value.

       Any assignment (implicit or  otherwise)  of  an
       instance  of  this  object to a value x must be
       rejected if the bitwise logical-AND of  x  with
       the  value of the corresponding instance of the
       ipCidrRouteMask object is not equal to x."                      �"Indicate the mask to be logical-ANDed with the
       destination  address  before  being compared to
       the value  in  the  ipCidrRouteDest  field.   For
       those  systems  that  do  not support arbitrary
       subnet masks, an agent constructs the value  of
       the  ipCidrRouteMask  by  reference to the IP Ad-
       dress Class.

       Any assignment (implicit or  otherwise)  of  an
       instance  of  this  object to a value x must be
       rejected if the bitwise logical-AND of  x  with
       the  value of the corresponding instance of the
       ipCidrRouteDest object is not equal to ipCidrRoute-
       Dest."                      ""The policy specifier is the IP TOS Field.  The encoding
       of IP TOS is as specified  by  the  following convention.
       Zero indicates the default path if no more  specific
       policy applies.

       +-----+-----+-----+-----+-----+-----+-----+-----+
       |                 |                       |     |
       |   PRECEDENCE    |    TYPE OF SERVICE    |  0  |
       |                 |                       |     |
       +-----+-----+-----+-----+-----+-----+-----+-----+

                IP TOS                IP TOS
           Field     Policy      Field     Policy
           Contents    Code      Contents    Code
           0 0 0 0  ==>   0      0 0 0 1  ==>   2
           0 0 1 0  ==>   4      0 0 1 1  ==>   6
           0 1 0 0  ==>   8      0 1 0 1  ==>  10
           0 1 1 0  ==>  12      0 1 1 1  ==>  14
           1 0 0 0  ==>  16      1 0 0 1  ==>  18
           1 0 1 0  ==>  20      1 0 1 1  ==>  22
           1 1 0 0  ==>  24      1 1 0 1  ==>  26
           1 1 1 0  ==>  28      1 1 1 1  ==>  30"                       Z"On remote routes, the address of the next sys-
       tem en route; Otherwise, 0.0.0.0."                       �"The ifIndex value which identifies  the  local
       interface  through  which  the next hop of this
       route should be reached."                      K"The type of route.  Note that local(3)  refers
       to  a route for which the next hop is the final
       destination; remote(4) refers to  a  route  for
       which  the  next  hop is not the final destina-
       tion.

       Routes which do not result in traffic forwarding or
       rejection should not be displayed even if the
       implementation keeps them stored internally.


       reject (2) refers to a route which, if matched, discards
       the message as unreachable. This is used in some
       protocols as a means of correctly aggregating routes."                       �"The routing mechanism via which this route was
       learned.  Inclusion of values for gateway rout-
       ing protocols is not  intended  to  imply  that
       hosts should support those protocols."                      !"The number of seconds  since  this  route  was
       last  updated  or  otherwise  determined  to be
       correct.  Note that no semantics of  `too  old'
       can  be implied except through knowledge of the
       routing  protocol  by  which  the   route   was
       learned."                      "A reference to MIB definitions specific to the
       particular  routing protocol which is responsi-
       ble for this route, as determined by the  value
       specified  in the route's ipCidrRouteProto value.
       If this information is not present,  its  value
       should be set to the OBJECT IDENTIFIER { 0 0 },
       which is a syntactically valid object  identif-
       ier, and any implementation conforming to ASN.1
       and the Basic Encoding Rules must  be  able  to
       generate and recognize this value."                      "The Autonomous System Number of the Next  Hop.
       The  semantics of this object are determined by
       the routing-protocol specified in  the  route's
       ipCidrRouteProto  value. When  this object is
       unknown or not relevant its value should be set
       to zero."                      "The primary routing  metric  for  this  route.
       The  semantics of this metric are determined by
       the routing-protocol specified in  the  route's
       ipCidrRouteProto  value.   If  this metric is not
       used, its value should be set to -1."                      "An alternate routing metric  for  this  route.
       The  semantics of this metric are determined by
       the routing-protocol specified in  the  route's
       ipCidrRouteProto  value.   If  this metric is not
       used, its value should be set to -1."                      "An alternate routing metric  for  this  route.
       The  semantics of this metric are determined by
       the routing-protocol specified in  the  route's
       ipCidrRouteProto  value.   If  this metric is not
       used, its value should be set to -1."                      "An alternate routing metric  for  this  route.
       The  semantics of this metric are determined by
       the routing-protocol specified in  the  route's
       ipCidrRouteProto  value.   If  this metric is not
       used, its value should be set to -1."                      "An alternate routing metric  for  this  route.
       The  semantics of this metric are determined by
       the routing-protocol specified in  the  route's
       ipCidrRouteProto  value.   If  this metric is not
       used, its value should be set to -1."                       ^"The row status variable, used according to
       row installation and removal conventions."                               "The CIDR Route Table."                 "IP Multipath Route Table."                     Y"The compliance statement for SNMPv2 entities
       which implement the ipForward MIB."               W"The compliance statement for SNMP entities
       which implement the ipForward MIB."               N"The number of current  ipForwardTable  entries
       that are not invalid."                       !"This entity's IP Routing table." $"RFC 1213 Section 6.6, The IP Group"                     Y"A particular route to  a  particular  destina-
       tion, under a particular policy."                      �"The destination IP address of this route.   An
       entry  with  a value of 0.0.0.0 is considered a
       default route.

       This object may not take a Multicast (Class  D)
       address value.

       Any assignment (implicit or  otherwise)  of  an
       instance  of  this  object to a value x must be
       rejected if the bitwise logical-AND of  x  with
       the  value of the corresponding instance of the
       ipForwardMask object is not equal to x."                      �"Indicate the mask to be logical-ANDed with the
       destination  address  before  being compared to
       the value  in  the  ipForwardDest  field.   For
       those  systems  that  do  not support arbitrary
       subnet masks, an agent constructs the value  of
       the  ipForwardMask  by  reference to the IP Ad-
       dress Class.

       Any assignment (implicit or  otherwise)  of  an
       instance  of  this  object to a value x must be
       rejected if the bitwise logical-AND of  x  with
       the  value of the corresponding instance of the
       ipForwardDest object is not equal to ipForward-
       Dest."                     -- 0.0.0.0
?"The general set of conditions that would cause
       the  selection  of  one multipath route (set of
       next hops for a given destination) is  referred
       to as 'policy'.

       Unless the mechanism indicated by ipForwardPro-
       to specifies otherwise, the policy specifier is
       the IP TOS Field.  The encoding of IP TOS is as
        specified  by  the  following convention.  Zero
       indicates the default path if no more  specific
       policy applies.

       +-----+-----+-----+-----+-----+-----+-----+-----+
       |                 |                       |     |
       |   PRECEDENCE    |    TYPE OF SERVICE    |  0  |
       |                 |                       |     |
       +-----+-----+-----+-----+-----+-----+-----+-----+

                IP TOS                IP TOS
           Field     Policy      Field     Policy
           Contents    Code      Contents    Code
           0 0 0 0  ==>   0      0 0 0 1  ==>   2
           0 0 1 0  ==>   4      0 0 1 1  ==>   6
           0 1 0 0  ==>   8      0 1 0 1  ==>  10
           0 1 1 0  ==>  12      0 1 1 1  ==>  14
           1 0 0 0  ==>  16      1 0 0 1  ==>  18
           1 0 1 0  ==>  20      1 0 1 1  ==>  22
           1 1 0 0  ==>  24      1 1 0 1  ==>  26
           1 1 1 0  ==>  28      1 1 1 1  ==>  30

       Protocols defining 'policy' otherwise must  ei-
       ther define a set of values which are valid for
       this  object  or  must  implement  an  integer-
       instanced  policy table for which this object's
       value acts as an index."                       Z"On remote routes, the address of the next sys-
       tem en route; Otherwise, 0.0.0.0."                       �"The ifIndex value which identifies  the  local
       interface  through  which  the next hop of this
       route should be reached."                      �"The type of route.  Note that local(3)  refers
       to  a route for which the next hop is the final
       destination; remote(4) refers to  a  route  for
       which  the  next  hop is not the final destina-
       tion.

       Setting this object to the value invalid(2) has
       the  effect  of  invalidating the corresponding
       entry in the ipForwardTable object.   That  is,
       it  effectively  disassociates  the destination
       identified with said entry from the route iden-
       tified    with    said   entry.    It   is   an
       implementation-specific matter  as  to  whether
       the agent removes an invalidated entry from the
       table.  Accordingly, management  stations  must
       be prepared to receive tabular information from
       agents that corresponds to entries not current-
       ly  in  use.  Proper interpretation of such en-
       tries requires examination of the relevant  ip-
       ForwardType object."                       �"The routing mechanism via which this route was
       learned.  Inclusion of values for gateway rout-
       ing protocols is not  intended  to  imply  that
       hosts should support those protocols."                      !"The number of seconds  since  this  route  was
       last  updated  or  otherwise  determined  to be
       correct.  Note that no semantics of  `too  old'
       can  be implied except through knowledge of the
       routing  protocol  by  which  the   route   was
       learned."                      "A reference to MIB definitions specific to the
       particular  routing protocol which is responsi-
       ble for this route, as determined by the  value
       specified  in the route's ipForwardProto value.
       If this information is not present,  its  value
       should be set to the OBJECT IDENTIFIER { 0 0 },
       which is a syntactically valid object  identif-
       ier, and any implementation conforming to ASN.1
       and the Basic Encoding Rules must  be  able  to
       generate and recognize this value."                       �"The Autonomous System Number of the Next  Hop.
       When  this  is  unknown  or not relevant to the
       protocol indicated by ipForwardProto, zero."                      "The primary routing  metric  for  this  route.
       The  semantics of this metric are determined by
       the routing-protocol specified in  the  route's
       ipForwardProto  value.   If  this metric is not
       used, its value should be set to -1."                      "An alternate routing metric  for  this  route.
       The  semantics of this metric are determined by
       the routing-protocol specified in  the  route's
       ipForwardProto  value.   If  this metric is not
       used, its value should be set to -1."                      "An alternate routing metric  for  this  route.
       The  semantics of this metric are determined by
       the routing-protocol specified in  the  route's
       ipForwardProto  value.   If  this metric is not
       used, its value should be set to -1."                      "An alternate routing metric  for  this  route.
       The  semantics of this metric are determined by
       the routing-protocol specified in  the  route's
       ipForwardProto  value.   If  this metric is not
       used, its value should be set to -1."                      "An alternate routing metric  for  this  route.
       The  semantics of this metric are determined by
       the routing-protocol specified in  the  route's
       ipForwardProto  value.   If  this metric is not
       used, its value should be set to -1."                      