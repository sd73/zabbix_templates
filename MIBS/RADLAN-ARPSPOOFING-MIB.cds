                                           <"This private MIB module defines ARP spoofing private MIBs." W"5488 Marvell Lane
					Santa Clara, CA 95054
					USA

					Website:  www.marvell.com" "200701020000Z" "Initial revision."               *"MIB's version, the current version is 1."                       H"A list of the ifIndexes, IP addresses and corresponding MAC addresses."                       N"An entry of this table specifis ifIndex,IP Address and
         MAC address."                       C"The physical interface for which this entry contains information."                       D"Ip addres for which the device will send ARP reply (ARP spoofing)."                       �"MAC addres with which the device will send ARP reply.
        If the field is ommited or its value 0.0.0.0 the device will
        send with the interface's MAC address."                       p"Ip addres for which the device will send periodically ARP requests
         if its value differs from 0.0.0.0."                       �"The physical interface to which the device will send periodically
         ARP requests if its value differs from 0. If its value is 0 then ARP
         requests will send to all the VLAN's ports."                       1"It is used to insert, update or delete an entry"                              