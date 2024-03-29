                                           6"This private MIB module defines telnet private MIBs." W"5488 Marvell Lane
					Santa Clara, CA 95054
					USA

					Website:  www.marvell.com" "200811240000Z" "Initial revision."               *"MIB's version, the current version is 1."                       "Telnet Password"                       t"The number of minutes after which the TCP connection is closed
         if no activity is detected from the Client"                       ;"This table hold information about current telnet sessions"                       $"The row definition for this table."                       "Telnet Session ID"                       )"Telnet Session Client Inet address type"                       $"Telnet Session Client Inet address"                       ""Telnet Session Login Time string"                       �"Telnet Session status. After status has been set to diconnect the
         sessions is closed and the matching entry is deleted from the table."                       �"Telnet Login Banner. When telnet connection is established,
         the banner is the concatanation of this MIB and rlTelnetSecondLoginBanner."                       �"Telnet Login Banner Extension. When telnet connection is established,
         the banner is the concatanation of rlTelnetLoginBanner and this MIB"                       ?"<ip telnet server> command added. Communication via this MIB."                              