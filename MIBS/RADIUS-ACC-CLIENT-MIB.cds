                               2"The OID assigned to RADIUS MIB work by the IANA."                  l"The MIB module for entities implementing the client
                side of the Remote Authentication Dial-In User Service
                (RADIUS) accounting protocol.  Copyright (C) The
                Internet Society (2006).  This version of this MIB
                module is part of RFC 4670; see the RFC itself for
                full legal notices." �" Bernard Aboba
                  Microsoft
                  One Microsoft Way
                  Redmond, WA  98052
                  US
                  Phone: +1 425 936 6605
                  EMail: bernarda@microsoft.com" "200608210000Z" "199906110000Z"�"Revised version as published in RFC 4670.
                This version obsoletes that of RFC 2620 by
                deprecating the MIB table containing IPv4-only
                address formats and defining a new table to add support
                for version-neutral IP address formats.  The remaining
                MIB objects from RFC 2620 are carried forward into this
                version." +"Initial version as published in RFC 2620."       -- 21 August 2006
               d"The number of RADIUS Accounting-Response packets
                received from unknown addresses."                       �"The NAS-Identifier of the RADIUS accounting client.
                This is not necessarily the same as sysName in MIB
                II." "RFC 2865 section 5.32"                     v"The (conceptual) table listing the RADIUS accounting
                servers with which the client shares a secret."                       �"An entry (conceptual row) representing a RADIUS
                accounting server with which the client shares a
                secret."                       �"A number uniquely identifying each RADIUS
                Accounting server with which this client
                communicates."                       b"The IP address of the RADIUS accounting server
                referred to in this table entry."                       T"The UDP port the client is using to send requests to
                this server." "RFC 2866 section 3"                     �"The time interval between the most recent
                Accounting-Response and the Accounting-Request that
                matched it from this RADIUS accounting server." "RFC 2866 section 2"                     p"The number of RADIUS Accounting-Request packets
                sent.  This does not include retransmissions." "RFC 2866 section 4.1"                    ,"The number of RADIUS Accounting-Request packets
                retransmitted to this RADIUS accounting server.
                Retransmissions include retries where the
                Identifier and Acct-Delay have been updated, as
                well as those in which they remain the same." "RFC 2866 section 2"                     a"The number of RADIUS packets received on the
                accounting port from this server." "RFC 2866 section 4.2"                    1"The number of malformed RADIUS Accounting-Response
                 packets received from this server.  Malformed packets
                include packets with an invalid length.  Bad
                authenticators and unknown types are not included as
                malformed accounting responses." "RFC 2866 section 3"                     �"The number of RADIUS Accounting-Response
                packets that contained invalid authenticators
                received from this server." "RFC 2866 section 3"                    i"The number of RADIUS Accounting-Request packets
                sent to this server that have not yet timed out or
                received a response.  This variable is incremented
                when an Accounting-Request is sent and decremented
                due to receipt of an Accounting-Response, a timeout,
                or a retransmission." "RFC 2866 section 2"                    �"The number of accounting timeouts to this server.
              After a timeout, the client may retry to the same
              server, send to a different server, or give up.
              A retry to the same server is counted as a
              retransmit as well as a timeout.  A send to a different
              server is counted as an Accounting-Request as well as
              a timeout." "RFC 2866 section 2"                     {"The number of RADIUS packets of unknown type that
                were received from this server on the accounting port." "RFC 2866 section 4"                     �"The number of RADIUS packets that were received from
                this server on the accounting port and dropped for some
                other reason."                       v"The (conceptual) table listing the RADIUS accounting
                servers with which the client shares a secret."                       �"An entry (conceptual row) representing a RADIUS
                accounting server with which the client shares a
                secret."                       �"A number uniquely identifying each RADIUS
                Accounting server with which this client
                communicates."                       `"The type of address format used for the
                   radiusAccServerInetAddress object."                       �"The IP address of the RADIUS accounting
                   server referred to in this table entry, using
                   the version-neutral IP address format."                       �"The UDP port the client is using to send requests
                   to this accounting server.  The value zero (0) is
                   invalid." "RFC 2866 section 3"                     �"The time interval between the most recent
                Accounting-Response and the Accounting-Request that
                matched it from this RADIUS accounting server." "RFC 2866 section 2"                    "The number of RADIUS Accounting-Request packets
                sent.  This does not include retransmissions.
                This counter may experience a discontinuity when the
                RADIUS Accounting Client module within the managed
                entity is reinitialized, as indicated by the current
                value of radiusAccClientCounterDiscontinuity." "RFC 2866 section 4.1"                    ;"The number of RADIUS Accounting-Request packets
                retransmitted to this RADIUS accounting server.
                Retransmissions include retries where the
                Identifier and Acct-Delay have been updated, as
                well as those in which they remain the same.
                This counter may experience a discontinuity when the
                RADIUS Accounting Client module within the managed
                entity is reinitialized, as indicated by the current
                value of radiusAccClientCounterDiscontinuity." "RFC 2866 section 2"                    q"The number of RADIUS packets received on the
                accounting port from this server.  This counter
                may experience a discontinuity when the RADIUS
                Accounting Client module within the managed entity is
                reinitialized, as indicated by the current value of
                radiusAccClientCounterDiscontinuity." "RFC 2866 section 4.2"                    @"The number of malformed RADIUS Accounting-Response
                packets received from this server.  Malformed packets
                include packets with an invalid length.  Bad
                authenticators and unknown types are not included as
                malformed accounting responses.  This counter may
                experience a discontinuity when the RADIUS Accounting
                Client module within the managed entity is
                reinitialized, as indicated by the current
                value of radiusAccClientCounterDiscontinuity." "RFC 2866 section 3"                    �"The number of RADIUS Accounting-Response
                packets that contained invalid authenticators
                received from this server.  This counter may
                experience a discontinuity when the RADIUS
                Accounting Client module within the managed
                entity is reinitialized, as indicated by the
                current value of
                radiusAccClientCounterDiscontinuity." "RFC 2866 section 3"                    y"The number of RADIUS Accounting-Request packets
                sent to this server that have not yet timed out or
                received a response.  This variable is incremented
                when an Accounting-Request is sent and decremented
                due to receipt of an Accounting-Response, a timeout,
                or a retransmission.  This counter may experience a
                discontinuity when the RADIUS Accounting Client module
                within the managed entity is reinitialized, as
                indicated by the current value of
                radiusAccClientCounterDiscontinuity." "RFC 2866 section 2"                    �"The number of accounting timeouts to this server.
              After a timeout, the client may retry to the same
              server, send to a different server, or give up.
              A retry to the same server is counted as a
              retransmit as well as a timeout.  A send to a different
              server is counted as an Accounting-Request as well as
              a timeout.  This counter may experience a discontinuity
              when the RADIUS Accounting Client module within the
              managed entity is reinitialized, as indicated by the
              current value of radiusAccClientCounterDiscontinuity." "RFC 2866 section 2"                    �"The number of RADIUS packets of unknown type that
                were received from this server on the accounting port.
                This counter may experience a discontinuity when the
                RADIUS Accounting Client module within the managed
                entity is reinitialized, as indicated by the current
                value of radiusAccClientCounterDiscontinuity." "RFC 2866 section 4"                    �"The number of RADIUS packets that were received from
                this server on the accounting port and dropped for some
                other reason.  This counter may experience a
                discontinuity when the RADIUS Accounting Client module
                within the managed entity is reinitialized, as indicated
                by the current value of
                radiusAccClientCounterDiscontinuity."                      ."The number of centiseconds since the last
                   discontinuity in the RADIUS Accounting Client
                   counters.  A discontinuity may be the result of a
                   reinitialization of the RADIUS Accounting Client
                   module within the managed entity."                              +"The compliance statement for accounting clients
               implementing the RADIUS Accounting Client MIB.
               Implementation of this module is for IPv4-only
               entities, or for backwards compatibility use with
               entities that support both IPv4 and IPv6."              "The compliance statement for accounting
               clients implementing the RADIUS Accounting
               Client IPv6 Extensions MIB.  Implementation of
               this module is for entities that support IPv6,
               or support IPv4 and IPv6."   h"An implementation is only required to support
               IPv4 and globally unique IPv6 addresses." h"An implementation is only required to support
               IPv4 and globally unique IPv6 addresses."                 d"The basic collection of objects providing management of
               RADIUS Accounting Clients."                 d"The basic collection of objects providing management of
               RADIUS Accounting Clients."                    