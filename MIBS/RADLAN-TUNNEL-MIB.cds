                               2"The private MIB module definition for Tunneling." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "201205210000Z" "Initial revision."               "The ISATAP status."                       p"specifies how many DNS Querys and Router Solicitations
         should be sent to get the corresponding reply."           --  UNITS   "seconds"
           "The domain name for ISATAP."                       {"specifies the time interval between sending of
         DNS Queries before receiving the first reply from the DNS Server."           --  UNITS   "seconds"
           �"specifies the time interval between sending of Router
         Solicitations before receiving the first reply from the ISATAP Router."           --  UNITS   "seconds"
           w"specifies the minimum time interval between between successive queries
         of same advertising ISATAP interface."           --  UNITS   "seconds"
           p"specifies the minimum time between successive solicitations of the
         same advertising ISATAP interface."           --  UNITS   "seconds"
           ."specifies the IPv4 address of ISATAP Router."                       ^"specifies the IPv4 address currently used as IPv4 source address
         for ISATAP Tunnel."                           �"This table is parallel to tunnelIfTable, and is used to
            add/delete tunnel entries to/from that table.
            In addition it contains private objects."                       ="Additional configuration parameters for a tunnel interface."                       v"The encapsulation method used by the tunnel.
                This field added since it is read-only in standard MIB."                       �"Defines the method of obtaining Local address for
         the tunnel interface.
         Configured - configured by user.
         Automatic - minimum IP address of the device.
         Interface - minimum IP address on user specified interface."                       �"Interface ID, used to determine Local address for tunnel interface
            if rlTunnelIfLocalAddressSource set to interface."                       e"Specifies the IPv4 address currently used as IPv4 Local address
         for IPv6 over IPv4 Tunnel."                       o"The status of this row, by which new entries may be
         created, or old entries deleted from this table."                               4"This table contains ISATAP-specific configuration."                       ="Additional configuration parameters for a tunnel interface."                       "DNS name."                       o"The status of this row, by which new entries may be
         created, or old entries deleted from this table."                       4"This table contains ISATAP-specific configuration."                       ="Additional configuration parameters for a tunnel interface."                       ="The index of the interface to which this PRL entry belongs."                       ;"The priority of the entry. Lower value - higher priority."                       '"IPv4 address of the potential router."                       D"Whether the PRL entry is active (meaning it has an up to date RA)."                       ~"Specifies the time interval between Router Solicitations prior to
         receiving the first reply from the ISATAP router."           --  UNITS   "seconds"
           �"After a Router Advertisement was received, Router Solicitation
         messages are sent every Lifetime / (1 + Robustness) seconds, where
         Lifetime is the Lifetime advertised in the RA."                       �"Used to indicate end of snmp configuration for IPv6. Can be removed,
         if mechanism for indicating end config per mib is added to SNMP."                                  