                               2"The MIB module for managing UDP implementations." �"        Keith McCloghrie

             Postal: Cisco Systems, Inc.
                     170 West Tasman Drive
                     San Jose, CA  95134-1706
                     US

             Phone:  +1 408 526 5260
             Email:  kzm@cisco.com" "9103310000Z" J"The initial revision of this MIB module was part of MIB-
            II."                       O"The compliance statement for SNMPv2 entities which
            implement UDP."                   P"The udp group of objects providing for management of UDP
            entities."                     ;"The total number of UDP datagrams delivered to UDP users."                       t"The total number of received UDP datagrams for which there
            was no application at the destination port."                       �"The number of received UDP datagrams that could not be
            delivered for reasons other than the lack of an application
            at the destination port."                       :"The total number of UDP datagrams sent from this entity."                       ."A table containing UDP listener information."                       6"Information about a particular current UDP listener."                       �"The local IP address for this UDP listener.  In the case of
            a UDP listener which is willing to accept datagrams for any
            IP interface associated with the node, the value 0.0.0.0 is
            used."                       ."The local port number for this UDP listener."                          