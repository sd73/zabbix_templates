     B"The representation of a BGP SAFI (Sub-Address Family Identifier)"               -"The current operational state of an entity."               2"The type of peer than a route was received from."              "Evpn route type:
                 1 -- Ethernet Auto-Discovery (A-D) route
                 2 -- MAC/IP Advertisement route
                 3 -- Inclusive Multicast Ethernet Tag route
                 4 -- Ethernet Segment route
                 5 -- IP prefix route"               "The size of the AS number."               A"The error subcode to be sent in the Cease Notification message."               x"The representation of a BGP Identifier. Could be any 32-bit
                 number in a form of 4-octet IPv4 address."               1"The representation of a BGP Extended Community."               ,"Syntax for an Ethernet Segment Identifier."               #"Selecting the AS number notation."               c"An Ethernet tag identifier, representing a broadcast domain
                 in an EVPN instance."               #"Syntax for a route distinguisher."               0"The capabilities advertised by a BGP instance."               -"How to handle setting an AS-Path attribute."               �"An autonomous System Number.  If <AsSize> is
                 two-octet, the range is 0..65535.  If it is
                 four-octet, it is the full range of Unsigned32."               ;"An event that has occurred to a connection to a BGP peer."               "A BGP origin code."               ("The representation of a BGP Community."               ."BGP additional path send/receive capability."               ="Whether an index refers to a BGP Peer Index or a RIB index."               ."Reports the state of the peer configuration."               2"The current state of a connection to a BGP peer."               ="The representation of a BGP AFI (Address Family Identifier)"               /"The desired administrative state of an entry."               �"What type of client this BGP Peer is.  A client of a route
                 reflector is a meshed client if and only if it is fully meshed
                 with all meshed clients of that route reflector."               ;"Indicates whether an NLRI is active in the routing table."               *"The current BFD session state of a peer."               X"Whether to drop a session or just warn a parameter has been
                 exceeded."               j"Reports the reason a route was determined to be not the
                 best route to that destination."                                                                                                                             4"The MIB module for management of the BGP protocol." "www.eltex.nsk.ru"        -- Mon Sep 04 00:00:00 GMT 2017
              �"Each entry in this table represents a single instance of
                 BGP Router process. Only some fields in an entry can be 
                 changed while the admin status is up.
                 
                 The current implementation allows only a single process of
                 BGP is configured on the router. The single BGP process
                 could be created only with process ID 1."                       ,"Each entry represents a BGP Router entity."                       !"Identifies a BGP Router entity."                       m"The row status for this BGP Process Table entry, used to
                 create and destroy table entries."                       v"The administrative status of this BGP Process entity, used to
                 activate and deactivate the protocol."                       <"The current operational status of this BGP Process entity."                      �"The local autonomous system number.

                 For a router not in a confederation, it is equivalent to
                 the Base Scalar bgpM2LocalAs.  For a router in a
                 confederation, it is equivalent to the Base Scalar
                 bgpM2ConfederationId.  If eltexBgpProcessConfederationId
                 is not 0, then this router is in a confederation.

                 If the eltexBgpProcessAsSize is twoOctet, then the range is
                 constrained to be 0-65535.  A non-mappable 4-octet AS
                 number should only be used when all BGP speakers within
                 the AS support 4-octet AS numbers.

                 This field can only be changed when the Admin Status is
                 down."                      �"The BGP Identifier of the local system. This is a generic
                 identifier and not necessarily an IP address.  This field
                 can only be changed when the Admin Status is down.
                 It is equivalent to the Base Scalar bgpM2LocalIdentifier.
                 
                 The null value turns on ID election algorithm that chooses
                 the highest loopback interface if any, or the highest IP
                 interface otherwise."                       �"The BGP Identifier of the local system that is used in the
                 present moment. It could be selected by election algorithm
                 or configured by user."                       �"The table version number of the Loc-RIB.  Initialized to 1
                  when BGP starts or restarts, and is incremented every time
                  the Loc-RIB is recalculated."                       ;"The choice between asplain and asdot notation AS numbers."                      �"The configured Cluster-ID of the local router.
                 A value of 0.0.0.0 indicates the absence of this
                 value.  This field can only be changed when the Admin
                 Status is down. The BGP router will act as a route reflector
                 if any peer is configured to be a client.  If no cluster ID is
                 explicitly configured here, the Router ID will be used."                       4"The Cluster-ID that is used in the present moment."                       �"Routes will not be reflected between two peers that are
                configured to be route reflector clients in the
                eltexBgpPeerReflectorClient field if this field takes the value
                FALSE."                       5"Table of per-<AFI, SAFI> configuration information."       -- FAMILY-SHORT-NAME BGP_AFI
               Q"Entry containing information about support for an
                 <AFI, SAFI>."                       +"The AFI index into the <AFI, SAFI> table."                       ,"The SAFI index into the <AFI, SAFI> table."                       �"The row status for this <AFI, SAFI> entry, used to
                 create and destroy table entries. This field can
                 only be set while Process is admin down."                              ~"BGP peer configuration table.

                 This table allows a user to configure individual BGP peers.

                 This table is a configuration table - all status, statistics
                 and control fields are located in the BGP peer status table
                 (eltexBgpPeerStatusTable).

                 This table does not contain entries for dynamic peers."                       U"Entry containing information about the connection with
                 a BGP peer."                       T"The address family of the remote address for the peering
                 session."                       �"The remote address for the peering session.

                 This is the address of the BGP peer.  It must be specified
                 so the address length must be non-zero."                       i"The row status for this BGP peer table entry, used to
                create and destroy table entries."                       �"The desired state of the BGP connection.

                 This parameter can be used to restart BGP peer
                 connections.  Care should be used in providing write
                 access to this object without adequate authentication."                       �"The current operational status of this peer.  This usually
                 reflects the desired AdminStatus, but can contain transitional
                 values and failures."                      a"The remote autonomous system number.

                 This field can be changed at any time.  However, if the
                 field is changed while the peer is admin_status UP, the
                 change will only take effect after the peer has been
                 cycled admin status DOWN and then UP, thus forcing the
                 peer session to be restarted.  In this case, until the
                 peer is set admin_status DOWN, the peer will be marked as
                 out of date (as reported by the config state field in the
                 eltexBgpPeerStatusTable row for the peer)."                      %"The interface index for the interface from which the
                 source address for session is chosen.  If non-zero, BGP
                 will look for the first address on this interface with a
                 type matching eltexBgpPeerRemoteAddrType, and use that as the
                 source address.

                 This field can be changed at any time, causing the peer to
                 be immediately deactivated and reactivated.

                 If the configured interface (or address on that interface)
                 did not exist when the peer was activated, and is
                 subsequently added, the peer will automatically use the
                 configured interface address.  This will cause the peer to
                 be immediately deactivated and reactivated."                       �"When eltexBgpPeerNxtHopSlf is 'true', routes will be 
                 advertised to the peer with NEXT_HOP attribute set to 
                 BGP router local address."                       "This object is used to limit the number of prefixes that
                 can be accepted from this peer.

                 Setting eltexBgpPeerConfigMaxPrfx to a non-zero value sets 
                 the maximum number of prefixes that can be accepted from 
                 this peer."                      J"This object is used  to determine whether the session is
                 dropped or a warning is generated when the maximum number
                 of prefixes set is exceeded.

                 Setting eltexBgpPeerConfigDropWarn to 'drop' will cause the
                 session to be dropped when the prefix limit is reached."                      ("The time interval in seconds between when this BGP session
                 is turn down due to the number of prefixes received from
                 this peer exceeding the maximum in
                 eltexBgpPeerConfigMaxPrfx and when BGP attempts to
                 reestablish the session."                      ("A percentage of the limit set by eltexBgpPeerConfigMaxPrfx.
                 When the number of prefixes received from this peer reaches
                 this threshold, BGP issues a warning.

                 This field is not used if eltexBgpPeerConfigMaxPrfx is set to
                 zero."                      �"Time interval for the ConnectRetry timer.  The suggested
                 value for this timer is 120 seconds.

                 This field can be changed at any time.  However, if the
                 field is changed while the peer is admin_status UP, the
                 change will only take effect after the peer has been
                 cycled admin_status DOWN and then UP, thus forcing the
                 peer session to be restarted."                      w"Time interval in seconds for the Hold Time configured for
                 this BGP speaker with this peer.  This value is placed in
                 an OPEN message sent to this peer by this BGP speaker, and
                 is compared with the Hold Time field in an OPEN message
                 received from the peer when determining the Hold Time
                 (eltexBgpPeerStatusHoldTime) with the peer.  This value must not be
                 less than three seconds if it is not zero (0) in which
                 case the Hold Time is NOT to be established with the peer.
                 The value of this object is only allowed to be zero (0) if
                 the value of eltexBgpPeerKeepAliveConfigd is also zero (0).
                 The suggested value for this timer is 90 seconds.

                 This field can be changed at any time.  However, if the
                 field is changed while the peer is admin_status UP, the
                 change will only take effect after the peer has been
                 cycled admin_status DOWN and then UP, thus forcing the
                 peer session to be restarted."                      *"Time interval in seconds for the KeepAlive configured for
                 this BGP speaker with this peer.  The value of this object
                 will only determine the KEEPALIVE messages frequency
                 relative to the value specified in eltexBgpPeerHoldTimeConfigd
                 the actual time interval for the KEEPALIVE messages is
                 indicated by eltexBgpPeerStatusKeepAlive.  A reasonable 
                 maximum value for this timer would be configured to be one 
                 third of that of eltexBgpPeerHoldTimeConfigd.

                 The value of this object is only allowed to be zero (0) if
                 the value of eltexBgpPeerHoldTimeConfigd is also zero (0).  If
                 the value of this object is zero (0), no periodical
                 KEEPALIVE messages are sent to the peer after the BGP
                 connection has been established.  The suggested value for
                 this timer is 30 seconds.

                 This field can be changed at any time.  However, if the
                 field is changed while the peer is admin_status UP, the
                 change will only take effect after the peer has been
                 cycled admin_status DOWN and then UP, thus forcing the
                 peer session to be restarted."                      �"Time interval in seconds for the
                 MinRouteAdvertisementInterval timer.  This determines the
                 minimum time between a BGP UPDATE to a peer advertising or
                 withdrawing a route and a subsequent BGP UPDATE to the
                 peer advertising a route to the same destination.

                 The default value for this timer is 30 seconds.  Its value
                 must not be less than eltexBgpPeerMinRouteWithdrawInterval."                      \"Time interval in seconds for determining the minimum amount
                 of time that must elapse between successive advertisements of
                 UPDATE messages that report changes to a route within the
                 advertising BGP speaker's own autonomous system. The
                 suggested value for this timer is 15 seconds."                      e"Time interval in seconds for the MinRouteWithdrawInterval
                 timer.  This is the interval which is enforced between
                 advertisement and subsequent withdrawal of a route.

                 The default value for this timer is 30 seconds.  The value
                 must not exceed that of eltexBgpPeerMinRouteAdvertiseInterval."                      �"The delay to enforce in between a TCP connection with this
                 peer becoming established and a BGP Open message being
                 sent.  If this delay is zero, then no delay will be
                 injected, and a BGP Open message will be sent as soon as
                 the TCP connection allows it.

                 This field can be changed at any time.  However, if the
                 field is changed while the peer is admin_status UP, the
                 change will only take effect after the peer has been
                 cycled admin_status DOWN and then UP, thus forcing the
                 peer session to be restarted."                      "The time to hold this peer in Idle state after a BGP
                 session has progressed beyond Idle state initially and
                 then returned to it.  No new connections will be initiated
                 or accepted until the peer comes out of Idle state.  By
                 setting this field to a large value, this timer can be
                 used to provide some level of peer oscillation damping, if
                 desired.

                 This field can be changed at any time.  However, if the
                 field is changed while the peer is admin_status UP, the
                 change will only take effect after the peer has been
                 cycled admin_status DOWN and then UP, thus forcing the
                 peer session to be restarted."                       s"The Prefix List name identifying the Prefix List to use
                 to filter routes received from the peer."                       s"The Prefix List name identifying the Prefix List to use
                 to filter routes advertised to the peer."                      �"This value indicates whether the given peer is a reflector
                client of this router, or not.  A value of nonClient(0)
                indicates that this peer is not a reflector client.  A
                value of client(1) indicates that this peer is a reflector
                client that is not fully meshed with other reflector
                clients.  A value of meshedClient(2) indicates that the
                peer is a reflector client and is fully meshed with all
                other reflector clients.

                For specific AFI/SAFI, this can be configured using
                eltexBgpPeerAddrFamilyReflectorClient."                      �"This option causes all routes learned from a peer to be stored
                 so that the ARI can be recalculated (for example, due to a 
                 change in import policy) without performing a route refresh or
                 restarting the peer session.

                 This field can only be changed when the peer is admin_status
                 DOWN.

                 This option overlaps with route refresh (RR) behavior. If the
                 option is enabled, Route refresh capability continues to be
                 advertized and the BGP router still responds to RR request
                 from the peer. However, route refresh messages will never
                 be sent to this peer."                       �"This is the index of the peer group. If a peer is  not in
                 a peer group then its eltexBgpPeerConfigPeerGroup value is 0"                       �"Indicates whether Bidirectional Forwarding Detection (BFD) is
                 desired for this peer.

                 This field can be changed at any time."                      �"BGP Peer <AFI, SAFI> configuration table.

                 This table allows a user to configure peer characteristics
                 on a per AFI/SAFI basis.

                 This table is a configuration table - all status, statistics
                 and control fields are deprecated in favor of the BGP peer
                 AFI/SAFI status table (etlexBgpPeerAddrFamilyStatusTable).

                 This table does not contain entries for dynamic peers."                       -"Peer <AFI, SAFI> configuration table entry."                       0"The AFI index into the peer <AFI, SAFI> table."                       1"The SAFI index into the peer <AFI, SAFI> table."                      �"When eltexBgpPeerAddrFamilyDisable is 'true', BGP will not
                 advertise Multiprotocol support to the peer for this
                 address family.

                 When eltexBgpPeerAddrFamilyDisable is 'false', BGP will
                 advertise Multiprotocol support to the peer if support 
                 for the address family has been enabled in the 
                 corresponding bgpRmAfiSafiTable entry.

                 Any update to this object will take effect the next time
                 that the eltexBgpPeerTable entry is activated
                 (eltexBgpPeerAdminStatus is changed to 'adminStatusUp').

                 If config usage bit eltexBgpPeerAddrFamilyGroupDisable 
                 is set, and the peer belongs to a peer group, then the
                 eltexBgpPeerAddrFamilyGroupDisable value is used instead 
                 of this value."                      �"Gives finer control of the next-hop-self configuration
                 provided by eltexBgpPeerNxtHopSlf.

                 When eltexBgpPeerNxtHopSlf is 'false', BGP does not perform
                 next-hop-self for any address family.

                 When eltexBgpPeerNxtHopSlf is 'true', BGP performs 
                 next-hop-self for those address families for which 
                 eltexBgpPeerAddrFamilyNxtHopSlf is 'true'.

                 If the value of this object is changed while the peer session
                 is active, BGP will check for any routes that need to be
                 advertised or withdrawn as a result of the change."                      �"Gives finer control of the maximum prefix configuration
                 provided by eltexBgpPeerConfigMaxPrfx.

                 To configure address family specific values for the maximum
                 number of prefixes that can be accepted from the peer,
                 set eltexBgpPeerConfigMaxPrfx to zero, and set
                 eltexBgpPeerAddrFamilyConfigMaxPrfx to the limit 
                 for this address family."                      "Gives finer control of the configuration provided by
                 eltexBgpPeerConfigDropWarn, which determines the behavior
                 when the maximum prefix limit is reached.

                 To configure whether the session is dropped or a warning is
                 behavior independently for different address
                 families, set eltexBgpPeerConfigDropWarn to 'warn', and set
                 the value of eltexBgpPeerAddrFamilyConfigDropWarn for 
                 each address family as needed."                      �"Gives finer control of the configuration provided by
                 eltexBgpPeerMaxPrfxHold, which determines the time interval in
                 seconds between when this BGP session is torn down due to
                 the number of prefixes received from this peer exceeding the
                 maximum in eltexBgpPeerConfigMaxPrfx(AfiSafi) and when BGP
                 attempts to reestablish the session.

                 To configure a time interval for individual families, set
                 eltexBgpPeerMaxPrfxHold to zero and set 
                 eltexBgpPeerAddrFamilyMaxPrfxHold to the required time 
                 interval for each address family."                      �"Gives finer control of the threshold configuration
                 provided by eltexBgpPeerConfigThreshold.  When the number of
                 prefixes received from this peer for this address family
                 reaches this threshold, BGP issues a warning.

                 This field is not used if eltexBgpPeerConfigMaxPrfx and
                 eltexBgpPeerAddrFamilyConfigThreshold are set to zero.

                 To configure a threshold for individual families, set
                 eltexBgpPeerConfigMaxPrfx to zero and set
                 eltexBgpPeerAddrFamilyConfigThreshold to the required 
                 threshold for each address family."                      D"Time interval in seconds for the
                 MinRouteAdvertisementInterval timer.  This determines the
                 minimum time between a BGP UPDATE to a peer advertising or
                 withdrawing a route and a subsequent BGP UPDATE to the
                 peer advertising a route to the same destination."                      �"Time interval in seconds for determining the minimum
                 amount of time that must elapse between successive
                 advertisements of UPDATE messages that report changes to a
                 route within the advertising BGP speaker's own autonomous
                 system.

                 This field has no effect if
                 eltexBgpPeerMinASOriginationInterval is set to a non-zero
                 value.  To configure values independently for each address
                 family, set eltexBgpPeerMinASOriginationInterval to 0 and set
                 the values of eltexBgpPeerAddrFamilyMinASOrigInt as required."                      D"Time interval in seconds for the MinRouteWithdrawInterval
                 timer.  This is the interval which is enforced between
                 advertisement and subsequent withdrawal of a route.

                 This field has no effect if 
                 eltexBgpPeerMinRouteWithdrawInterval is set to a non-zero 
                 value. To configure values independently for each address 
                 family, set eltexBgpPeerMinRouteWithdrawInterval to 0 and
                 set the values of eltexBgpPeerAddrFamilyMinRteWithdrawInt 
                 as required."                      �"Gives finer control of the configuration provided by
                 eltexBgpPeerReflectorClient.

                 This value indicates whether the given peer is a reflector
                 client of this router for this AFI/SAFI, or not.  A value
                 of nonClient(0) indicates that this peer is not a
                 reflector client for this AFI/SAFI.  A value of client(1)
                 indicates that this peer is a reflector client for this
                 AFI/SAFI that is not fully meshed with other reflector
                 clients.  A value of meshedClient(2) indicates that the
                 peer is a reflector client for this AFI/SAFI and is fully
                 meshed with all other reflector clients.

                 The peer's reflector-client setting for this AFI/SAFI is
                 chosen as follows.

                 -  If the peer is not a member of a peer group
                    o  If eltexBgpPeerReflectorClient is NOT non-client then use
                       that
                    o  Otherwise use eltexBgpPeerAddrFamilyReflectorClient.

                 This field can be changed at any time.  However, if the
                 field is changed while the peer is admin_status UP, the
                 change will only take effect after the peer has been
                 cycled admin_status DOWN and then UP, thus forcing the
                 peer session to be restarted."                       f"The name of the Route Map to use for route imports from
                 the peer for this AFI/SAFI."                       d"The name of the Route Map to use for route exports to the
                 peer for this AFI/SAFI."                       h"Indicates whether BGP should originate a default route to
                 the peer for this AFI/SAFI."                       l"The name of the Route Map to use for default route exports to the
                 peer for this AFI/SAFI."                      �"BGP peer status table.

                 This table reports BGP peer status and statistics.  It also
                 allows a user to control BGP peer statistics and peer
                 sessions.

                 This table does not contain any BGP peer configuration -
                 the eltexBgpPeerTable MIB is the BGP peer configuration MIB.

                 This table contains entries for both configured and dynamic
                 peers.

                 For configured peers the corresponding rows in the
                 eltexBgpPeerTable MIB and eltexBgpPeerStatusTable MIB have
                 identical index fields.

                 The lifetime of a BGP peer status entry depends on whether
                 the BGP peer is configured or dynamic.
                 -  The entry for a configured peer is created and destroyed
                 when the corresponding entry in the BGP peer
                 configuration table (eltexBgpPeerTable) is created and
                 destroyed.
                 -  The entry for a dynamic peer is created when the BGP
                 peering session is established.  It is destroyed when
                 the BGP session has terminated."                       >"Entry containing information about the status of a BGP peer."                       �"The BGP Identifier of this entry's BGP peer.

                 This entry is zero unless the eltexBgpPeerStatusState is in the
                 openconfirm or the established state."                       "The BGP peer's FSM state."                       Y"Whether the peer is dynamic (true) or individually
                 configured (false)."                       �"The remote autonomous system number in use on the session.
                 For configured peers not yet active, this is the
                 configured value."                       �"The peer index.

                 The peer index is a unique index for the peer entry in the
                 eltexBgpPeerStatusTable.  It is used to provide an index value
                 for other tables whose data is logically per-peer."                      �"Whether or not this peer accepted our local capabilities
                 optional parameter sent on the OPEN message.  This field
                 will not be relevant until the peer has reached open_confirm
                 state.  Note that this field indicates support or otherwise
                 of the capabilities optional parameter, not a specific
                 capability."                      4"The last error code and subcode sent or received on this
                 connection.  If no error has occurred, this field is zero.
                 Otherwise, the first byte of this two byte OCTET STRING
                 contains the error code, and the second byte contains the
                 subcode."                       o"The length of the last error data.  If this is zero no
                 error data was provided or generated."                       S"The last error code's data seen by this peer on this
                 connection."                      "This timer indicates how long in seconds this peer has
                 been in the Established state or how long since this peer
                 was last in the Established state.  It is set to zero when
                 a new peer is configured or the router is booted."                       h"Elapsed time in seconds since the last BGP Update message
                 was received from the peer."                      y"Time interval in seconds for the Hold Timer established
                 with the peer.

                 The Hold Timer interval is calculated by this BGP speaker by
                 using the smaller of the configured eltexBgpPeerHoldTimeConfigd
                 value and the Hold Time received in the OPEN message.

                 For dynamic peers the Hold Timer interval is calculated
                 using the default eltexBgpPeerHoldTimeConfigd value rather than
                 a configured value.

                 A value of zero indicates that the Hold Timer has not been
                 established with the peer."                      "Time interval in seconds for the KeepAlive Timer
                 established with the peer.

                 The KeepAlive Timer interval is calculated by this BGP speaker
                 such that, when compared with eltexBgpPeerStatusHoldTime,
                 it has the same proportion as the configured
                 eltexBgpPeerKeepAliveConfigd has when compared with
                 eltexBgpPeerHoldTimeConfigd.

                 For dynamic peers the KeepAlive Timer interval is calculated
                 using the default eltexBgpPeerKeepAliveConfigd and
                 eltexBgpPeerHoldTimeConfigd values rather than configured values.

                 A value of zero indicates that the KeepAlive Timer has not
                 been established with the peer."                       O"The number of BGP OPEN messages received on this
                 connection."                       R"The number of BGP OPEN messages transmitted on this
                 connection."                       W"The number of BGP NOTIFICATION messages received on this
                 connection."                       Z"The number of BGP NOTIFICATION messages transmitted on
                 this connection."                       Q"The number of BGP UPDATE messages received on this
                 connection."                       T"The number of BGP UPDATE messages transmitted on this
                 connection."                       T"The number of BGP KEEPALIVE messages received on this
                 connection."                       W"The number of BGP KEEPALIVE messages transmitted on this
                 connection."                       X"The number of BGP ROUTE REFRESH messages received on this
                 connection."                       ["The number of BGP ROUTE REFRESH messages transmitted on
                 this connection."                       a"The total number of messages received from the remote peer
                 on this connection."                       b"The total number of messages transmitted to the remote
                 peer on this connection."                       o"The total number of times the BGP FSM transitioned into
                 the established state for this peer."                      �"The current connect retry count of this peer.

                 This is incremented each time the peer session flaps, and is
                 used to determine the time to wait before retrying the
                 session.

                 Note this is only incremented when an active session
                 terminates abnormally, and not when it simply fails to come
                 up."                       �"Set this field to 'true' to clear the counters associated
                 with this peer.

                 Reading the value of this field has no meaning.  The field
                 is not returned on a MIB Get."                      �"Set this field to 'true' to trigger sending a route
                 refresh request for this peer.

                 Setting this field will only have an effect if a BGP
                 session to the peer is active.  Peers that do not support
                 route refresh will have their sessions toggled.

                 Reading the value of this field has no meaning.  The field
                 is not returned on a MIB Get."                      _"The last error code and subcode received from the peer on
                 this connection.

                 If no error has been received from the peer, this field is
                 zero.  Otherwise, the first byte of this two byte OCTET
                 STRING contains the error code, and the second byte contains
                 the subcode."                       �"The value of sysUpTime when the last error was received
                 from the peer on this connection.

                 If no error has been received from the peer, this field is
                 zero."                      R"The last error code and subcode sent to the peer on this
                 connection.

                 If no error has been sent to the peer, this field is zero.
                 Otherwise, the first byte of this two byte OCTET STRING
                 contains the error code, and the second byte contains the
                 subcode."                       �"The value of sysUpTime when the last error was sent to the
                 peer on this connection.

                 If no error has been sent to the peer, this field is zero."                       $"The BGP peer's previous FSM state."                       2"The last input to be made to the BGP peer's FSM."                      "The capabilities announced to the peer on the most recent
                 Open message sent to the peer.  This field is set to zero
                 before the first Open message is sent to the peer, and
                 is unchanged if the session comes down."                      a"The capabilities received on the most recent Open message
                 received from the peer.  This field is set to zero before
                 the first Open message is received from the peer, and is
                 unchanged if the session comes down.

                 In the event that the peer signals a capability that BGP
                 does not recognize, this field will only contain those
                 capabilities that BGP recognizes.  A user should walk the
                 eltexBgpPeerCapsRcvdTable to confirm the full list of
                 capabilities received from the peer."                       �"The capabilities negotiated for the session with the peer.
                 This field is set to zero before Open messages have been
                 exchanged with the peer, and is unchanged if the session
                 comes down."                      "The elapsed time in hundredths of a second since anything
                 was received from this peer.  If nothing has been received
                 from this peer, this field is set to zero.  If the session
                 comes down this value continues to increase."                       �"For a peer in 'idle' state, the time remaining in
                 hundredths of a second until BGP will try to reactivate
                 the connection.  If the peer is not in 'idle' state, this is
                 set to zero."                      �"The number of Route Refresh messages sent to the peer.

                 If the session comes down this value is unchanged, and will
                 continue to increment if the session is reestablished.

                 However, for dynamic peers the peer status entry is lost
                 if the BGP session is not re-established within the graceful
                 restart period, and in this case the value of this field
                 is lost."                      �"The number of Route Refresh messages received from the
                 peer.

                 If the session comes down this value is unchanged, and will
                 continue to increment if the session is reestablished.

                 However, for dynamic peers the peer status entry is lost
                 if the BGP session is not re-established within the graceful
                 restart period, and in this case the value of this field
                 is lost."                       �"The address family of the local address used by the
                 transport connection for the peering session.

                 A value of none implies that there is currently no
                 connection to this peer."                       ^"The local address used by the transport connection for the
                 peering session."                       �"The local port used by the transport connection for the
                 peering session.

                 A value of zero implies that there is currently no
                 connection to this peer."                       �"The remote port used by the transport connection for the
                 peering session.

                 A value of zero implies that there is currently no
                 connection to this peer."                       �"The local AS number used on this session.

                 If the eltexBgpPeerStatusState is not 'established', then this
                 field is zero."                       �"The remote AS number used on this session.

                 If the eltexBgpPeerStatusState is not 'established', then this
                 field is zero."                       7"The total number of prefixes received from this peer."                       `"The number of prefixes that are installed in all of this
                 peer's Adj-RIBs-Out."                       7"The total number of prefixes advertised to this peer."                      �"This field reports the state of the peer configuration.
                 The peer configuration may be in one of the following
                 states.

                 -  Up to date.  That is, all configuration set by MIBs for
                 this peer has been applied to the current peer session
                 (if it exists).

                 -  Out of date, requiring the peer's admin status to be
                 set to down before all the current MIB configuration
                 for this peer can be applied.

                 -  Out of date, requiring the peer's row status to be set
                 to inactive before all the current MIB configuration
                 for this peer can be applied."                      �"The currently active time interval for the ConnectRetry
                 timer.

                 This value may be different from the current peer MIB
                 value (eltexBgpPeerConnectRetryInterval) if the peer takes its
                 value from a peer group MIB
                 (eltexBgpPeergrConnectRetryInterval) or the MIB which provides
                 the value has been changed since the peer session was
                 started."                      O"The current active passive flag.  If TRUE, then no
                 outbound connections will be initiated, and only incoming
                 connections will be accepted.  If FALSE, then outbound
                 connections will be attempted to this peer, and incoming
                 connections will be accepted from this peer."                       �"The currently active delay to enforce in between a TCP
                 connection with this peer becoming established and a BGP
                 Open message being sent."                       �"The currently active time to hold this peer in Idle state
                 after a BGP session has progressed beyond Idle state
                 initially and then returned to it."                       Y"The currently active Time To Live used by the connection
                 on this peer."                       �"The currently active time interval in seconds for the Hold
                 Time configured for this BGP speaker with this peer."                       �"The currently active time interval in seconds for the
                 KeepAlive configured for this BGP speaker with this peer."                      �"Set this to 'true' to trigger BGP to re-send all routes
                to the peer.  If the peer supports enhanced route refresh,
                then the routes will be sent as an unsolicited enhanced
                route refresh.

                Setting this field will only have an effect if a BGP
                session to the peer is active.

                This field always has the value 'false' when read."                       �"Elapsed time in seconds since the last BGP UPDATE message
                was sent to this peer.  Each time eltexBgpPeerStatusOutUpdates
                is incremented, the value of this object is set to zero
                (0)."                       �"This is the number of prefixes in the Loc-RIB that have
                have failed export policy checks and so have not been
                installed in the Adj-RIB-Out for this peer."                       �"The total number of routes for which an implicit withdraw
                has been sent to this peer.  A route is implicitly
                withdrawn if a replacement route with the same NLRI is
                advertised to the peer."                      "The total number of routes for which an explicit withdraw
                has been sent to this peer.  A route is explicitly
                withdrawn if it is advertised in the WITHDRAWN ROUTES
                field in an UPDATE message sent to the peer."                       �"The total number of routes that have been implicitly
                withdrawn by this peer.  A route is implicitly withdrawn
                if a replacement route with the same NLRI is received from
                the peer."                       �"The total number of routes that have been explicitly
                withdrawn by this peer.  A route is explicitly withdrawn
                if it is advertised in the WITHDRAWN ROUTES field in an
                UPDATE message received from the peer."                       �"The Hold Time value received in the OPEN message from this
                 peer.

                 A value of zero indicates that no Hold Time has been
                 received from the peer."                      �"Set this field to 'true' to drop the current session with
                 the BGP peer.  For a dynamic BGP peer this causes the
                 peer status entry to disappear if the BGP session is not
                 re-established within the graceful restart period.

                 Reading the value of this field has no meaning.  The field
                 is not returned on a MIB Get."                      y"The error subcode to be sent in the Cease Notification
                 messages triggered by setting eltexBgpPeerStatusDropSession to
                 'true'.  If set to 'none' then DC-BGP chooses the subcode
                 itself.

                 This field does not affect the error subcode for Cease
                 Notification messages triggered for other reasons."                       ""BFD session state for this peer."                      �"BGP peer <AFI, SAFI> status table.

                 This table allows a user to control BGP peer AFI/SAFI
                 operations.

                 In future this table may also report BGP peer AFI/SAFI
                 status and statistics.

                 This table does not contain any BGP peer AFI/SAFI
                 configuration - the eltexBgpPeerAddrFamilyTable MIB is the BGP
                 peer AFI/SAFI configuration MIB.

                 This table contains entries for both configured and dynamic
                 peers.

                 Rows in this table cannot be created or destroyed manually.
                 A table entry for each supported address family is created
                 automatically when an entry in the eltexBgpPeerStatusTable is
                 created.  The entries are destroyed when the
                 eltexBgpPeerStatusTable entry is destroyed."                       i"Entry containing information about the status of a BGP peer
                 for a particular AFI/SAFI."                      �"Set this to 'true' to trigger BGP to send a Route Refresh
                 request to the peer for this AFI/SAFI.

                 Setting this field will only have an effect if a BGP
                 session to the peer is active.  Peers that do not support
                 route refresh will have their sessions toggled.

                 This field always has the value 'false' when read."                       b"The BGP additional path capability negotiated with this
                 peer for this AFI/SAFI."                      V"The currently active value which indicates whether the
                 given peer is a reflector client of this router for this
                 AFI/SAFI, or not.

                 This value may be different from the current peer AFI/SAFI
                 MIB value (eltexBgpPeerAddrFamilyReflectorClient) if any of the
                 following are true.
                 -  The peer takes its reflector client status from the
                    current peer MIB value (eltexBgpPeerReflectorClient) or from
                    a peer group MIB (eltexBgpPeerGroupReflectorClient).
                 -  The peer takes its value from a peer group AFI/SAFI MIB
                    (eltexBgpPeerAddrFamilyGroupReflectorClient).
                 -  The MIB which provides the value has been changed since
                    the peer session was started."                       �"The index of the update group that the peer is a member of
                for this AFI/SAFI.

                Zero if the peer is not a member of an update group."                      �"Set this to 'true' to trigger BGP to re-send all routes
                to the peer for this AFI/SAFI.  If the peer supports
                enhanced route refresh, then this will be sent as an
                unsolicited enhanced route refresh.

                Setting this field will only have an effect if a BGP
                session to the peer is active.

                This field always has the value 'false' when read."                          �"The table of peer groups.

                 A peer group is a set of peers that share a common peer
                 group configuration.

                 Using peer groups simplifies peer configuration.  Instead of
                 configuring many peers with the same set of configuration
                 values, you can configure a single peer group and then
                 assign peers to the peer group.

                 Each peer in a peer group has its eltexBgpPeerConfigPeerGroup value
                 set to the peer group index.  If a peer is  not in a peer group then
                 its eltexBgpPeerConfigPeerGroup value is 0."                       U"Entry containing information about the connection with
                 a BGP peer."                       a"The name of this eltexBgpPeerGroupEntry.  This is the index of the
                 peer group."                       o"The row status for this BGP peer group table entry, used to
                create and destroy table entries."                      �"The remote autonomous system number.

                 For individual peers, this can be configured using
                 eltexBgpPeerRemoteAs.

                 This field can be changed at any time.  However, if the
                 field is changed while the peer is admin_status UP, the
                 change will only take effect after the peer has been
                 cycled admin status DOWN and then UP, thus forcing the
                 peer session to be restarted.  In this case, until the
                 peer is set admin_status DOWN, the peer will be marked as
                 out of date (as reported by the config state field in the
                 eltexBgpPeerStatusTable row for the peer)."                      %"The interface index for the interface from which the
                 source address for session is chosen.  If non-zero, BGP
                 will look for the first address on this interface with a
                 type matching eltexBgpPeerRemoteAddrType, and use that as the
                 source address.

                 This field can be changed at any time, causing the peer to
                 be immediately deactivated and reactivated.

                 If the configured interface (or address on that interface)
                 did not exist when the peer was activated, and is
                 subsequently added, the peer will automatically use the
                 configured interface address.  This will cause the peer to
                 be immediately deactivated and reactivated."                       �"When eltexBgpPeerGroupNxtHopSlf is 'true', routes will be 
                 advertised to the peer with NEXT_HOP attribute set to 
                 BGP router local address."                      %"This object is used to limit the number of prefixes that
                 can be accepted from this peer.

                 Setting eltexBgpPeerGroupConfigMaxPrfx to a non-zero value sets 
                 the maximum number of prefixes that can be accepted from 
                 this peer."                      O"This object is used  to determine whether the session is
                 dropped or a warning is generated when the maximum number
                 of prefixes set is exceeded.

                 Setting eltexBgpPeerGroupConfigDropWarn to 'drop' will cause the
                 session to be dropped when the prefix limit is reached."                      -"The time interval in seconds between when this BGP session
                 is turn down due to the number of prefixes received from
                 this peer exceeding the maximum in
                 eltexBgpPeerGroupConfigMaxPrfx and when BGP attempts to
                 reestablish the session."                      2"A percentage of the limit set by eltexBgpPeerGroupConfigMaxPrfx.
                 When the number of prefixes received from this peer reaches
                 this threshold, BGP issues a warning.

                 This field is not used if eltexBgpPeerGroupConfigMaxPrfx is set to
                 zero."                      �"Time interval for the ConnectRetry timer.  The suggested
                 value for this timer is 120 seconds.

                 This field can be changed at any time.  However, if the
                 field is changed while the peer is admin_status UP, the
                 change will only take effect after the peer has been
                 cycled admin_status DOWN and then UP, thus forcing the
                 peer session to be restarted."                      w"Time interval in seconds for the Hold Time configured for
                 this BGP speaker with this peer.  This value is placed in
                 an OPEN message sent to this peer by this BGP speaker, and
                 is compared with the Hold Time field in an OPEN message
                 received from the peer when determining the Hold Time
                 (eltexBgpPeerStatusHoldTime) with the peer.  This value must not be
                 less than three seconds if it is not zero (0) in which
                 case the Hold Time is NOT to be established with the peer.
                 The value of this object is only allowed to be zero (0) if
                 the value of eltexBgpPeerKeepAliveConfigd is also zero (0).
                 The suggested value for this timer is 90 seconds.

                 This field can be changed at any time.  However, if the
                 field is changed while the peer is admin_status UP, the
                 change will only take effect after the peer has been
                 cycled admin_status DOWN and then UP, thus forcing the
                 peer session to be restarted."                      8"Time interval in seconds for the KeepAlive configured for
                 this BGP speaker with this peer.  The value of this object
                 will only determine the KEEPALIVE messages frequency
                 relative to the value specified in eltexBgpPeerGroupHoldTimeConfigd
                 the actual time interval for the KEEPALIVE messages is
                 indicated by eltexBgpPeerStatusKeepAlive.  A reasonable 
                 maximum value for this timer would be configured to be one 
                 third of that of eltexBgpPeerGroupHoldTimeConfigd.

                 The value of this object is only allowed to be zero (0) if
                 the value of eltexBgpPeerGroupHoldTimeConfigd is also zero (0).
                 If the value of this object is zero (0), no periodical
                 KEEPALIVE messages are sent to the peer after the BGP
                 connection has been established.  The suggested value for
                 this timer is 30 seconds.

                 This field can be changed at any time.  However, if the
                 field is changed while the peer is admin_status UP, the
                 change will only take effect after the peer has been
                 cycled admin_status DOWN and then UP, thus forcing the
                 peer session to be restarted."                      �"Time interval in seconds for the
                 MinRouteAdvertisementInterval timer.  This determines the
                 minimum time between a BGP UPDATE to a peer advertising or
                 withdrawing a route and a subsequent BGP UPDATE to the
                 peer advertising a route to the same destination.

                 The default value for this timer is 30 seconds.  Its value
                 must not be less than eltexBgpPeerGroupMinRouteAdvertiseInterval."                      \"Time interval in seconds for determining the minimum amount
                 of time that must elapse between successive advertisements of
                 UPDATE messages that report changes to a route within the
                 advertising BGP speaker's own autonomous system. The
                 suggested value for this timer is 15 seconds."                      j"Time interval in seconds for the MinRouteWithdrawInterval
                 timer.  This is the interval which is enforced between
                 advertisement and subsequent withdrawal of a route.

                 The default value for this timer is 30 seconds.  The value
                 must not exceed that of eltexBgpPeerGroupMinRouteAdvertiseInterval."                      �"The delay to enforce in between a TCP connection with this
                 peer becoming established and a BGP Open message being
                 sent.  If this delay is zero, then no delay will be
                 injected, and a BGP Open message will be sent as soon as
                 the TCP connection allows it.

                 This field can be changed at any time.  However, if the
                 field is changed while the peer is admin_status UP, the
                 change will only take effect after the peer has been
                 cycled admin_status DOWN and then UP, thus forcing the
                 peer session to be restarted."                      "The time to hold this peer in Idle state after a BGP
                 session has progressed beyond Idle state initially and
                 then returned to it.  No new connections will be initiated
                 or accepted until the peer comes out of Idle state.  By
                 setting this field to a large value, this timer can be
                 used to provide some level of peer oscillation damping, if
                 desired.

                 This field can be changed at any time.  However, if the
                 field is changed while the peer is admin_status UP, the
                 change will only take effect after the peer has been
                 cycled admin_status DOWN and then UP, thus forcing the
                 peer session to be restarted."                       s"The Prefix List name identifying the Prefix List to use
                 to filter routes received from the peer."                       s"The Prefix List name identifying the Prefix List to use
                 to filter routes advertised to the peer."                      "This value indicates whether the given peer is a reflector
                client of this router, or not.  A value of nonClient(0)
                indicates that this peer is not a reflector client.  A
                value of client(1) indicates that this peer is a reflector
                client that is not fully meshed with other reflector
                clients.  A value of meshedClient(2) indicates that the
                peer is a reflector client and is fully meshed with all
                other reflector clients."                      �"This option causes all routes learned from a peer to be stored
                 so that the ARI can be recalculated (for example, due to a 
                 change in import policy) without performing a route refresh or
                 restarting the peer session.

                 This field can only be changed when the peer is admin_status
                 DOWN.

                 This option overlaps with route refresh (RR) behavior. If the
                 option is enabled, Route refresh capability continues to be
                 advertized and the BGP router still responds to RR request
                 from the peer. However, route refresh messages will never
                 be sent to this peer."                       �"Indicates whether Bidirectional Forwarding Detection (BFD)
                 is desired for peers in this peer group.

                 This field can be changed at any time."                          1"This table contains information about paths to destination
                 networks received from all BGP4 peers.

                 This table reports routes and path attributes after import
                 policy has been applied.  Only routes accepted by import
                 policy are reported."                       ("Information about a path to a network."                       :"The address family of the prefix for this Loc-RIB route."                       V"The subsequent address family of the prefix for this Loc-RIB
                 route."                       `"A type of address prefix in the Network Layer Reachability
                 Information field."                      "An address prefix in the Network Layer Reachability
                 Information field.

                 The prefix length is specified by eltexBgpLocRibPrfxLen. Any
                 bits beyond the length specified by eltexBgpLocRibPrfxLen are
                 zeroed."                       o"Length in bits of the IP address prefix in the Network Layer
                 Reachability Information field."                       q"Whether this route was learned from a BGP peer or redistributed
                 from Routing Information Base."                      S"The index of either the BGP peer or RIB this route was
                 learned from.  If eltexBgpNlriPrefixPeerOrRib is peer, this field
                 is equivalent to a eltexBgpPeerStatusPeerIndex.  If
                 eltexBgpNlriPrefixPeerOrRib is afm, this field is equivalent to
                 an internal index of RIB entity."                       �"The path ID for this NLRI.

                 If BGP additional path receive capability was negotiated
                 with the peer for this AFI/SAFI then this is the received
                 path ID for this NLRI, otherwise it is zero."                       `"An indication of whether or not this route was chosen as the
                 best BGP4 route."                       b"Whether the eltexBgpLocRibASPathStr field contains two or
                 four byte AS numbers."                      "This is a string depicting the autonomous system path to this
                 network which was received from the peer which advertised it.
                 Two-octet AS numbers appear as four-octet numbers by adding
                 two bytes of zero padding."                       ."The ultimate origin of the path information."                       :"A type of nexthop address received in the UPDATE packet."                      '"The address of the border router that should be used to access
                 the destination network.  This address is the nexthop address
                 received in the UPDATE packet.  The address family of this
                 object will be the same as that of the prefix in this row."                       �"This metric is used to discriminate between multiple exit
                 points to an adjacent autonomous system.
                 Valid only if eltexBgpLocRibPathAttrMEDPrsnt is TRUE."                       _"The originating BGP4 speaker's degree of preference for an
                 advertised route."                       �"When this object is set to TRUE, the ATOMIC_AGGREGATE Path
                 Attribute is present and indicates that the NLRI MUST NOT
                 be made more specific."                       ["The AS number of the last BGP4 speaker that performed route
                 aggregation."                       �"The IP address of the last BGP4 speaker that performed route
                 aggregation.  A value of zero indicates the absence of this
                 attribute.  Note propagation of AS of zero is illegal in
                 the Internet."                       m"The degree of preference calculated by the receiving BGP4
                 speaker for an advertised route."                       �"The Originator-ID identifying the router that initially
                 advertised this destination to a Route Reflector.  A
                 value of 0.0.0.0 indicates the absence of this attribute."                       8"The local degree of preference assigned to this route."                       �"Whether or not this route was installed into the
                 Forwarding Table as an ECMP route (it may or may not be
                 the best BGP4 route advertised to BGP peers)."                       �"The AS number of the speaker that attached the AS_PATHLIMIT
                 attribute.  A value of 0 indicates the absence of this
                 attribute.  Note that propagation of AS of zero is illegal in
                 the Internet."                       �"The upper bound on the number of ASes in the AS_PATH
                 associated with this route before the route will be filtered.
                 Only valid if eltexBgpLocRibPathAttrAsPathLimAs is non-zero."                      �"An indication of whether or not this route is installed in
                 the forwarding table.

                 - 'active' if the route is installed in the forwarding
                   table, or is a route redistributed from another routing
                   protocol instance

                 - 'inactive' otherwise.

                 - 'notTracked' if BGP does not track active routes."                      "If true, then the route has an associated MED attribute,
                 whose value is given in eltexBgpLocRibPathAttrMultExitDisc.
                 If false, the route has no MED attribute, and the value of
                 eltexBgpLocRibPathAttrMultExitDisc is undefined."                      �"If eltexBgpLocRibBest is 'true', then this field is set to
                'routeIsBest'.  Otherwise, it reports the stage in the
                decision process when the route was determined to be
                non-best.

                This is the reason that the route was discarded from the
                decision process.  There may be other reasons why this route
                is less preferred than the best route."                       �"If eltexBgpLocRibPeerOrRib is peer, this field indicates
                 whether the source peer is an iBGP or eBGP peer.  If false,
                 this field is set to 'none'."                      O"The BGP-4 Adj-RIB-In Table contains information about all
                 paths to destination networks received from all BGP4 peers.
                 Paths from AFMs are not contained within this table.

                 This table reports received routes and path attributes before
                 import policy has been applied."                       ("Information about a path to a network."                       �"The index of the BGP peer this route was learned from.
                 This field is equivalent to a eltexBgpPeerStatusPeerIndex."                       ="The address family of the prefix for this Adj-RIB-In route."                       Y"The subsequent address family of the prefix for this
                 Adj-RIB-In route."                       `"A type of address prefix in the Network Layer Reachability
                 Information field."                      "An address prefix in the Network Layer Reachability
                 Information field.

                 The prefix length is specified by eltexBgpAdjRibInPrfxLen.  Any
                 bits beyond the length specified by eltexBgpAdjRibInPrfxLen are
                 zeroed."                       o"Length in bits of the IP address prefix in the Network Layer
                 Reachability Information field."                       �"The path ID for this NLRI.

                If BGP additional path receive capability was negotiated
                with the peer for this AFI/SAFI then this is the received
                path ID for this NLRI, otherwise it is zero."                       d"Whether the eltexBgpAdjRibInASPathStr field contains two or
                 four byte AS numbers."                      "This is a string depicting the autonomous system path to this
                 network which was received from the peer which advertised it.
                 Two-octet AS numbers appear as four-octet numbers by adding
                 two bytes of zero padding."                       ."The ultimate origin of the path information."                       >"A type of the nexthop address received in the UPDATE packet."                      '"The address of the border router that should be used to access
                 the destination network.  This address is the nexthop address
                 received in the UPDATE packet.  The address family of this
                 object will be the same as that of the prefix in this row."                       �"This metric is used to discriminate between multiple exit
                 points to an adjacent autonomous system.
                 Valid only if eltexBgpAdjRibInPathAttrMEDPrsnt is TRUE."                       _"The originating BGP4 speaker's degree of preference for an
                 advertised route."                       �"When this object is set to true, the ATOMIC_AGGREGATE Path 
                 Attribute is present and indicates that the NLRI MUST NOT
                 be made more specific."                       ["The AS number of the last BGP4 speaker that performed route
                 aggregation."                       �"The IP address of the last BGP4 speaker that performed route
                 aggregation.  A value of zero indicates the absence of this
                 attribute.  Note propagation of AS of zero is illegal in
                 the Internet."                       �"The Originator-ID identifying the router that initially
                 advertised this destination to a Route Reflector.  A
                 value of 0.0.0.0 indicates the absence of this attribute."                       �"The AS number of the speaker that attached the AS_PATHLIMIT
                 attribute.  A value of 0 indicates the absence of this
                 attribute.  Note that propagation of AS of zero is illegal in
                 the Internet."                       �"The upper bound on the number of ASes in the AS_PATH
                 associated with this route before the route will be filtered.
                 Only valid if eltexBgpAdjRibInPathAttrAsPathLimAs is non-zero."                      "If true, then the route has an associated MED attribute,
                 whose value is given in eltexBgpAdjRibInPathAttMultiExitDisc.
                 If false, the route has no MED attribute, and the value of
                 eltexBgpAdjRibInPathAttMultiExitDisc is undefined."                       ["If true, then the route was accepted by policy.  If false it
                 was denied."                       `"The BGP Adj-RIB-Out Table contains the set of routes
                 advertised to each peer."                      �"Information about a path to a network that has been
                 advertised to a peer.  The route has been
                 explicitly advertised in an UPDATE message sent to the
                 peer, unless eltexBgpAdjRibOutLocalAggrType has the value
                 suppressedAggregatedRoute(4), in which case the route
                 has only been advertised as part of an aggregate
                 route."                       O"The address family of the prefix for this Adj-RIB Out
                 route."                       Z"The subsequent address family of the prefix for
                 this Adj-RIB Out route."                       "A type of the address prefix in the Network Layer Reachability
                 Information field for this Adj-RIB Out route."                      ;"An address prefix in the Network Layer Reachability
                 Information field for this Adj-RIB Out route.

                 The prefix length is specified by eltexBgpAdjRibOutPrfxLen.
                 Any bits beyond the length specified by
                 eltexBgpAdjRibOutPrfxLen are zeroed.

                 This field contains the full line format BGP NLRI omitting
                 any NLRI length field.

                 For SAFI 128 the NLRI includes the MPLS label and Route
                 Distinguisher as well as the IPv4 or IPv6 address prefix."                       f"Length in bits of the address prefix contained in the
                 eltexBgpAdjRibOutPrfx object."                      "The path ID for this Adj-RIB Out route.

                 If BGP additional path send capability was negotiated with
                 the peer for this AFI/SAFI then this is the path ID sent for
                 this Adj-RIB Out route, otherwise it is zero."                       `"An indication of whether or not this route was chosen as the
                 best BGP4 route."                      o"This object indicates the current state of
                 advertisement of the route to the peer.

                 A value of advertised(1) indicates that the route has
                 been advertised to the peer.

                 A value of suppressed(2) indicates that the route is
                 not currently advertised to the peer, but will be
                 advertised when a minimum advertisement interval timer
                 expires.

                 A value of pendingWithdrawal(3) indicates that the
                 route is currently advertised to the peer, but will be
                 withdrawn when the timer expires.

                 A value of withdrawn(4) indicates that the route has
                 been withdrawn from the peer, and this entry will be
                 removed from the Adj-RIB-Out on the expiry of the
                 timer."                      �"This object indicates any aggregation processing that
                 has been applied to this Adj-RIB-Out route.

                 A value of noAggregation(1) indicates that this route
                 does not aggregate any other routes, and is not
                 aggregated by any route.

                 A value of aggregateRoute(2) indicates that this route
                 is a locally configured aggregating route.

                 A value of unsuppAggregatedRoute(3) indicates that this
                 route has been aggregated by a locally configured
                 aggregate route and is not suppressed - the route is
                 still explicitly advertised to the peer.

                 A value of suppressedAggregatedRoute(4) indicates that
                 this route has been aggregated by a locally configured
                 aggregate route and is flagged such that it should not be
                 advertised along with the aggregate route.  Typically such
                 routes are not installed on an Adj-RIB-Out.  If however the
                 aggregate route itself is not permitted to be added to the
                 Adj-RIB-Out then suppressed routes are advertised if they
                 themselves are permitted by policy."                       f"Whether the eltexBgpAdjRibOutASPathStr object contains
                 two or four byte AS numbers."                      	"This is a string containing the autonomous system path sent to
                 this peer in the AS_PATH attribute for this Adj-RIB-Out route.
                 Two-octet AS numbers appear as four-octet numbers by adding
                 two bytes of zero padding."                       ."The ultimate origin of the path information."                       T"A type of the next hop address transmitted 
                 in the UPDATE packet."                       �"The next hop address transmitted in the UPDATE packet.
                 The address family of this object is the same as that
                 of eltexBgpAdjRibOutPrfx."                       �"This metric is used to discriminate between multiple
                 exit points to an adjacent autonomous system.
                 Valid only if eltexBgpAdjRibOutMEDPrsnt is TRUE."                       z"The local preference for this Adj-RIB-Out route, as
                 transmitted in the UPDATE message sent to the peer."                       �"When this object is set to true, the ATOMIC_AGGREGATE Path 
                 Attribute was included in the UPDATE sent to the peer
                 for this Adj-RIB-Out route."                       ["The AS number of the last BGP4 speaker that performed
                 route aggregation."                       �"The IP address of the last BGP4 speaker that performed
                 route aggregation.  A value of 0.0.0.0 indicates that
                 this attribute was not included in the UPDATE message
                 sent to the peer."                       �"The Originator-ID identifying the router that initially
                 advertised this destination to a Route Reflector.  A
                 value of 0.0.0.0 indicates the absence of this
                 attribute."                       �"Whether or not this route was installed into the
                 Forwarding Table as an ECMP route (it may or may not be
                 the best BGP4 route advertised to BGP peers)."                       f"If non-zero this is the number of the AS that attached the
                  AS_PATHLIMIT attribute."                       �"The upper bound on the number of ASes in the AS_PATH attribute
                 after which the route will be filtered.  Only valid if
                 eltexBgpAdjRibOutAsLimAs is non-zero."                      �"An indication of whether or not this route is installed in
                 the forwarding table.

                 - 'active' if the route is installed in the forwarding
                   table, or is a route redistributed from another routing
                   protocol instance

                 - 'inactive' otherwise.

                 - 'notTracked' if BGP does not track active routes."                      "If true, then the route has an associated MED attribute,
                 whose value is given in eltexBgpAdjRibOutMultiExitDisc. 
                 If false, the route has no MED attribute, and the value of
                 eltexBgpAdjRibOutMultiExitDisc is undefined."                       X"This field indicates whether the source peer is an iBGP or
                 eBGP peer."                      1"This table contains information about paths to destination
                 networks received from all BGP4 peers.

                 This table reports routes and path attributes after import
                 policy has been applied.  Only routes accepted by import
                 policy are reported."                       ("Information about a path to a network."                       >"The address family of the prefix for this VPN Loc-RIB route."                       Z"The subsequent address family of the prefix for this VPN Loc-RIB
                 route."                       �"Information from NLRI field.

                 The prefix length is specified by eltexBgpVpnLocRibPrfxLen. Any
                 bits beyond the length specified by eltexBgpVpnLocRibPrfxLen are
                 zeroed."                       `"Length in bits of prefix in the Network Layer
                 Reachability Information field."                       q"Whether this route was learned from a BGP peer or redistributed
                 from Routing Information Base."                      Q"The index of either the BGP peer or RIB this route was
                 learned from.  If eltexBgpVpnLocRibPeerOrRib is peer, this field
                 is equivalent to a eltexBgpPeerStatusPeerIndex.  If
                 eltexBgpVpnLocRibPeerOrRib is afm, this field is equivalent to
                 an internal index of RIB entity."                       �"The path ID for this NLRI.

                 If BGP additional path receive capability was negotiated
                 with the peer for this AFI/SAFI then this is the received
                 path ID for this NLRI, otherwise it is zero."                       `"An indication of whether or not this route was chosen as the
                 best BGP4 route."                       e"Whether the eltexBgpVpnLocRibASPathStr field contains two or
                 four byte AS numbers."                      "This is a string depicting the autonomous system path to this
                 network which was received from the peer which advertised it.
                 Two-octet AS numbers appear as four-octet numbers by adding
                 two bytes of zero padding."                       ."The ultimate origin of the path information."                       :"A type of nexthop address received in the UPDATE packet."                       �"The address of the border router that should be used to access
                 the destination network.  This address is the nexthop address
                 received in the UPDATE packet."                       �"This metric is used to discriminate between multiple exit
                 points to an adjacent autonomous system.
                 Valid only if eltexBgpVpnLocRibPathAttrMEDPrsnt is TRUE."                       _"The originating BGP4 speaker's degree of preference for an
                 advertised route."                       �"When this object is set to TRUE, the ATOMIC_AGGREGATE Path
                 Attribute is present and indicates that the NLRI MUST NOT
                 be made more specific."                       ["The AS number of the last BGP4 speaker that performed route
                 aggregation."                       �"The IP address of the last BGP4 speaker that performed route
                 aggregation.  A value of zero indicates the absence of this
                 attribute.  Note propagation of AS of zero is illegal in
                 the Internet."                       m"The degree of preference calculated by the receiving BGP4
                 speaker for an advertised route."                       �"The Originator-ID identifying the router that initially
                 advertised this destination to a Route Reflector.  A
                 value of 0.0.0.0 indicates the absence of this attribute."                       8"The local degree of preference assigned to this route."                       �"Whether or not this route was installed into the
                 Forwarding Table as an ECMP route (it may or may not be
                 the best BGP4 route advertised to BGP peers)."                       �"The AS number of the speaker that attached the AS_PATHLIMIT
                 attribute.  A value of 0 indicates the absence of this
                 attribute.  Note that propagation of AS of zero is illegal in
                 the Internet."                       �"The upper bound on the number of ASes in the AS_PATH
                 associated with this route before the route will be filtered.
                 Only valid if eltexBgpVpnLocRibPathAttrAsPathLimAs is non-zero."                      �"An indication of whether or not this route is installed in
                 the forwarding table.

                 - 'active' if the route is installed in the forwarding
                   table, or is a route redistributed from another routing
                   protocol instance

                 - 'inactive' otherwise.

                 - 'notTracked' if BGP does not track active routes."                      "If true, then the route has an associated MED attribute,
                 whose value is given in eltexBgpVpnLocRibPathAttrMultExitDisc.
                 If false, the route has no MED attribute, and the value of
                 eltexBgpVpnLocRibPathAttrMultExitDisc is undefined."                      �"If eltexBgpVpnLocRibBest is 'true', then this field is set to
                'routeIsBest'.  Otherwise, it reports the stage in the
                decision process when the route was determined to be
                non-best.

                This is the reason that the route was discarded from the
                decision process.  There may be other reasons why this route
                is less preferred than the best route."                       �"If eltexBgpVpnLocRibPeerOrRib is peer, this field indicates
                 whether the source peer is an iBGP or eBGP peer.  If false,
                 this field is set to 'none'."                       #"Route Distinguisher of the route."                       "EVPN route type."                       8"EVPN route length in bits without Route Distinguisher."                       "Ethernet Segment Identifier."                       
"VLAN ID."                       7"Length in bits field eltexBgpVpnLocRibEvpnMacAddress."                        "MAC address from route type 2."                       �"The length of field eltexBgpVpnLocRibEvpnPrefixAddress, for 
                 IPv4 it is 32 bits, and for IPv6 - 128. This field is
                 optional and may not contain any values (all zeros)."                       �"A type of the address prefix in the Network Layer Reachability
                 Information field for this route. Optional field for route type 2."                       -"IP address optional field for route type 2."                       x"The length field eltexBgpVpnLocRibEvpnOrigAddress for the IP
                 address of the originator of the route. "                       9"IP address type field eltexBgpVpnLocRibEvpnOrigAddress."                       d"The IP address of the originator of the route, usually 
                 the VTEP router loopback."                      W"The BGP-4 VPN Adj-RIB-In Table contains information about all vpn
                 paths to destination networks received from all BGP4 peers.
                 Paths from AFMs are not contained within this table.

                 This table reports received routes and path attributes before
                 import policy has been applied."                       ("Information about a path to a network."                       �"The index of the BGP peer this route was learned from.
                 This field is equivalent to a eltexBgpPeerStatusPeerIndex."                       A"The address family of the prefix for this VPN Adj-RIB-In route."                       ]"The subsequent address family of the prefix for this VPN
                 Adj-RIB-In route."                      "An address prefix in the Network Layer Reachability
                 Information field.

                 The prefix length is specified by eltexBgpVpnAdjRibInPrfxLen. Any
                 bits beyond the length specified by eltexBgpVpnAdjRibInPrfxLen are
                 zeroed."                       o"Length in bits of the IP address prefix in the Network Layer
                 Reachability Information field."                       �"The path ID for this NLRI.

                 If BGP additional path receive capability was negotiated
                 with the peer for this AFI/SAFI then this is the received
                 path ID for this NLRI, otherwise it is zero."                       g"Whether the eltexBgpVpnAdjRibInASPathStr field contains two or
                 four byte AS numbers."                      "This is a string depicting the autonomous system path to this
                 network which was received from the peer which advertised it.
                 Two-octet AS numbers appear as four-octet numbers by adding
                 two bytes of zero padding."                       ."The ultimate origin of the path information."                       >"A type of the nexthop address received in the UPDATE packet."                       �"The address of the border router that should be used to access
                 the destination network.  This address is the nexthop address
                 received in the UPDATE packet."                       �"This metric is used to discriminate between multiple exit
                 points to an adjacent autonomous system.
                 Valid only if eltexBgpVpnAdjRibInPathAttrMEDPrsnt is TRUE."                       _"The originating BGP4 speaker's degree of preference for an
                 advertised route."                       �"When this object is set to true, the ATOMIC_AGGREGATE Path 
                 Attribute is present and indicates that the NLRI MUST NOT
                 be made more specific."                       ["The AS number of the last BGP4 speaker that performed route
                 aggregation."                       �"The IP address of the last BGP4 speaker that performed route
                 aggregation.  A value of zero indicates the absence of this
                 attribute.  Note propagation of AS of zero is illegal in
                 the Internet."                       �"The Originator-ID identifying the router that initially
                 advertised this destination to a Route Reflector.  A
                 value of 0.0.0.0 indicates the absence of this attribute."                       �"The AS number of the speaker that attached the AS_PATHLIMIT
                 attribute.  A value of 0 indicates the absence of this
                 attribute.  Note that propagation of AS of zero is illegal in
                 the Internet."                       �"The upper bound on the number of ASes in the AS_PATH
                 associated with this route before the route will be filtered.
                 Only valid if eltexBgpVpnAdjRibInPathAttrAsPathLimAs is non-zero."                      "If true, then the route has an associated MED attribute,
                 whose value is given in eltexBgpVpnAdjRibInPathAttMultiExitDisc.
                 If false, the route has no MED attribute, and the value of
                 eltexBgpVpnAdjRibInPathAttMultiExitDisc is undefined."                       ["If true, then the route was accepted by policy.  If false it
                 was denied."                       #"Route Distinguisher of the route."                       "EVPN route type."                       8"EVPN route length in bits without Route Distinguisher."                       "Ethernet Segment Identifier."                       
"VLAN ID."                       9"Length in bits field eltexBgpVpnAdjRibInEvpnMacAddress."                        "MAC address from route type 2."                       �"The length of field eltexBgpVpnAdjRibInEvpnPrefixAddress, for 
                 IPv4 it is 32 bits, and for IPv6 - 128. This field is
                 optional and may not contain any values (all zeros)."                       �"A type of the address prefix in the Network Layer Reachability
                 Information field for this route. Optional field for route type 2."                       -"IP address optional field for route type 2."                       y"The length field eltexBgpVpnAdjRibInEvpnOrigAddress for the IP
                 address of the originator of the route."                       ;"IP address type field eltexBgpVpnAdjRibInEvpnOrigAddress."                       d"The IP address of the originator of the route, usually 
                 the VTEP router loopback."                       d"The BGP vpn Adj-RIB-Out Table contains the set of routes
                 advertised to each peer."                      �"Information about a path to a network that has been
                 advertised to a peer.  The route has been
                 explicitly advertised in an UPDATE message sent to the
                 peer, unless eltexBgpVpnAdjRibOutLocalAggrType has the value
                 suppressedAggregatedRoute(4), in which case the route
                 has only been advertised as part of an aggregate
                 route."                       S"The address family of the prefix for this VPN Adj-RIB Out
                 route."                       ^"The subsequent address family of the prefix for
                 this VPN Adj-RIB Out route."                      �"An address prefix in the Network Layer Reachability
                 Information field for this VPN Adj-RIB Out route.

                 The prefix length is specified by eltexBgpVpnAdjRibOutPrfxLen.
                 Any bits beyond the length specified by
                 eltexBgpVpnAdjRibOutPrfxLen are zeroed.

                 This field contains the full line format BGP NLRI omitting
                 any NLRI length field."                       i"Length in bits of the address prefix contained in the
                 eltexBgpVpnAdjRibOutPrfx object."                      "The path ID for this VPN Adj-RIB Out route.

                 If BGP additional path send capability was negotiated with
                 the peer for this AFI/SAFI then this is the path ID sent for
                 this VPN Adj-RIB Out route, otherwise it is zero."                       `"An indication of whether or not this route was chosen as the
                 best BGP4 route."                      s"This object indicates the current state of
                 advertisement of the route to the peer.

                 A value of advertised(1) indicates that the route has
                 been advertised to the peer.

                 A value of suppressed(2) indicates that the route is
                 not currently advertised to the peer, but will be
                 advertised when a minimum advertisement interval timer
                 expires.

                 A value of pendingWithdrawal(3) indicates that the
                 route is currently advertised to the peer, but will be
                 withdrawn when the timer expires.

                 A value of withdrawn(4) indicates that the route has
                 been withdrawn from the peer, and this entry will be
                 removed from the VPN Adj-RIB-Out on the expiry of the
                 timer."                      "This object indicates any aggregation processing that
                 has been applied to this VPN Adj-RIB-Out route.

                 A value of noAggregation(1) indicates that this route
                 does not aggregate any other routes, and is not
                 aggregated by any route.

                 A value of aggregateRoute(2) indicates that this route
                 is a locally configured aggregating route.

                 A value of unsuppAggregatedRoute(3) indicates that this
                 route has been aggregated by a locally configured
                 aggregate route and is not suppressed - the route is
                 still explicitly advertised to the peer.

                 A value of suppressedAggregatedRoute(4) indicates that
                 this route has been aggregated by a locally configured
                 aggregate route and is flagged such that it should not be
                 advertised along with the aggregate route.  Typically such
                 routes are not installed on an VPN Adj-RIB-Out.  If however the
                 aggregate route itself is not permitted to be added to the
                 VPN Adj-RIB-Out then suppressed routes are advertised if they
                 themselves are permitted by policy."                       i"Whether the eltexBgpVpnAdjRibOutASPathStr object contains
                 two or four byte AS numbers."                      "This is a string containing the autonomous system path sent to
                 this peer in the AS_PATH attribute for this VPN Adj-RIB-Out route.
                 Two-octet AS numbers appear as four-octet numbers by adding
                 two bytes of zero padding."                       ."The ultimate origin of the path information."                       T"A type of the next hop address transmitted 
                 in the UPDATE packet."                       8"The next hop address transmitted in the UPDATE packet."                       �"This metric is used to discriminate between multiple
                 exit points to an adjacent autonomous system.
                 Valid only if eltexBgpVpnAdjRibOutMEDPrsnt is TRUE."                       ~"The local preference for this VPN Adj-RIB-Out route, as
                 transmitted in the UPDATE message sent to the peer."                       �"When this object is set to true, the ATOMIC_AGGREGATE Path 
                 Attribute was included in the UPDATE sent to the peer
                 for this VPN Adj-RIB-Out route."                       ["The AS number of the last BGP4 speaker that performed
                 route aggregation."                       �"The IP address of the last BGP4 speaker that performed
                 route aggregation.  A value of 0.0.0.0 indicates that
                 this attribute was not included in the UPDATE message
                 sent to the peer."                       �"The Originator-ID identifying the router that initially
                 advertised this destination to a Route Reflector.  A
                 value of 0.0.0.0 indicates the absence of this
                 attribute."                       �"Whether or not this route was installed into the
                 Forwarding Table as an ECMP route (it may or may not be
                 the best BGP4 route advertised to BGP peers)."                       f"If non-zero this is the number of the AS that attached the
                  AS_PATHLIMIT attribute."                       �"The upper bound on the number of ASes in the AS_PATH attribute
                 after which the route will be filtered.  Only valid if
                 eltexBgpVpnAdjRibOutAsLimAs is non-zero."                      �"An indication of whether or not this route is installed in
                 the forwarding table.

                 - 'active' if the route is installed in the forwarding
                   table, or is a route redistributed from another routing
                   protocol instance

                 - 'inactive' otherwise.

                 - 'notTracked' if BGP does not track active routes."                      "If true, then the route has an associated MED attribute,
                 whose value is given in eltexBgpVpnAdjRibOutMultiExitDisc. 
                 If false, the route has no MED attribute, and the value of
                 eltexBgpVpnAdjRibOutMultiExitDisc is undefined."                       X"This field indicates whether the source peer is an iBGP or
                 eBGP peer."                       #"Route Distinguisher of the route."                       "EVPN route type."                       8"EVPN route length in bits without Route Distinguisher."                       "Ethernet Segment Identifier."                       
"VLAN ID."                       :"Length in bits field eltexBgpVpnAdjRibOutEvpnMacAddress."                        "MAC address from route type 2."                       �"The length of field eltexBgpVpnAdjRibOutEvpnPrefixAddress, for 
                 IPv4 it is 32 bits, and for IPv6 - 128. This field is
                 optional and may not contain any values (all zeros)."                       �"A type of the address prefix in the Network Layer Reachability
                 Information field for this route. Optional field for route type 2."                       -"IP address optional field for route type 2."                       z"The length field eltexBgpVpnAdjRibOutEvpnOrigAddress for the IP
                 address of the originator of the route."                       <"IP address type field eltexBgpVpnAdjRibOutEvpnOrigAddress."                       d"The IP address of the originator of the route, usually 
                 the VTEP router loopback."                       �"BGP network configuration table.

                 This table allows a user to configure internal networks
                 advertised via BGP."                       ]"Entry containing information about the internal network
                 announced via BGP."                       2"The address family of the prefix for this route."                       N"The subsequent address family of the prefix for this
                 route."                       "A type of address prefix."                       "An address prefix."                       d"Length in bits of the address prefix contained in the
                 eltexBgpNetworkPrfx object."                       m"The row status for this BGP Network Table entry, used to
                 create and destroy table entries."                              "The BGP-4 Path Attribute Cluster Table contains the per
                 network path (NLRI) data on the reflection path which a
                 route has traversed.  The absence of row data for a given
                 network path indicates a lack of this attribute information
                 for the indicated network path.

                 This table reports received routes and path attributes after
                 import policy has been applied.  Only routes accepted by
                 import policy are reported."                       ["Information about a cluster traversal provided with a path to
                 a network."                       ,"An integral index for a row in this table."                      �"A four octet long value representing a part of the
                 reflection path that the route has passed.  Each such four
                 octet long value represents the ID of a cluster that
                 the route has traversed.  The sequence of this path as
                 received in the route advertisement will be preserved in
                 the sequence of eltexBgpPathAttrClusterTable rows (and the
                 eltexBgpLocPathAttrClusterValue's in each row) as returned for a given
                 network path, and the monotonically increasing sequence of
                 eltexBgpLocPathAttrClusterIndex values for that network path."                          "The BGP-4 Path Attribute Community Table contains the per
                 network path (NLRI) data on the community membership
                 advertised with a route.  The absence of row data for a given
                 network path indicates a lack of this attribute information
                 for the indicated network path.

                 This table reports received routes and path attributes after
                 import policy has been applied.  Only routes accepted by
                 import policy are reported."                       _"Information about a community association provided with a path
                 to a network."                       q"Whether this route was learned from a BGP peer or redistributed
                 from Routing Information Base."                      ]"The index of either the BGP peer or RIB this route was
                 learned from.  If eltexBgpPathAttrCommLocPeerOrRib is peer, this
                 field is equivalent to a eltexBgpPeerStatusPeerIndex.  If
                 eltexBgpPathAttrCommLocPeerOrRib is afm, this field is equivalent to
                 an internal index of RIB entity."                       :"The address family of the prefix for this Loc-RIB route."                       V"The subsequent address family of the prefix for this Loc-RIB
                 route."                      "An address prefix in the Network Layer Reachability
                 Information field.

                 The prefix length is specified by eltexBgpPathAttrCommLocPrfxLen.  Any bits
                 beyond the length specified by eltexBgpPathAttrCommLocPrfxLen are zeroed.

                 This field contains the full line format BGP NLRI omitting
                 any NLRI length field.

                 For SAFI 128 the NLRI includes the MPLS label and Route
                 Distinguisher as well as the IPv4 or IPv6 address prefix."                       d"Length in bits of the prefix in the Network Layer Reachability
                 Information field."                       �"The path ID for this NLRI.

                 If BGP additional path receive capability was negotiated
                 with the peer for this AFI/SAFI then this is the received
                 path ID for this NLRI, otherwise it is zero."                       +"An integer index for a row in this table."                       �"A value representing a community.   There are certain
                 4-octet long values which could be returned in this
                 columnar row data that carry additional semantics."                       $"User data for this path attribute."                      �"The BGP-4 Received Path Attribute Community Table contains the
                 per network path (NLRI) data on the community membership
                 advertised with a route.  The absence of row data for a given
                 network path indicates a lack of this attribute information
                 for the indicated network path.

                 This table is similar to eltexBgpPathAttrCommLocTable but
                 reports path attributes before import policy has been applied."                       _"Information about a community association provided with a path
                 to a network."                       �"The index of the BGP peer this route was learned from.
                 This field is equivalent to a eltexBgpPeerStatusPeerIndex."                       ="The address family of the prefix for this Adj-RIB In route."                       Y"The subsequent address family of the prefix for this Adj-RIB In
                 route."                       "An address prefix in the Network Layer Reachability
                 Information field.

                 The prefix length is specified by eltexBgpPathAttrCommAdjInPrfxLen.  Any bits
                 beyond the length specified by eltexBgpPathAttrCommAdjInPrfxLen are zeroed.

                 This field contains the full line format BGP NLRI omitting
                 any NLRI length field.

                 For SAFI 128 the NLRI includes the MPLS label and Route
                 Distinguisher as well as the IPv4 or IPv6 address prefix."                       d"Length in bits of the prefix in the Network Layer Reachability
                 Information field."                       �"The path ID for this NLRI.

                 If BGP additional path receive capability was negotiated
                 with the peer for this AFI/SAFI then this is the received
                 path ID for this NLRI, otherwise it is zero."                       +"An integer index for a row in this table."                       �"A value representing a community.   There are certain
                 4-octet long values which could be returned in this
                 columnar row data that carry additional semantics."                       $"User data for this path attribute."                      #"The BGP-4 Adj-RIB Out Path Attribute Community Table contains the
                 per network path (NLRI) data on the community membership
                 advertised with a route.  The absence of row data for a given
                 network path indicates a lack of this attribute information
                 for the indicated network path.

                 This table reports transmitted routes and path attributes
                 after export policy has been applied.  Only routes accepted by
                 export policy are reported."                       _"Information about a community association provided with a path
                 to a network."                       �"The index of the BGP peer this route was learned from.
                 This field is equivalent to a eltexBgpPeerStatusPeerIndex."                       >"The address family of the prefix for this Adj-RIB Out route."                       Z"The subsequent address family of the prefix for this Adj-RIB Out
                 route."                      ""An address prefix in the Network Layer Reachability
                 Information field.

                 The prefix length is specified by eltexBgpPathAttrCommAdjOutPrfxLen.  Any bits
                 beyond the length specified by eltexBgpPathAttrCommAdjOutPrfxLen are zeroed.

                 This field contains the full line format BGP NLRI omitting
                 any NLRI length field.

                 For SAFI 128 the NLRI includes the MPLS label and Route
                 Distinguisher as well as the IPv4 or IPv6 address prefix."                       d"Length in bits of the prefix in the Network Layer Reachability
                 Information field."                       �"The path ID for this NLRI.

                 If BGP additional path receive capability was negotiated
                 with the peer for this AFI/SAFI then this is the received
                 path ID for this NLRI, otherwise it is zero."                       +"An integer index for a row in this table."                       �"A value representing a community. There are certain
                 4-octet long values which could be returned in this
                 columnar row data that carry additional semantics."                       $"User data for this path attribute."                          &"The BGP-4 Path Attribute Extended Community Table contains the
                 per network path (NLRI) data on the extended community
                 membership advertised with a route.  The absence of row data
                 for a given network path indicates a lack of this attribute
                 information for the indicated network path.

                 This table reports received routes and path attributes after
                 import policy has been applied.  Only routes accepted by
                 import policy are reported."                       i"Information about an extended community association provided
                 with a path to a network."                       q"Whether this route was learned from a BGP peer or redistributed
                 from Routing Information Base."                      c"The index of either the BGP peer or RIB this route was
                 learned from.  If eltexBgpPathAttrExtCommLocPeerOrRib is peer, this field
                 is equivalent to a eltexBgpPeerStatusPeerIndex.  If
                 eltexBgpPathAttrExtCommLocPeerOrRib is afm, this field is equivalent to
                 an internal index of RIB entity."                       :"The address family of the prefix for this Loc-RIB route."                       V"The subsequent address family of the prefix for this Loc-RIB
                 route."                      ""An address prefix in the Network Layer Reachability
                 Information field.

                 The prefix length is specified by eltexBgpPathAttrExtCommLocPrfxLen.  Any bits
                 beyond the length specified by eltexBgpPathAttrExtCommLocPrfxLen are zeroed.

                 This field contains the full line format BGP NLRI omitting
                 any NLRI length field.

                 For SAFI 128 the NLRI includes the MPLS label and Route
                 Distinguisher as well as the IPv4 or IPv6 address prefix."                       d"Length in bits of the prefix in the Network Layer Reachability
                 Information field."                       �"The path ID for this NLRI.

                 If BGP additional path receive capability was negotiated
                 with the peer for this AFI/SAFI then this is the received
                 path ID for this NLRI, otherwise it is zero."                       +"An integer index for a row in this table."                       �"A value representing an extended community.   There are
                 certain 8-octet long values which could be returned in this
                 columnar row data that carry additional semantics."                       $"User data for this path attribute."                      "The BGP-4 Received Path Attribute Extended Community Table contains the
                 per network path (NLRI) data on the extended community membership
                 advertised with a route.  The absence of row data for a given
                 network path indicates a lack of this attribute information
                 for the indicated network path.

                 This table is similar to eltexBgpPathAttrExtCommLocTable but reports
                 path attributes before import policy has been applied."                       i"Information about an extended community association provided with a path
                 to a network."                       �"The index of the BGP peer this route was learned from.
                 This field is equivalent to a eltexBgpPeerStatusPeerIndex."                       ="The address family of the prefix for this Adj-RIB In route."                       Y"The subsequent address family of the prefix for this Adj-RIB In
                 route."                      &"An address prefix in the Network Layer Reachability
                 Information field.

                 The prefix length is specified by eltexBgpPathAttrExtCommAdjInPrfxLen.  Any bits
                 beyond the length specified by eltexBgpPathAttrExtCommAdjInPrfxLen are zeroed.

                 This field contains the full line format BGP NLRI omitting
                 any NLRI length field.

                 For SAFI 128 the NLRI includes the MPLS label and Route
                 Distinguisher as well as the IPv4 or IPv6 address prefix."                       d"Length in bits of the prefix in the Network Layer Reachability
                 Information field."                       �"The path ID for this NLRI.

                 If BGP additional path receive capability was negotiated
                 with the peer for this AFI/SAFI then this is the received
                 path ID for this NLRI, otherwise it is zero."                       +"An integer index for a row in this table."                       �"A value representing a community.   There are certain
                 8-octet long values which could be returned in this
                 columnar row data that carry additional semantics."                       $"User data for this path attribute."                      /"The BGP-4 Adj-RIB Out Path Attribute ExtCommunity Table contains the
                 per network path (NLRI) data on the extended community membership
                 advertised with a route.  The absence of row data for a given
                 network path indicates a lack of this attribute information
                 for the indicated network path.

                 This table reports transmitted routes and path attributes
                 after export policy has been applied.  Only routes accepted by
                 export policy are reported."                       i"Information about an extended community association provided with a path
                 to a network."                       �"The index of the BGP peer this route was learned from.
                 This field is equivalent to a eltexBgpPeerStatusPeerIndex."                       >"The address family of the prefix for this Adj-RIB Out route."                       Z"The subsequent address family of the prefix for this Adj-RIB Out
                 route."                      ("An address prefix in the Network Layer Reachability
                 Information field.

                 The prefix length is specified by eltexBgpPathAttrExtCommAdjOutPrfxLen.  Any bits
                 beyond the length specified by eltexBgpPathAttrExtCommAdjOutPrfxLen are zeroed.

                 This field contains the full line format BGP NLRI omitting
                 any NLRI length field.

                 For SAFI 128 the NLRI includes the MPLS label and Route
                 Distinguisher as well as the IPv4 or IPv6 address prefix."                       d"Length in bits of the prefix in the Network Layer Reachability
                 Information field."                       �"The path ID for this NLRI.

                 If BGP additional path receive capability was negotiated
                 with the peer for this AFI/SAFI then this is the received
                 path ID for this NLRI, otherwise it is zero."                       +"An integer index for a row in this table."                       �"A value representing a community. There are certain
                 8-octet long values which could be returned in this
                 columnar row data that carry additional semantics."                       $"User data for this path attribute."                      