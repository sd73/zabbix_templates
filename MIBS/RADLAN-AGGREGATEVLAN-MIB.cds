                                           >"This private MIB module defines Aggregate Vlan private MIBs." W"5488 Marvell Lane
					Santa Clara, CA 95054
					USA

					Website:  www.marvell.com" "200701020000Z" "Initial revision."               *"MIB's version, the current version is 1."                       @"The table creates an aggregateVlans, the IfIndex is from 10000"                       $"The row definition for this table."                       d"This index indicate the aggrigateVlan id, the aggregate
        vlan index is starting from 10000 "                        "The name of the aggregateVlan "                       �" This variable indicates whether the physical address assigned to this
          VLAN should be the default one or be chosen from the set of
          reserved physical addresses of the device."                       K"The status of the aggregateVlan table entry. It's used to delete an entry"                       �"The table indicates all the allocated sub-vlans to the
        aggregateVlans, an entry in the rlAggregateVlanTable must
        be exist before allocating the subVlans"                       $"The row definition for this table."                       ;"Indicate the subVlan that allocated to the aggregate vlan"                       V"The status of the aggregateSubVlan table entry.
        It's used to delete an entry"                      P"When ARP Proxy is enabled, the router can respond to
          ARP requests for nodes located on different sub-vlans,
          which belong to the same Super VLAN.The router responds
          with its own MAC address.
          When ARP Proxy is disabled, the router responds only
          to ARP requests for its own IP addresses."                              