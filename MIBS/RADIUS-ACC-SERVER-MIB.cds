                               2"The OID assigned to RADIUS MIB work by the IANA."                  q"The MIB module for entities implementing the server
                 side of the Remote Authentication Dial-In User
                 Service (RADIUS) accounting protocol.  Copyright (C)
                 The Internet Society (2006).  This version of this
                 MIB module is part of RFC 4671; see the RFC itself
                 for full legal notices." �" Bernard Aboba
                   Microsoft
                   One Microsoft Way
                   Redmond, WA  98052
                   US
                   Phone: +1 425 936 6605
                   EMail: bernarda@microsoft.com" "200608210000Z" "199906110000Z"�"Revised version as published in RFC 4671.  This
                 version obsoletes that of RFC 2621 by deprecating
                 the MIB table containing IPv4-only address formats
                 and defining a new table to add support for version-
                 neutral IP address formats.  The remaining MIB objects
                 from RFC 2621 are carried forward into this version." +"Initial version as published in RFC 2621."       -- 21 August 2006
               �"The implementation identification string for the
                 RADIUS accounting server software in use on the
                 system, for example, 'FNS-2.1'."                      ("If the server has a persistent state (e.g., a
                 process), this value will be the time elapsed (in
                 hundredths of a second) since the server process was
                 started.  For software without persistent state, this
                 value will be zero."                      �"If the server has a persistent state (e.g., a process)
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
                      running(4) - server currently running."                       J"The number of packets received on the
                 accounting port." "RFC 2866 section 4.1"                     d"The number of RADIUS Accounting-Request packets
                 received from unknown addresses." "RFC 2866 sections 2, 4.1"                     W"The number of duplicate RADIUS Accounting-Request
                 packets received." "RFC 2866 section 4.1"                     J"The number of RADIUS Accounting-Response packets
                 sent." "RFC 2866 section 4.2"                     �"The number of malformed RADIUS Accounting-Request
                 packets received.  Bad authenticators or unknown
                 types are not included as malformed Access-Requests." "RFC 2866 section 3"                     k"The number of RADIUS Accounting-Request packets
                that contained an invalid authenticator." "RFC 2866 section 3"                     �"The number of incoming packets silently discarded
                for a reason other than malformed, bad authenticators,
                or unknown types." "RFC 2866 section 3"                     �"The number of RADIUS Accounting-Request packets
                 that were received and responded to but not
                 recorded."                       S"The number of RADIUS packets of unknown type that
                were received." "RFC 2866 section 4"                     w"The (conceptual) table listing the RADIUS accounting
                 clients with which the server shares a secret."                       �"An entry (conceptual row) representing a RADIUS
                 accounting client with which the server shares a
                 secret."                       t"A number uniquely identifying each RADIUS accounting
                 client with which this server communicates."                       g"The NAS-IP-Address of the RADIUS accounting client
                 referred to in this table entry."                       �"The NAS-Identifier of the RADIUS accounting client
                 referred to in this table entry.  This is not
                 necessarily the same as sysName in MIB II." "RFC 2865 section 5.32"                     �"The number of incoming packets received
               from this client and silently discarded
               for a reason other than malformed, bad
               authenticators, or unknown types." "RFC 2866 section 3"                     ["The number of packets received from this
                 client on the accounting port." "RFC 2866 section 4.1"                     h"The number of duplicate RADIUS Accounting-Request
                 packets received from this client." "RFC 2866 section 4.1"                     Y"The number of RADIUS Accounting-Response packets
                 sent to this client." "RFC 2866 section 4.2"                     �"The number of RADIUS Accounting-Request packets
                 that contained invalid authenticators received
                 from this client." "RFC 2866 section 3"                     �"The number of malformed RADIUS Accounting-Request
                 packets that were received from this client.
                 Bad authenticators and unknown types
                 are not included as malformed Accounting-Requests." "RFC 2866 section 3"                     �"The number of RADIUS Accounting-Request packets
                 that were received and responded to but not
                 recorded."                       e"The number of RADIUS packets of unknown type that
                 were received from this client." "RFC 2866 section 4"                     w"The (conceptual) table listing the RADIUS accounting
                 clients with which the server shares a secret."                       �"An entry (conceptual row) representing a RADIUS
                 accounting client with which the server shares a
                 secret."                       t"A number uniquely identifying each RADIUS accounting
                 client with which this server communicates."                       `"The type of address format used for the
                   radiusAccClientInetAddress object."                       �"The IP address of the RADIUS accounting
                   client referred to in this table entry, using
                   the IPv6 address format."                       �"The NAS-Identifier of the RADIUS accounting client
                 referred to in this table entry.  This is not
                 necessarily the same as sysName in MIB II." "RFC 2865 section 5.32"                    �"The number of incoming packets received from this
               client and silently discarded for a reason other
               than malformed, bad authenticators, or unknown types.
               This counter may experience a discontinuity when the
               RADIUS Accounting Server module within the managed
               entity is reinitialized, as indicated by the current
               value of radiusAccServerCounterDiscontinuity." "RFC 2866 section 3"                    �"The number of packets received from this
                 client on the accounting port.  This counter
                 may experience a discontinuity when the
                 RADIUS Accounting Server module within the
                 managed entity is reinitialized, as indicated by
                 the current value of
                 radiusAccServerCounterDiscontinuity." "RFC 2866 section 4.1"                    �"The number of duplicate RADIUS Accounting-Request
                 packets received from this client.  This counter
                 may experience a discontinuity when the RADIUS
                 Accounting Server module within the managed
                 entity is reinitialized, as indicated by the
                 current value of
                 radiusAccServerCounterDiscontinuity." "RFC 2866 section 4.1"                    m"The number of RADIUS Accounting-Response packets
                 sent to this client.  This counter may experience
                 a discontinuity when the RADIUS Accounting Server
                 module within the managed entity is reinitialized,
                 as indicated by the current value of
                 radiusAccServerCounterDiscontinuity." "RFC 2866 section 4.2"                    �"The number of RADIUS Accounting-Request packets
                 that contained invalid authenticators received
                 from this client.  This counter may experience a
                 discontinuity when the RADIUS Accounting Server
                 module within the managed entity is reinitialized,
                 as indicated by the current value of
                 radiusAccServerCounterDiscontinuity." "RFC 2866 section 3"                    "The number of malformed RADIUS Accounting-Request
                 packets that were received from this client.
                 Bad authenticators and unknown types are not
                 included as malformed Accounting-Requests.  This
                 counter may experience a discontinuity when the
                 RADIUS Accounting Server module within the managed
                 entity is reinitialized, as indicated by the current
                 value of radiusAccServerCounterDiscontinuity." "RFC 2866 section 3"                    �"The number of RADIUS Accounting-Request packets
                 that were received and responded to but not
                 recorded.  This counter may experience a
                 discontinuity when the RADIUS Accounting Server
                 module within the managed entity is reinitialized,
                 as indicated by the current value of
                 radiusAccServerCounterDiscontinuity."                      y"The number of RADIUS packets of unknown type that
                 were received from this client.  This counter may
                 experience a discontinuity when the RADIUS Accounting
                 Server module within the managed entity is
                 reinitialized, as indicated by the current value of
                 radiusAccServerCounterDiscontinuity." "RFC 2866 section 4"                    ."The number of centiseconds since the last
                   discontinuity in the RADIUS Accounting Server
                   counters.  A discontinuity may be the result of
                   a reinitialization of the RADIUS Accounting Server
                   module within the managed entity."                              +"The compliance statement for accounting servers
               implementing the RADIUS Accounting Server MIB.
               Implementation of this module is for IPv4-only
               entities, or for backwards compatibility use with
               entities that support both IPv4 and IPv6."   ("The only SETable value is 'reset' (2)."            "The compliance statement for accounting
               servers implementing the RADIUS Accounting
               Server IPv6 Extensions MIB.  Implementation of
               this module is for entities that support IPv6,
               or support IPv4 and IPv6."   ("The only SETable value is 'reset' (2)." k"An implementation is only required to support
                  IPv4 and globally unique IPv6 addresses." k"An implementation is only required to support
                  IPv4 and globally unique IPv6 addresses."                 `"The collection of objects providing management of
                a RADIUS Accounting Server."                 `"The collection of objects providing management of
                a RADIUS Accounting Server."                    