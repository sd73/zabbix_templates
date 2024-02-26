                               2"The OID assigned to RADIUS MIB work by the IANA."                  u"The MIB module for entities implementing the server
                 side of the Remote Authentication Dial-In User
                 Service (RADIUS) authentication protocol.  Copyright
                 (C) The Internet Society (2006).  This version of this
                 MIB module is part of RFC 4669; see the RFC itself for
                 full legal notices." �" Bernard Aboba
                   Microsoft
                   One Microsoft Way
                   Redmond, WA  98052
                   US
                   Phone: +1 425 936 6605
                   EMail: bernarda@microsoft.com" "200608210000Z" "199906110000Z"�"Revised version as published in RFC 4669.  This
                 version obsoletes that of RFC 2619 by deprecating the
                 MIB table containing IPv4-only address formats and
                 defining a new table to add support for version-neutral
                 IP address formats.  The remaining MIB objects from RFC
                 2619 are carried forward into this version." +"Initial version as published in RFC 2619."       -- 21 August 2006
               �"The implementation identification string for the
                 RADIUS authentication server software in use on the
                 system, for example, 'FNS-2.1'."                      ("If the server has a persistent state (e.g., a
                 process), this value will be the time elapsed (in
                 hundredths of a second) since the server process
                 was started.  For software without persistent state,
                 this value will be zero."                      �"If the server has a persistent state (e.g., a process)
                 and supports a 'reset' operation (e.g., can be told to
                 re-read configuration files), this value will be the
                 time elapsed (in hundredths of a second) since the
                 server was 'reset.'  For software that does not
                 have persistence or does not support a 'reset'
                 operation, this value will be zero."                      T"Status/action object to reinitialize any persistent
                  server state.  When set to reset(2), any persistent
                  server state (such as a process) is reinitialized as
                  if the server had just been started.  This value will
                  never be returned by a read operation.  When read,
                  one of the following values will be returned:
                      other(1) - server in some unknown state;
                      initializing(3) - server (re)initializing;
                      running(4) - server currently running."                       P"The number of packets received on the
                   authentication port." "RFC 2865 section 4.1"                     a"The number of RADIUS Access-Request packets
                  received from unknown addresses." "RFC 2865 section 4.1"                     S"The number of duplicate RADIUS Access-Request
                 packets received." "RFC 2865 section 4.1"                     2"The number of RADIUS Access-Accept packets sent." "RFC 2865 section 4.2"                     2"The number of RADIUS Access-Reject packets sent." "RFC 2865 section 4.3"                     5"The number of RADIUS Access-Challenge packets sent." "RFC 2865 section 4.4"                     �"The number of malformed RADIUS Access-Request
                packets received.  Bad authenticators
                and unknown types are not included as
                malformed Access-Requests." "RFC 2865 section 4.1"                     �"The number of RADIUS Authentication-Request packets
                that contained invalid Message Authenticator
                attributes received." "RFC 2865 section 3"                     �"The number of incoming packets
                silently discarded for some reason other
                than malformed, bad authenticators or
                unknown types." "RFC 2865 section 3"                     S"The number of RADIUS packets of unknown type that
                were received." "RFC 2865 section 4"                     �"The (conceptual) table listing the RADIUS
                 authentication clients with which the server shares
                 a secret."                       �"An entry (conceptual row) representing a RADIUS
                 authentication client with which the server shares a
                 secret."                       �"A number uniquely identifying each RADIUS
                 authentication client with which this server
                 communicates."                       k"The NAS-IP-Address of the RADIUS authentication client
                 referred to in this table entry." "RFC 2865 section 2"                     �"The NAS-Identifier of the RADIUS authentication client
                 referred to in this table entry.  This is not
                 necessarily the same as sysName in MIB II." "RFC 2865 section 5.32"                     _"The number of packets received on the authentication
                 port from this client." "RFC 2865 section 4.1"                     d"The number of duplicate RADIUS Access-Request
                 packets received from this client." "RFC 2865 section 4.1"                     S"The number of RADIUS Access-Accept packets
                 sent to this client." "RFC 2865 section 4.2"                     S"The number of RADIUS Access-Reject packets
                 sent to this client." "RFC 2865 section 4.3"                     V"The number of RADIUS Access-Challenge packets
                 sent to this client." "RFC 2865 section 4.4"                     �"The number of malformed RADIUS Access-Request
                 packets received from this client.
                 Bad authenticators and unknown types are not included
                 as malformed Access-Requests." "RFC 2865 section 3"                     �"The number of RADIUS Authentication-Request packets
                 that contained invalid Message Authenticator
                 attributes received from this client." "RFC 2865 section 3"                     �"The number of incoming packets from this
                  client silently discarded for some reason other
                  than malformed, bad authenticators or
                  unknown types." "RFC 2865 section 3"                     e"The number of RADIUS packets of unknown type that
                 were received from this client." "RFC 2865 section 4"                     �"The (conceptual) table listing the RADIUS
                 authentication clients with which the server shares
                 a secret."                       �"An entry (conceptual row) representing a RADIUS
                 authentication client with which the server shares a
                 secret."                       �"A number uniquely identifying each RADIUS
                 authentication client with which this server
                 communicates."                       a"The type of address format used for the
                   radiusAuthClientInetAddress object."                       �"The IP address of the RADIUS authentication
                   client referred to in this table entry, using
                   the version-neutral IP address format."                       �"The NAS-Identifier of the RADIUS authentication client
                 referred to in this table entry.  This is not
                 necessarily the same as sysName in MIB II." "RFC 2865 section 5.32"                    U"The number of packets received on the authentication
                 port from this client.  This counter may experience a
                 discontinuity when the RADIUS Server module within the
                 managed entity is reinitialized, as indicated by the
                 current value of radiusAuthServCounterDiscontinuity." "RFC 2865 section 4.1"                    l"The number of duplicate RADIUS Access-Request
                 packets received from this client.  This counter may
                 experience a discontinuity when the RADIUS Server
                 module within the managed entity is reinitialized, as
                 indicated by the current value of
                 radiusAuthServCounterDiscontinuity." "RFC 2865 section 4.1"                    I"The number of RADIUS Access-Accept packets
                 sent to this client.  This counter may experience a
                 discontinuity when the RADIUS Server module within the
                 managed entity is reinitialized, as indicated by the
                 current value of radiusAuthServCounterDiscontinuity." "RFC 2865 section 4.2"                    I"The number of RADIUS Access-Reject packets
                 sent to this client.  This counter may experience a
                 discontinuity when the RADIUS Server module within the
                 managed entity is reinitialized, as indicated by the
                 current value of radiusAuthServCounterDiscontinuity." "RFC 2865 section 4.3"                    L"The number of RADIUS Access-Challenge packets
                 sent to this client.  This counter may experience a
                 discontinuity when the RADIUS Server module within the
                 managed entity is reinitialized, as indicated by the
                 current value of radiusAuthServCounterDiscontinuity." "RFC 2865 section 4.4"                    �"The number of malformed RADIUS Access-Request
                 packets received from this client.  Bad authenticators
                 and unknown types are not included as malformed
                 Access-Requests.  This counter may experience a
                 discontinuity when the RADIUS Server module within the
                 managed entity is reinitialized, as indicated by the
                 current value of radiusAuthServCounterDiscontinuity." "RFC 2865 sections 3, 4.1"                    �"The number of RADIUS Authentication-Request packets
                 that contained invalid Message Authenticator
                 attributes received from this client.  This counter
                 may experience a discontinuity when the RADIUS Server
                 module within the managed entity is reinitialized, as
                 indicated by the current value of
                 radiusAuthServCounterDiscontinuity." "RFC 2865 section 3"                    �"The number of incoming packets from this client
                 silently discarded for some reason other than
                 malformed, bad authenticators or unknown types.
                 This counter may experience a discontinuity when the
                 RADIUS Server module within the managed entity is
                 reinitialized, as indicated by the current value of
                 radiusAuthServCounterDiscontinuity." "RFC 2865 section 3"                    m"The number of RADIUS packets of unknown type that
                 were received from this client.  This counter may
                 experience a discontinuity when the RADIUS Server
                 module within the managed entity is reinitialized, as
                 indicated by the current value of
                 radiusAuthServCounterDiscontinuity." "RFC 2865 section 4"                    "The number of centiseconds since the last
                   discontinuity in the RADIUS Server counters.
                   A discontinuity may be the result of a
                   reinitialization of the RADIUS Server module
                   within the managed entity."                              g"The compliance statement for authentication
                      servers implementing the RADIUS Authentication
                      Server MIB.  Implementation of this module is for
                      IPv4-only entities, or for backwards compatibility
                      use with entities that support both IPv4 and
                      IPv6."   ("The only SETable value is 'reset' (2)."            0"The compliance statement for authentication
                      servers implementing the RADIUS Authentication
                      Server IPv6 Extensions MIB.  Implementation of
                      this module is for entities that support IPv6,
                      or support IPv4 and IPv6."   ("The only SETable value is 'reset' (2)." k"An implementation is only required to support
                  IPv4 and globally unique IPv6 addresses." k"An implementation is only required to support
                  IPv4 and globally unique IPv6 addresses."                 d"The collection of objects providing management of
                a RADIUS Authentication Server."                 d"The collection of objects providing management of
                a RADIUS Authentication Server."                    