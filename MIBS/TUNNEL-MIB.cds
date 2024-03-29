                                                                  F"The MIB module for management of IP Tunnels,
               independent of the specific encapsulation scheme in
               use.

               Copyright (C) The Internet Society (2005).  This
               version of this MIB module is part of RFC 4087;  see
               the RFC itself for full legal notices." �" Dave Thaler
                 Microsoft Corporation
                 One Microsoft Way
                 Redmond, WA  98052-6399
                 EMail: dthaler@microsoft.com" "200505160000Z" "199908241200Z"8"IPv4-specific objects were deprecated, including
               tunnelIfLocalAddress, tunnelIfRemoteAddress, the
               tunnelConfigTable, and the tunnelMIBBasicGroup.

               Added IP version-agnostic objects that should be used
               instead, including tunnelIfAddressType,
               tunnelIfLocalInetAddress, tunnelIfRemoteInetAddress,
               the tunnelInetConfigTable, and the
               tunnelIMIBInetGroup.

               The new tunnelIfLocalInetAddress and
               tunnelIfRemoteInetAddress objects are read-write,
               rather than read-only.

               Updated DESCRIPTION clauses of existing version-
               agnostic objects (e.g., tunnelIfTOS) that contained
               IPv4-specific text to cover IPv6 as well.

               Added tunnelIfFlowLabel for tunnels over IPv6.

               The encapsulation method was previously an INTEGER
               type, and is now an IANA-maintained textual
               convention.

               Published as RFC 4087." )"Initial version, published as RFC 2667."       -- May 16, 2005
               V"The (conceptual) table containing information on
               configured tunnels."                       i"An entry (conceptual row) containing the information
               on a particular configured tunnel."                       ."The encapsulation method used by the tunnel."                       �"The IPv4 TTL or IPv6 Hop Limit to use in the outer IP
               header.  A value of 0 indicates that the value is
               copied from the payload's header."                      r"The method used by the tunnel to secure the outer IP
               header.  The value ipsec indicates that IPsec is used
               between the tunnel endpoints for authentication or
               encryption or both.  More specific security-related
               information may be available in a MIB module for the
               security protocol in use."                      2"The method used to set the high 6 bits (the
               differentiated services codepoint) of the IPv4 TOS or
               IPv6 Traffic Class in the outer IP header.  A value of
               -1 indicates that the bits are copied from the
               payload's header.  A value of -2 indicates that a
               traffic conditioner is invoked and more information
               may be available in a traffic conditioner MIB module.
               A value between 0 and 63 inclusive indicates that the
               bit field is set to the indicated value.

               Note: instead of the name tunnelIfTOS, a better name
               would have been tunnelIfDSCPMethod, but the existing
               name appeared in RFC 2667 and existing objects cannot
               be renamed."                      �"The method used to set the IPv6 Flow Label value.
               This object need not be present in rows where
               tunnelIfAddressType indicates the tunnel is not over
               IPv6.  A value of -1 indicates that a traffic
               conditioner is invoked and more information may be
               available in a traffic conditioner MIB.  Any other
               value indicates that the Flow Label field is set to
               the indicated value."                       �"The type of address in the corresponding
               tunnelIfLocalInetAddress and tunnelIfRemoteInetAddress
               objects."                      -"The address of the local endpoint of the tunnel
               (i.e., the source address used in the outer IP
               header).  If the address is unknown, the value is
               0.0.0.0 for IPv4 or :: for IPv6.  The type of this
               object is given by tunnelIfAddressType."                      �"The address of the remote endpoint of the tunnel
               (i.e., the destination address used in the outer IP
               header).  If the address is unknown or the tunnel is
               not a point-to-point link (e.g., if it is a 6to4
               tunnel), the value is 0.0.0.0 for tunnels over IPv4 or
               :: for tunnels over IPv6.  The type of this object is
               given by tunnelIfAddressType."                       �"The maximum number of additional encapsulations
               permitted for packets undergoing encapsulation at this
               node.  A value of -1 indicates that no limit is
               present (except as a result of the packet size)." "RFC 2473, section 4.1.1"                    �"The (conceptual) table containing information on
               configured tunnels.  This table can be used to map a
               set of tunnel endpoints to the associated ifIndex
               value.  It can also be used for row creation.  Note
               that every row in the tunnelIfTable with a fixed
               destination address should have a corresponding row in
               the tunnelInetConfigTable, regardless of whether it
               was created via SNMP."                      �"An entry (conceptual row) containing the information
               on a particular configured tunnel.  Note that there is
               a 128 subid maximum for object OIDs.  Implementers
               need to be aware that if the total number of octets in
               tunnelInetConfigLocalAddress and
               tunnelInetConfigRemoteAddress exceeds 110 then OIDs of
               column instances in this table will have more than 128
               sub-identifiers and cannot be accessed using SNMPv1,
               SNMPv2c, or SNMPv3.  In practice this is not expected
               to be a problem since IPv4 and IPv6 addresses will not
               cause the limit to be reached, but if other types are
               supported by an agent, care must be taken to ensure
               that the sum of the lengths do not cause the limit to
               be exceeded."                       N"The address type over which the tunnel encapsulates
               packets."                       �"The address of the local endpoint of the tunnel, or
               0.0.0.0 (for IPv4) or :: (for IPv6) if the device is
               free to choose any of its addresses at tunnel
               establishment time."                       3"The address of the remote endpoint of the tunnel."                       ."The encapsulation method used by the tunnel."                      h"An identifier used to distinguish between multiple
               tunnels of the same encapsulation method, with the
               same endpoints.  If the encapsulation protocol only
               allows one tunnel per set of endpoint addresses (such
               as for GRE or IP-in-IP), the value of this object is
               1.  For encapsulation methods (such as L2F) which
               allow multiple parallel tunnels, the manager is
               responsible for choosing any ID which does not
               conflict with an existing row, such as choosing a
               random number."                      D"If the value of tunnelInetConfigStatus for this row
               is active, then this object contains the value of
               ifIndex corresponding to the tunnel interface.  A
               value of 0 is not legal in the active state, and means
               that the interface index has not yet been assigned."                      �"The status of this row, by which new entries may be
               created, or old entries deleted from this table.  The
               agent need not support setting this object to
               createAndWait or notInService since there are no other
               writable objects in this table, and writable objects
               in rows of corresponding tables such as the
               tunnelIfTable may be modified while this row is
               active.

               To create a row in this table for an encapsulation
               method which does not support multiple parallel
               tunnels with the same endpoints, the management
               station should simply use a tunnelInetConfigID of 1,
               and set tunnelInetConfigStatus to createAndGo.  For
               encapsulation methods such as L2F which allow multiple
               parallel tunnels, the management station may select a
               pseudo-random number to use as the tunnelInetConfigID
               and set tunnelInetConfigStatus to createAndGo.  In the
               event that this ID is already in use and an
               inconsistentValue is returned in response to the set
               operation, the management station should simply select
               a new pseudo-random number and retry the operation.

               Creating a row in this table will cause an interface
               index to be assigned by the agent in an
               implementation-dependent manner, and corresponding
               rows will be instantiated in the ifTable and the
               tunnelIfTable.  The status of this row will become
               active as soon as the agent assigns the interface
               index, regardless of whether the interface is
               operationally up.

               Deleting a row in this table will likewise delete the
               corresponding row in the ifTable and in the
               tunnelIfTable."                       t"The storage type of this row.  If the row is
               permanent(4), no objects in the row need be writable."                               6"The full compliance statement for the IP Tunnel MIB."   �"An implementation is only required to support IPv4
               and/or IPv6 addresses.  An implementation only needs to
               support the addresses it actually supports on the
               device."             K"The read-only compliance statement for the IP Tunnel
               MIB."   "Write access is not required." "Write access is not required." "Write access is not required.""Write access is not required.

               An implementation is only required to support IPv4
               and/or IPv6 addresses.  An implementation only needs to
               support the addresses it actually supports on the
               device." "Write access is not required." "Write access is not required." "Write access is not required." i"Write access is not required, and active is the only
               status that needs to be supported." "Write access is not required."                        