     W"Type of Dynamic IPM FDB command:
         Create Entry, Delete Entry, Set ports Pset."               '"Values of Vidx. 0 means no free Vidx."                                     ~"The MIB module describes the private MIB for Multicast Bridge
               supported by Marvell MTS software and products." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "201304010000Z" "Added MODULE-IDENTITY"       -- April 1, 2013
       `"MIB's version, the current version is 4.
         Snooping supports IGMPv1/v2/v3 and MLDv1/v2."                       ]"A table containing filtering information for IP Multicast
         addresses for each VLAN."                       �"Filtering information configured into the device.
         The set of ports to which frames containing this IP
         Multicast destination address and IP source address
         are allowed to be forwarded."                       2"The VLAN tag for which this entry is configured."                       J"The multicast group address for which the filtering information applies "                       H"The unicast group address for which the filtering information applies."                       ,"The ports the data should be forwarded to "                       �"The ports that overrides dynamic configuration and
          prevents multicast data forwarding for the group or
          group and source to these ports."                       A"The status of the table entry. It's used to add/delete an entry"                       a"A table containing all filtering information for IP
         Multicast addresses for each VLAN "                       a"An entry (conceptual row) in the rlBrgIpMulticastTable
         contains IP Multicast FDB data "                       2"The VLAN tag for which this entry is configured."                       ?"Multicast group address (destination address) of data frames "                       ("Unicast source address of data frames."                      ;"The complete set of ports, in this VLAN, to which frames
         destined for this Group IP address or Group and Source
         address are currently being explicitly forwarded.  This
         does not include ports for which this address is only implicitly
         forwarded, in the dot1qForwardAllPorts list."                       �"The subset of ports in rlBrgIpMulticastEgressPorts which
         were learnt by IGMP or some other dynamic mechanism,
         in this Filtering database.."                       m"A table containing filtering information for INET (Pv4 and IPv6)
        Multicast addresses for each VLAN."                       �"Filtering information configured into the device.
         The set of ports to which frames containing this IP
         Multicast destination address and IP source address
         are allowed to be forwarded."                       2"The VLAN tag for which this entry is configured."                       "Inet type ipv6/ipv4."                       J"The multicast group address for which the filtering information applies "                       "Inet type ipv6/ipv4."                       H"The unicast group address for which the filtering information applies."                       ,"The ports the data should be forwarded to "                       �"The ports that overrides dynamic configuration and
          prevents multicast data forwarding for the group or
          group and source to these ports."                       A"The status of the table entry. It's used to add/delete an entry"                       a"A table containing all filtering information for IP
         Multicast addresses for each VLAN "                       c"An entry (conceptual row) in the rlBrgInetMulticastTable
         contains IP Multicast FDB data "                       2"The VLAN tag for which this entry is configured."                       "Inet type IPv4/IPv6."                       ?"Multicast group address (destination address) of data frames "                       "Inet type IPv4/IPv6."                       ("Unicast source address of data frames."                      ;"The complete set of ports, in this VLAN, to which frames
         destined for this Group IP address or Group and Source
         address are currently being explicitly forwarded.  This
         does not include ports for which this address is only implicitly
         forwarded, in the dot1qForwardAllPorts list."                       �"The subset of ports in rlBrgIpMulticastEgressPorts which
         were learnt by IGMP or some other dynamic mechanism,
         in this Filtering database.."                       \"A table containing all information stored in
         IPM FDB overlapping Reference Table "                       n"An entry (conceptual row) in the rlBrgIpmFdbRefTable
         contains overlapping Reference Table FDB data "                       2"The VLAN tag for which this entry is configured."                       ?"Multicast group address (destination address) of data frames "                       ?"Multicast group address (destination address) of data frames "                       ("Unicast source address of data frames."                       ("Unicast source address of data frames."                       R"The list of ports represented in IPM FDB overlapping
            Reference Table"                       �"The (conceptual) table for Dynamic IPM FDB command. For debugging purposes
        only. This MIB is prohibited to be used with working IGMP/MLD snooping"                       8"An entry (conceptual row) in the rlBrgDynamicCmdTable."                       '"Key of the rlBrgDynamicCmdTable table"                       2"The VLAN tag for which this entry is configured."                       ?"Multicast group address (destination address) of data frames "                       ?"Multicast group address (destination address) of data frames "                       ("Unicast source address of data frames."                       ("Unicast source address of data frames."                       2"The list of ports for them the command is issued"                       "Current type of command"                           L"A table containing entries of User Assigned Vidx configuration information"                       7"A table entry of User Assigned Vidx information table"                       #"Vidx index. Values from 4K to 32K"                       '"List of ports that belong to the Vidx"                       1"This object indicates the status of this entry."                       9"Returns the next free Vidx index. Values from 4K to 32K"                       &"Current number of multicast entries."                              