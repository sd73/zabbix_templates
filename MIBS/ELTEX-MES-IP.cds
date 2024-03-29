     ,"Whether the behavior is to permit or deny."               +"The representation of route target value."               "Route Target protocol type."               *"The representation of route target type."                                                                                     /"The private MIB module definition for IP MIB." "www.eltex.nsk.ru" "200606220000Z" "Initial version of this MIB."                   7"This table controls the ability to send ICMP packets."                       D"This entry controls the ability of interface to send ICMP packets."                       S"ICMP Destination Unreachable packets sending is enabled or not on this interface."                               �"This table defines administrative distances for
                 different protocol routes that are inserted into
                 the routing table.

                 The table augments rlInetRoutingDistanceTable."                       +"A set of distances per inet address type."                       ;"The administrative distance used for internal BGP routes."                       ;"The administrative distance used for external BGP routes."                       D"The administrative distance used for internal ISIS level 1 routes."                       D"The administrative distance used for internal ISIS level 2 routes."                       D"The administrative distance used for external ISIS level 1 routes."                       D"The administrative distance used for external ISIS level 2 routes."                       1"Read-write table for configuring route targets."                       #"Configuration for a route target."                       "Route target protocol type."                       "The Route Target value."                       a"Row status. Used to create and delete the configuration
                 for this route target."                      n"Type of Route Target. This route target will be used to
                 import routes to or export routes from the RIB.

                 -  import(1) indicates that should import all
                    remote routes that carry this route target, but should
                    not add this route target to local routes.

                 -  export(2) indicates that the route target should be
                    added to all routes exported.

                 -  both(3) indicates that the route target should
                    be both used to import remote routes and added to
                    exported routes."                           �"The table of BGP Route Maps.  If a particular match or set
                 category does not apply to a route map then do not define the
                 corresponding field in the MIB row."                       V"Each entry represents a filter consisting of Match and Set
                 entries."                       c"The name of the IP Prefix access list used to match
                  the NLRI attribute against."                       g"The name of the IP Prefix access list used to match
                  the Next Hop attribute against."                       c"The name of the IP Prefix access list used to match
                  the source address against."                      "The value to match the Local Preference attribute against.
                 This value is only used if eltMesRouteMapMatchLocPrefDef is TRUE.

                 If a route does not contain a local preference attribute, this
                 match rule is ignored."                       f"Whether or not the value in eltMesRouteMapMatchLocPref should be
                 used for matching."                       �"The value to match the Multiple Exit Descriminator attribute
                 against.  A value of 0 indicates a match on no MED or a MED
                 of 0.  This value is only used if eltMesRouteMapMatchMedDef is
                 TRUE."                       b"Whether or not the value in eltMesRouteMapMatchMed should be used
                 for matching."                       �"The value to match the Origin attribute against.  This
                 value is only used if eltMesRouteMapMatchOriginDef is TRUE."                       e"Whether or not the value in eltMesRouteMapMatchOrigin should be
                 used for matching."                      �"Indicates that the match statements in this route map
                 should be logically ANDed with the match statements in the
                 route map indicated by eltMesRouteMapContinue.  This field is
                 only relevant for policy route maps.

                 If the route map indicated by eltMesRouteMapContinue is not
                 found then the match will fail.

                 All route maps in a series must have the same
                 eltMesRouteMapType.

                 If this field is set then no set statements can be
                 configured in the row.

                 This field can only be updated if the row is not active."                      �"The number of times the local AS number is prepended to
                 the AS path if there is a match.  This is only relevant if
                 the route map is being used for exporting routes, or for
                 setting attributes for an aggregate route which does not
                 have the AS_SET option set.  This value is only used if
                 the value of eltMesRouteMapActionASOperation is SET"                      R"Whether or not the value in rlRouteMapPbrActionAS should be used
                 for updating attributes.  The possible action values are:

                 none - Ignore eltMesRouteMapActionAS and do nothing.

                 set - Prepend the local AS number the number
                 of times specified by eltMesRouteMapActionAS."                       "If there is a match this will cause the AS_PATHLIMIT
                  attribute to be added if it does not already exist.  If
                  it does exist then it will be replaced.  In either case the
                  specified limit and the local AS will be set.  This can be
                  used for traffic engineering purposes in association with a
                  less specific prefix.  A value of zero is permissible and
                  restricts advertisement of locally generated routes to IBGP
                  peers.  However, an AS_PATHLIMIT with an upper bound value of
                  0 will not be externally visible.  That is, it will not be
                  included in UPDATEs.

                  This value is only used if eltMesRouteMapActionASLimUpperDef is TRUE."                       u"Whether or not the value in eltMesRouteMapActionASLimUpper should be
                 used for updating attributes."                      �"To prepend AS numbers to the AS-Path, set
                 eltMesRouteMapActionAsPrependCount to the count of the AS numbers
                 to prepend, set eltMesRouteMapActionAsPrependSize to indicate
                 whether the values are 2 or 4 octet AS numbers and fill in
                 eltMesRouteMapActionAsPrependAsVals with the AS numbers themselves.

                 When exporting routes to EBGP, BGP applies the AS-prepend
                 rule before prepending the local AS number as required by
                 the BGP specification.  This ensures that the local AS
                 number is always the first AS number in the AS path in this
                 case.

                 This field can only be updated if the row is not active."                      B"The size of AS numbers in the field
                 eltMesRouteMapActionAsPrependAsVals to prepend to the AS path if
                 there is a match.  This field is only used if
                 eltMesRouteMapActionAsPrependCount is non-zero.

                 This field can only be updated if the row is not active."                      �"An array containing the AS numbers to prepend to the AS
                 path if there is a match.  The length of each AS number is
                 given by eltMesRouteMapActionAsPrependSize.  This field is only
                 used if eltMesRouteMapActionAsPrependCount is non-zero.

                 The count of AS numbers is given by
                 eltMesRouteMapActionAsPrependCount.

                 This field can only be updated if the row is not active."                      "Contains the regular expression to use to remove AS
                 numbers from an AS-Path for a route.

                 This is stored here in ASCII format.  AS numbers are
                 matched as decimal numbers.  For example, the AS number
                 '0x0123' should be represented in the regular expression
                 string as '291'.  The string is not NULL-terminated.  A
                 NULL string or an se_as_remove_exp_len value of zero
                 indicates that the field is not in use."                       �"The value to set the Local Pref to if there is a match.  This
                 value is only used if eltMesRouteMapActionLocPrefDef is TRUE."                       r"Whether or not the value in eltMesRouteMapActionLocPref should be
                 used for updating attributes."                       �"The value to set the MED to if there is a match.  A value of
                 0 indicates that the MED should be removed.  This value is
                 only used if eltMesRouteMapActionMedDef is TRUE."                       n"Whether or not the value in eltMesRouteMapActionMed should be
                 used for updating attributes."                       �"The value to set the Origin to if there is a match.  This
                 value is only used if eltMesRouteMapActionOriginDef is TRUE."                       q"Whether or not the value in eltMesRouteMapActionOrigin should be
                 used for updating attributes."                       �"The value to set the Weight to if there is a match.  This
                 value is only used if eltMesRouteMapActionWeightDef is TRUE."                       q"Whether or not the value in eltMesRouteMapActionWeight should be
                 used for updating attributes."                      �"If set to 'true' in an import route map, then routes matching
                 this route-map will have their Next Hop set to the peer's
                 address.  This field has no effect on route maps used for
                 anything other than import.  This field overrides
                 rlRouteMapPbrActionNextHopPeer if set to 'true'.  This field is not
                 applied to VPNv4 or VPNv6 routes."                      0"The type of route map entry.  This is only relevant for
                 policy filtering route maps.  It indicates the action
                 which should apply to a route which matches the route map
                 entry.  This field is ignored for route maps used for
                 aggregation."                       "Field containing the number of the route map clause to
                 continue processing at.

                 For a series of eltMesRouteMapTable rows that are ANDed
                 together (that is, the eltMesRouteMapMatchAnd field is set to
                 TRUE for all of the series except the last),
                 eltMesRouteMapContinue can be used irrespective of the
                 eltMesRouteMapType.  That is, eltMesRouteMapType can be permit
                 or deny for the series.

                 For a series of route attribute changes (that is, a series
                 of eltMesRouteMapTable rows that modify the route attributes
                 of a permitted route, where the rows are linked with the
                 eltMesRouteMapContinue field), all of the rows must have
                 eltMesRouteMapType permit.

                 If the route map matches, the set commands for the
                 matching clause will be applied, and filtering will then
                 continue from the route map clause specified in this
                 field.

                 If no continue clause is specified (value of 0), or the
                 referenced route map clause does not exist, then
                 processing for the given route will be complete.

                 The continue field references the rlRouteMapPbrRouteMapSectionId field
                 of the desired clause.  In order to prevent processing
                 loops, the continue clause must have a higher number than
                 the current clause."                              _"Anycast Gateway Virtual MAC address. If this MAC address is not
                 null, then entry with this MAC will be added into FDB for each
                 interface with eltMesAnycastGatewayInterfaceEnabled = True.

                 Also this MAC address replaces Sender MAC in ARP frames (and 
                 Source MAC in Ethernet-header)."                       �"The table of Anycast Gateway interfaces. Entry in this 
                     table will be added if IP address assigned to interface."                       z"An entry in the eltMesAnycastGatewayInterfaceTable contains
                     interface index and turn on/off option."                       ."Enabling Anycast Gateway for this interface."                                          