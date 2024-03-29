                           D"This private MIB module defines Switching Parameters private MIBs." W"5488 Marvell Lane
					Santa Clara, CA 95054
					USA

					Website:  www.marvell.com" "200701020000Z" "Initial revision."               *"MIB's version, the current version is 2."                       7"Maximum number of MAC Tables supported by the device."                       @"Specifies whether the device supports port dynamic MAC tables."                      �"The method used to delete old unused entries
         refresh_flag:
            The high level sets a flag when it adds or updates an entry,
            the Switch clears the flag each time, when it learns the
            station once more.
        aging_flag:
            The high level clears a flag when it adds or updates an entry,
            the Switch sets the flag each time, when it learns the station
            once more.
        aging_time:
            The high level defines a timeout, the Switch sends a message
            to the high level each time when the station doesn't send
            messages during interval between timeout and 2*timeout.
        Boundaries:
            The Switch doesn't support any mechanism, and the high level
            uses two boundaries: red and yellow. When the number of entries
            exceeds the red boundary, the high level deletes the oldest entries."                       H"Specifies whether the device supports port the Spanning Tree Protocol."                       �"Specified the used MAC Address Table kye format:
         macOnly:
            One global MAC Address Table per device (leaky VLANs).
         tagAndMac:
            MAC Address Table per each VLAN (strick VLANs)."                       "The yellow boundary."                       "The yellow boundary."                       u"This variable indicates whether to create a SNMP trap
         if adding dynamic mac failed due to full hash chain."                       �"This variable indicates the trap counter status
         (i.e. number of received MAC addresses since the last trap
         sent that haven't been inserted into the hash).
         It is relevant only when trap is enabled."                       �"This variable indicates the minimal frequency (in seconds)
         of sending a trap.
         It is relevant only when trap is enabled."           --    UNITS    "seconds"
                  