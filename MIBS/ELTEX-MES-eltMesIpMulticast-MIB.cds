     H"Specifies one of 2 filter types:
           1- ip.
           2- ipv6."              "Status of IGMP/MLD snooping authorization.
                    waiting - wait response from server;
                    forward - authorization is successfull;
                    discard - access denied by server;
                    timeout - timeout of response from server."              	"The selection method when PIM needs to choose between
             multiple ECMP RPF next hops.

             highestNeighbor(1)    Use no load splitting between ECMP next
                                   hops. If multiple ECMP next hops are
                                   available, PIM selects a next hop
                                   corresponding to the PIM neighbor that has
                                   the highest IP address (using the highest
                                   interface index as tie breaker). If no
                                   next hops are PIM neighbors, then the next
                                   hop that has the highest IP address is
                                   used.

             nextHopGroupHash(2)   Choose the next hop using a hash algorithm
                                   based on group and next hop address.

             groupModulo(3)        Choose the next hop based on group address
                                   modulo the number of next hops."               �"IGMP/MLD snooping authorization type.
                    none   - no authorization;
                    radius - authorization with radius server."               0"The desired administrative state of a MIB row."               O"Specifies one of 2 profile actions:
           1- deny.
           2- permit."                                                                                                         1"The table lists the igmp mld snooping profiles."                       ;"An entry containing igmp mld snooping profile information"                       R"An arbitrary incremental index for the profiles table. Zero for next free index."                       "Name of profile."                       "Type of profile."                       �"The status of a table entry.
          Only three statuses are aceptable: CreateAndGo to create,
          Active to update,Destroy to delete. All other values cause error."                       B"The table lists the igmp mld snooping profile indexes and names."                       >"An entry containing igmp mld snooping profile index and name"                       "Name of profile."                       "Index of profile."                       L"Next free index of profile if eltIgmpMldSnoopProfileGetIndexIndex is zero."                       0"The table lists the igmp mld snooping filters."                       ;"An entry containing igmp mld snooping filter information."                       P"An arbitrary incremental index for the filter table. Zero for next free index."                       +"An index of profile for the filter table."                       "Type of filer."                       R"The start group address can be IPv4/IPv6 depending of eltIgmpMldSnoopFilterType."                       P"The end group address can be IPv4/IPv6 depending of eltIgmpMldSnoopFilterType."                       �"The status of a table entry.
          Only three statuses are aceptable: CreateAndGo to create,
          Destroy to delete. All other values cause error."                       A"The table lists the igmp mld snooping filter indexes and names."                       ="An entry containing igmp mld snooping filter index and name"                       +"An index of profile for the filter table."                       "Type of filer."                       Z"The start group address can be IPv4/IPv6 depending of eltIgmpMldSnoopFilterGetIndexType."                       X"The end group address can be IPv4/IPv6 depending of eltIgmpMldSnoopFilterGetIndexType."                       "Index of filter."                       J"Next free index of filter if eltIgmpMldSnoopFilterGetIndexIndex is zero."                       1"The table lists the igmp mld snooping profiles."                       K"An entry containing assignment of igmp mld snooping profile to interface."                       "Interface index."                       "Index of profile."                       D"The table lists the max groups of igmp mld snooping per interface."                       N"An entry containing number of max groups of igmp mld snooping per interface."                       "Interface index."                       "Max groups count."                       "Registered groups count."                       1"The table lists the igmp mld snooping profiles."                       K"An entry containing assignment of igmp mld snooping profile to interface."                       "Interface index."                       "Index of profile."                       "Status of profile."                       D"The table lists the IGMP/MLD snooping authorization configuration."                       Y"An entry containing assignment of IGMP/MLD snooping authorization config per interface."                       "Interface index."                       "Enable authentication."                       y"If enabled - discard all IGMP report 
        messages in case when all authorization 
        servers are unavailable."                       P"Add IGMP/MLD snooping entry before recieve response from authorization server."                       "Status of auth config entry."                       H"The table lists the IGMP/MLD snooping authorization cache information."                       U"An entry containing assignment of IGMP/MLD snooping entry authorization cache info."                       "MAC address."                       "Interface index."                       "Client address."                       "IGMP group address."                       "Radius server address."                       9"Time of creating entry in seconds since system startup."                       c"Status of IGMP/MLD report authorization 
        (see EltIgmpMldSnoopAuthStatusType descriprion)."                        "Status of authorization entry."                       '" IGMP + Radius cache timeout in mins."                          m"This table is used to statically configure exclude mode
                state on a particular interface - i.e. group memberships
                that do not specify a source address.
                Group memberships associated with objects in this table
                persist regardless of matching dynamic memberships learned
                over IGMP or MLD."                       E"An entry (conceptual row) in the eltIgmpStaticMembershipStarGTable."                       �"The address type (IPv4 or IPv6) of this entry.  This must
             match the address type supported by the entity
             (eltIgmpStaticMembershipStarGAddressType)."                       �"The IP multicast group address which this entry is
                 associated with.  The InetAddressType is identified by
                 eltIgmpStaticMembershipStarGAddressType."                       4"The interface which this entry is associated with."                       &"Used to create and delete the entry."                       0"The desired administrative state of the entry."                      ["This table is used to statically configure include mode
             state on a particular interface - i.e. group memberships
             with a particular source address.

             Group memberships associated with objects in this table
             persist regardless of matching dynamic memberships learned
             over IGMP or MLD."                       B"An entry (conceptual row) in the eltIgmpStaticMembershipSGTable."                       �"The address type (IPv4 or IPv6) of this entry.  This must
             match the address type supported by the entity
             (eltIgmpStaticMembershipSGAddressType)."                       �"The IP multicast group address which this entry is
                 associated with.  The InetAddressType is identified by
                 eltIgmpStaticMembershipSGAddressType."                       4"The interface which this entry is associated with."                       �"The host address which this entry is associated with -
             i.e. the source of multicast traffic that this membership
             includes.

             The InetAddressType is identified by
             eltIgmpStaticMembershipSGAddressType."                       &"Used to create and delete the entry."                       0"The desired administrative state of the entry."                           {"This table is used to manage TIB Manager
                 entities.

                 The table augments rlPimTmEntTable."                       E"This entry is used to manage TIB Manager
                 entities."                      �"The method of selecting a next hop when there are multiple
                 ECMP RPF Next Hops.

                 The following options are available.

                 highestNeighbor - No load splitting: choose
                 next hop to be the highest IP address PIM neighbor.

                 nextHopGroupHash - Split groups between
                 next hops using hash based on group and next hop
                 address."                              