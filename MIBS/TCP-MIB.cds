                               2"The MIB module for managing TCP implementations." �"        Keith McCloghrie

             Postal: Cisco Systems, Inc.
                     170 West Tasman Drive
                     San Jose, CA  95134-1706
                     US

             Phone:  +1 408 526 5260
             Email:  kzm@cisco.com" "9103310000Z" J"The initial revision of this MIB module was part of MIB-
            II."                       O"The compliance statement for SNMPv2 entities which
            implement TCP."                   P"The tcp group of objects providing for management of TCP
            entities."                     n"The algorithm used to determine the timeout value used for
            retransmitting unacknowledged octets."                      �"The minimum value permitted by a TCP implementation for the
            retransmission timeout, measured in milliseconds.  More
            refined semantics for objects of this type depend upon the
            algorithm used to determine the retransmission timeout.  In
            particular, when the timeout algorithm is rsre(3), an object
            of this type has the semantics of the LBOUND quantity
            described in RFC 793."                      �"The maximum value permitted by a TCP implementation for the
            retransmission timeout, measured in milliseconds.  More
            refined semantics for objects of this type depend upon the
            algorithm used to determine the retransmission timeout.  In
            particular, when the timeout algorithm is rsre(3), an object
            of this type has the semantics of the UBOUND quantity
            described in RFC 793."                       �"The limit on the total number of TCP connections the entity
            can support.  In entities where the maximum number of
            connections is dynamic, this object should contain the value
            -1."                       |"The number of times TCP connections have made a direct
            transition to the SYN-SENT state from the CLOSED state."                       |"The number of times TCP connections have made a direct
            transition to the SYN-RCVD state from the LISTEN state."                      1"The number of times TCP connections have made a direct
            transition to the CLOSED state from either the SYN-SENT
            state or the SYN-RCVD state, plus the number of times TCP
            connections have made a direct transition to the LISTEN
            state from the SYN-RCVD state."                       �"The number of times TCP connections have made a direct
            transition to the CLOSED state from either the ESTABLISHED
            state or the CLOSE-WAIT state."                       m"The number of TCP connections for which the current state
            is either ESTABLISHED or CLOSE- WAIT."                       �"The total number of segments received, including those
            received in error.  This count includes segments received on
            currently established connections."                       �"The total number of segments sent, including those on
            current connections but excluding those containing only
            retransmitted octets."                       �"The total number of segments retransmitted - that is, the
            number of TCP segments transmitted containing one or more
            previously transmitted octets."                       9"A table containing TCP connection-specific information."                      '"A conceptual row of the tcpConnTable containing information
            about a particular current TCP connection.  Each row of this
            table is transient, in that it ceases to exist when (or soon
            after) the connection makes the transition to the CLOSED
            state."                      2"The state of this TCP connection.

            The only value which may be set by a management station is
            deleteTCB(12).  Accordingly, it is appropriate for an agent
            to return a `badValue' response if a management station
            attempts to set this object to any other value.

            If a management station sets this object to the value
            deleteTCB(12), then this has the effect of deleting the TCB
            (as defined in RFC 793) of the corresponding connection on
            the managed node, resulting in immediate termination of the
            connection.

            As an implementation-specific option, a RST segment may be
            sent from the managed node to the other TCP endpoint (note
            however that RST segments are not sent reliably)."                       �"The local IP address for this TCP connection.  In the case
            of a connection in the listen state which is willing to
            accept connections for any IP interface associated with the
            node, the value 0.0.0.0 is used."                       0"The local port number for this TCP connection."                       0"The remote IP address for this TCP connection."                       1"The remote port number for this TCP connection."                       W"The total number of segments received in error (e.g., bad
            TCP checksums)."                       :"The number of TCP segments sent containing the RST flag."                          