                                                       �"The number of route changes made to the IP Route
              Database by RIP.  This does not include the refresh
              of a route's age."                       P"The number of responses sent to RIP queries
              from other systems."                       S"A list of subnets which require separate
              status monitoring in RIP."                       -"A Single Routing Domain in a single Subnet."                       �"The IP Address of this system on the indicated
              subnet. For unnumbered interfaces, the value 0.0.0.N,
              where the least significant 24 bits (N) is the ifIndex
              for the IP Interface in network byte order."                       �"The number of RIP response packets received by
              the RIP process which were subsequently discarded
              for any reason (e.g. a version 0 packet, or an
              unknown command type)."                       �"The number of routes, in valid RIP packets,
              which were ignored for any reason (e.g. unknown
              address family, or invalid metric)."                       �"The number of triggered RIP updates actually
              sent on this interface.  This explicitly does
              NOT include full updates sent containing new
              information."                       K"Writing invalid has the effect of deleting
              this interface."                     --          DEFVAL { valid }
 O"A list of subnets which require separate
              configuration in RIP."                       -"A Single Routing Domain in a single Subnet."                       �"The IP Address of this system on the indicated
              subnet.  For unnumbered interfaces, the value 0.0.0.N,
              where the least significant 24 bits (N) is the ifIndex
              for the IP Interface in network byte order."                       h"Value inserted into the Routing Domain field
              of all RIP packets sent on this interface."                      --          DEFVAL { '0000'h }
 C"The type of Authentication used on this
              interface."                     )--          DEFVAL { noAuthentication }
�"The value to be used as the Authentication Key
              whenever the corresponding instance of
              rip2IfConfAuthType has the value simplePassword
              word.  A modification of the corresponding
              instance of rip2IfConfAuthType does not modify
              the rip2IfConfAuthKey value.  If a string shorter
              than 16 octets is supplied, it will be left-
              justified and padded to 16 octets, on the right,
              with nulls (0x00).
              Reading this object always results in an  OCTET
              STRING of length zero; authentication may not
              be bypassed by reading the MIB object."                     --          DEFVAL { ''h }
$"What the router sends on this interface.
              ripVersion1 implies sending RIP updates compliant
              with  RFC  1058.   rip1Compatible implies
              broadcasting RIP-2 updates using RFC 1058 route
              subsumption rules.  ripVersion2 implies
              multicasting RIP-2 updates.  ripV1Demand indicates
              the use of Demand RIP on a WAN interface under RIP
              Version 1 rules.  ripV2Demand indicates the use of
              Demand RIP on a WAN interface under Version 2 rules."                     '--          DEFVAL { rip1Compatible }
 �"This indicates which version of RIP updates
              are to be accepted.  Note that rip2 and
              rip1OrRip2 implies reception of multicast
              packets."                     #--          DEFVAL { rip1OrRip2 }
V"This variable indicates the metric that is to
              be used for the default route entry in RIP updates
              originated on this interface.  A value of zero
              indicates that no default route should be
              originated; in this case, a default route via
              another router may be propagated."                       O"Writing invalid has  the  effect  of  deleting
              this interface."                     --           DEFVAL { valid }
U"The IP Address this system will use as a source
               address on this interface.  If it is a numbered
               interface, this MUST be the same value as
               rip2IfConfAddress.  On unnumbered interfaces,
               it must be the value of rip2IfConfAddress for
               some interface on the system."                       "A list of RIP Peers."                       ."Information regarding a single routing peer."                       �"The IP Address that the peer is using as its source
               address.  Note that on an unnumbered link, this may
               not be a member of any subnet on the system."                       �"The value in the Routing Domain field  in  RIP
              packets received from the peer.  As domain suuport
              is deprecated, this must be zero."                       f"The value of sysUpTime when the most recent
              RIP update was received from this system."                       V"The RIP version number in the header of the
              last RIP packet received."                       X"The number of RIP response packets from this
              peer discarded as invalid."                       l"The number of routes from this peer that were
              ignored because the entry format was invalid."                          