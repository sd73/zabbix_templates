                           6"This private MIB module defines boot p private MIBs." W"5488 Marvell Lane
					Santa Clara, CA 95054
					USA

					Website:  www.marvell.com" "200701020000Z" "Initial revision."               " The IPAddress of the BOOTP server. the OpenGate will act as a BootP relay if
       this parameter is not equale to 0.0.0.0."                       �"BootP requests are relayed only if their SEC field is greater or
        equal to the threshold value in order to allow local BootP Servers
        to answer first."                       l" The (conceptual) table mentione IP address which must be
              released/renewed on the interface."                       3"An entry (conceptual row) in rndBootPActionTable."                       g" The interface which the action is implemented for
        or NULL if it implemented for all device. "                       �"The status of this entry.  Creating the entry renewing Bootp
              address on the interface; destroying the entry release Bootp
              address on the interface."                       0" This option specifies the name of the client."                              