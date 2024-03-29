                                                   ."A table containing TCP sessions information."                       ""                       2"The type of the rlTcpSessionLocalAddress address"                       �"The local IP address for this TCP connection.  In the case
         of a connection in the listen state which is willing to
         accept connections for any IP interface associated with the
         node, the value 0.0.0.0 is used."                       0"The local port number for this TCP connection."                       0"The type of the rlTcpSessionRemAddress address"                       0"The remote IP address for this TCP connection."                       1"The remote port number for this TCP connection."                      2"The state of this TCP connection.

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
            however that RST segments are not sent reliably)."                       6"The name of the application for this TCP connection."                          