                                           4"The private MIB module definition for RND UDP MIB." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "200406010000Z" "Initial version of this MIB."               ;"This table contains the udp relay configuration per port."                       %" The row definition for this table."                       0"The UDP port number in the UDP message header."                       �"The source interface IP that receives UDP message.
         255.255.255.255 from all IP interface.
         0.0.0.0 - 0.255.255.255 and 127.0.0.0 - 127.255.255.255
         not relevant addresses."                     "--    DEFVAL  { 255.255.255.255 }
 �"The destination IP address the UDP message will be forward.
         0.0.0.0 does not forward, 255.255.255.255 broadcasts to all
         addresses."                     "--    DEFVAL  { 255.255.255.255 }
 U"The status of a table entry.
        It is used to delete an entry from this table."                       2"The information used for implementation purposes"                       ("Mib version. The current version is 1."                       2"This table contains the udp sessions information"                       %" The row definition for this table."                       2"The type of the rlUdpSessionLocalAddress address"                       "The UDP port session number."                        "The UDP port local IP address."                       C"The instance ID for the application on the port (for future use)."                       7"The name of the application that created the session."                              