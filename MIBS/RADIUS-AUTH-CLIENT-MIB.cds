                               2"The OID assigned to RADIUS MIB work by the IANA."                  u"The MIB module for entities implementing the client
                 side of the Remote Authentication Dial-In User Service
                 (RADIUS) authentication protocol.  Copyright (C) The
                 Internet Society (2006).  This version of this MIB
                 module is part of RFC 4668; see the RFC itself for
                 full legal notices." �" Bernard Aboba
                   Microsoft
                   One Microsoft Way
                   Redmond, WA  98052
                   US
                   Phone: +1 425 936 6605
                   EMail: bernarda@microsoft.com" "200608210000Z" "199906110000Z"�"Revised version as published in RFC 4668.  This
                  version obsoletes that of RFC 2618 by deprecating
                  the MIB table containing IPv4-only address formats
                  and defining a new table to add support for version
                  neutral IP address formats.  The remaining MIB objects
                  from RFC 2618 are carried forward into this version." +"Initial version as published in RFC 2618."       -- 21 August 2006
               `"The number of RADIUS Access-Response packets
                received from unknown addresses."                       �"The NAS-Identifier of the RADIUS authentication client.
               This is not necessarily the same as sysName in MIB II." "RFC 2865 section 5.32"                     z"The (conceptual) table listing the RADIUS authentication
                servers with which the client shares a secret."                       �"An entry (conceptual row) representing a RADIUS
                authentication server with which the client shares
                a secret."                       �"A number uniquely identifying each RADIUS
                Authentication server with which this client
                communicates."                       f"The IP address of the RADIUS authentication server
                referred to in this table entry."                       T"The UDP port the client is using to send requests to
                this server." "RFC 2865 section 3"                     �"The time interval (in hundredths of a second) between
                the most recent Access-Reply/Access-Challenge and the
                Access-Request that matched it from this RADIUS
                authentication server."                       {"The number of RADIUS Access-Request packets sent
                to this server.  This does not include retransmissions." "RFC 2865 section 4.1"                     r"The number of RADIUS Access-Request packets
                retransmitted to this RADIUS authentication server." "RFC 2865 sections 2.5, 4.1"                     k"The number of RADIUS Access-Accept packets
                (valid or invalid) received from this server." "RFC 2865 section 4.2"                     k"The number of RADIUS Access-Reject packets
                (valid or invalid) received from this server." "RFC 2865 section 4.3"                     n"The number of RADIUS Access-Challenge packets
                (valid or invalid) received from this server." "RFC 2865 section 4.4"                    ["The number of malformed RADIUS Access-Response
                packets received from this server.
                Malformed packets include packets with
                an invalid length.  Bad authenticators or
                Message Authenticator attributes or unknown types
                are not included as malformed access responses."                       �"The number of RADIUS Access-Response packets
                containing invalid authenticators or Message
                Authenticator attributes received from this server." +"RFC 2865 section 3, RFC 2869 section 5.14"                    }"The number of RADIUS Access-Request packets
                destined for this server that have not yet timed out
                or received a response.  This variable is incremented
                when an Access-Request is sent and decremented due to
                receipt of an Access-Accept, Access-Reject,
                Access-Challenge, timeout, or retransmission." "RFC 2865 section 2"                    �"The number of authentication timeouts to this server.
                After a timeout, the client may retry to the same
                server, send to a different server, or
                give up.  A retry to the same server is counted as a
                retransmit as well as a timeout.  A send to a different
                server is counted as a Request as well as a timeout." ,"RFC 2865 section 2, RFC 2869 section 2.3.2"                     �"The number of RADIUS packets of unknown type that
                were received from this server on the authentication
                port."                       �"The number of RADIUS packets that were
                received from this server on the authentication port
                and dropped for some other reason."                       x"The (conceptual) table listing the RADIUS authentication
              servers with which the client shares a secret."                       �"An entry (conceptual row) representing a RADIUS
              authentication server with which the client shares
              a secret."                       �"A number uniquely identifying each RADIUS
              Authentication server with which this client
              communicates."                       \"The type of address format used for the
              radiusAuthServerInetAddress object."                       �"The IP address of the RADIUS authentication
              server referred to in this table entry, using
              the version-neutral IP address format."                       u"The UDP port the client is using to send requests
              to this server.  The value of zero (0) is invalid." "RFC 2865 section 3"                     �"The time interval (in hundredths of a second) between
              the most recent Access-Reply/Access-Challenge and the
              Access-Request that matched it from this RADIUS
              authentication server." "RFC 2865 section 2"                    v"The number of RADIUS Access-Request packets sent
              to this server.  This does not include retransmissions.
              This counter may experience a discontinuity when the
              RADIUS Client module within the managed entity is
              reinitialized, as indicated by the current value of
              radiusAuthClientCounterDiscontinuity." "RFC 2865 section 4.1"                    m"The number of RADIUS Access-Request packets
              retransmitted to this RADIUS authentication server.
              This counter may experience a discontinuity when
              the RADIUS Client module within the managed entity
              is reinitialized, as indicated by the current value
              of radiusAuthClientCounterDiscontinuity." "RFC 2865 sections 2.5, 4.1"                    f"The number of RADIUS Access-Accept packets
              (valid or invalid) received from this server.
              This counter may experience a discontinuity when
              the RADIUS Client module within the managed entity
              is reinitialized, as indicated by the current value
              of radiusAuthClientCounterDiscontinuity." "RFC 2865 section 4.2"                    u"The number of RADIUS Access-Reject packets
              (valid or invalid) received from this server.
              This counter may experience a discontinuity when
              the RADIUS Client module within the managed
              entity is reinitialized, as indicated by the
              current value of
              radiusAuthClientCounterDiscontinuity." "RFC 2865 section 4.3"                    x"The number of RADIUS Access-Challenge packets
              (valid or invalid) received from this server.
              This counter may experience a discontinuity when
              the RADIUS Client module within the managed
              entity is reinitialized, as indicated by the
              current value of
              radiusAuthClientCounterDiscontinuity." "RFC 2865 section 4.4"                    N"The number of malformed RADIUS Access-Response
              packets received from this server.
              Malformed packets include packets with
              an invalid length.  Bad authenticators or
              Message Authenticator attributes or unknown types
              are not included as malformed access responses.
              This counter may experience a discontinuity when
              the RADIUS Client module within the managed entity
              is reinitialized, as indicated by the current value
              of radiusAuthClientCounterDiscontinuity." "RFC 2865 sections 3, 4"                    �"The number of RADIUS Access-Response packets
              containing invalid authenticators or Message
              Authenticator attributes received from this server.
              This counter may experience a discontinuity when
              the RADIUS Client module within the managed entity
              is reinitialized, as indicated by the current value
              of radiusAuthClientCounterDiscontinuity." "RFC 2865 section 3"                    s"The number of RADIUS Access-Request packets
              destined for this server that have not yet timed out
              or received a response.  This variable is incremented
              when an Access-Request is sent and decremented due to
              receipt of an Access-Accept, Access-Reject,
              Access-Challenge, timeout, or retransmission." "RFC 2865 section 2"                    z"The number of authentication timeouts to this server.
              After a timeout, the client may retry to the same
              server, send to a different server, or
              give up.  A retry to the same server is counted as a
              retransmit as well as a timeout.  A send to a different
              server is counted as a Request as well as a timeout.
              This counter may experience a discontinuity when the
              RADIUS Client module within the managed entity is
              reinitialized, as indicated by the current value of
              radiusAuthClientCounterDiscontinuity." "RFC 2865 sections 2.5, 4.1"                    {"The number of RADIUS packets of unknown type that
              were received from this server on the authentication
              port.  This counter may experience a discontinuity
              when the RADIUS Client module within the managed
              entity is reinitialized, as indicated by the current
              value of radiusAuthClientCounterDiscontinuity." "RFC 2865 section 4"                    �"The number of RADIUS packets that were
              received from this server on the authentication port
              and dropped for some other reason.  This counter may
              experience a discontinuity when the RADIUS Client
              module within the managed entity is reinitialized,
              as indicated by the current value of
              radiusAuthClientCounterDiscontinuity."                       �"The number of centiseconds since the last discontinuity
              in the RADIUS Client counters.  A discontinuity may
              be the result of a reinitialization of the RADIUS
              Client module within the managed entity."                              3"The compliance statement for authentication clients
               implementing the RADIUS Authentication Client MIB.
               Implementation of this module is for IPv4-only
               entities, or for backwards compatibility use with
               entities that support both IPv4 and IPv6."              "The compliance statement for authentication
             clients implementing the RADIUS Authentication
             Client IPv6 Extensions MIB.  Implementation of
             this module is for entities that support IPv6,
             or support IPv4 and IPv6."   f"An implementation is only required to support
             IPv4 and globally unique IPv6 addresses." f"An implementation is only required to support
             IPv4 and globally unique IPv6 addresses."                 f"The basic collection of objects providing management of
             RADIUS Authentication Clients."                 �"The collection of extended objects providing
             management of RADIUS Authentication Clients
             using version-neutral IP address format."                    