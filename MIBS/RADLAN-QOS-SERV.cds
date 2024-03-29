     &"Specifies one of the named tables Id"               #"Specifies one of service statuses"                                                                                     @"The MIB module describes the private MIB for QOS service mode." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "200602120000Z" "200310280024Z" 1"Editorial changes to support new MIB compilers." "Initial revision"       -- August 28, 2003
       y"This table specifies classification template information.
         Currently this table will contain exactly one entry."                       �"The entry of this table describes all classifier fields.
         The index is sequential integer represent by rlQosServTemplateEntry."                       ,"An arbitrary index for the template table."                       ="Include the destination Mac field as a template classifier."                       �"Destination Mac address mask. It may specify any byte (not bit),
         within the Mac address, for classification, designated by 0."                     !--    DEFVAL { '000000000000'H }
 8"Include the source Mac field as a template classifier."                       �"Source Mac address mask. It may specify any byte (not bit),
         within the Mac address, for classification, designated by 0."                     !--    DEFVAL { '000000000000'H }
 2"Include the Vlan field as a template classifier."                       <"Include the destination Ip field as a template classifier."                       �"Destination Ip address mask. It may specify any byte (not bit),
         within the Ip address, for classification, designated by 0."                       7"Include the source Ip field as a template classifier."                       �"Source Ip address mask. It may specify any byte (not bit),
         within the Ip address, for classification, designated by 0."                       9"Include the Ip protocol field as a template classifier."                       A"Include the Tcp/Udp source port field as a template classifier."                       F"Include the Tcp/Udp destination port field as a template classifier."                       1"Include the Tos field as a template classifier."                       1"Include the VPT field as a template classifier."                       8"Include the Ether Type field as a template classifier."                       F"Include the Tcp flags (Control Bits) field as a template classifier."                       7"Include the Icmp type field as a template classifier."                       7"Include the Icmp code field as a template classifier."                       7"Include the Igmp type field as a template classifier."                       ,"This table specifies FCL table information"                      C"Each entry in this table describes one Flow Classification List with
         It's Flow Classification Element.
         The information includes the FCL index and reference to a FCE index.
         The indices are the Fcl index represent by rlQosServFclIndex and the
         Fce index represent by rlQosServFclFceIndex."                       ="An arbitrary index for the FCL table. Value '0' is invalid."                       %"Priority of the FCE within the FCL."                       "A reference to the FCE index."                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       ,"This table specifies FCE table information"                      �"Each entry in this table describes one Flow Classifier Element.
         The information includes ACE index and a combination of all the other
         classifications, as depicted in the selection field.
         Classifiers are Mac and Ip source and destination addresses, Vlan,
         Ip protocol, TCP & UDP source and destination ports, Dscp and Ip
         precedence values.
         The index is a sequential integer represent by rlQosServFceIndex."                       3"An arbitrary incremental Index for the Fce table."                       "Fce error code."                       )"Flow Classification Elements selection."                       8"Indicates the destination Mac address to compare with."                     !--    DEFVAL { '000000000000'H }
 z"Indicates the destination Mac address mask to compare with.
         It may specify any byte (not bit), designated by 0."                     !--    DEFVAL { '000000000000'H }
 3"Indicates the source Mac address to compare with."                     !--    DEFVAL { '000000000000'H }
 p"Indicates the source Mac address mask to compare.
         It may specify any byte (not bit), designated by 0."                     !--    DEFVAL { '000000000000'H }
 %"Indicates the Vlan to compare with."                       f"Indicates 12-bits Vlan bits to compare.
         It may specify any byte (not bit), designated by 0."                       7"Indicates the destination Ip address to compare with."                       t"Indicates the destination Ip address mask to compare.
         It may specify any byte (not bit), designated by 0."                       2"Indicates the source Ip address to compare with."                       o"Indicates the source Ip address mask to compare.
         It may specify any byte (not bit), designated by 0."                       ,"Indicates the Ip protocol to compare with."                       9"Indicates the TCP/UDP destination port to compare with."                       z"Indicates 16-bits TCP/UDP destination port bits to compare.
         It may specify any byte (not bit), designated by 0."                       4"Indicates the TCP/UDP source port to compare with."                       u"Indicates 16-bits TCP/UDP source port bits to compare.
         It may specify any byte (not bit), designated by 0."                       8"Indicates the Destination Mac address to compare with."                       ."Indicates the Ip precedence to compare with."                       $"Indicates the VPT to compare with."                       ["Indicates the VPT mask to compare with.
         It may specify any bit, designated by 0."                     --    DEFVAL { 0 }
 *"Indicate the Ether Type to compare with."                       0"Indicates the Tcp Flags field to compare with."                       0"Indicates the Tcp Flags field to compare with."                       *"Indicates the Icmp type to compare with."                       *"Indicates the Icmp code to compare with."                       *"Indicates the Igmp type to compare with."                       \"The status of this table entry.
        It is used to delete/Add an entry from this table."                       :"This table specifies (service) profile table information"                      "Each entry in this table describes one service profile element.
         The information includes: Profile name, type and various numeric
         parameters associated with the profile's service types.
         The index is sequential integer represent by rlQosServProfileIndex."                       +"An arbitrary index for the profile table."                       "Profile's type"                       "Profile's service type."                       F"Profile's Ingress Burst Size, used only by the 'rate limit' service."                       �"Profile's Max Bandwidth, used by the 'min delay', committed delay'
         'min max bandwidth' and committed Bound Bandwidth'services.
         Value 0 is used only as default value, and is invalid otherwise."                       �"Profile's Min Bandwidth, used only by the 'min max bandwidth'
         service.
         Value 0 is used only as default value, and is invalid otherwise."                       �"Profile's Max Delay, used only by the 'committed delay' service.
         Value 0 is used only as default value, and is invalid otherwise."                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       1"This table specifies service table information."                      �"Each entry in this table describes one service profile element.
        The information includes: service's index, priority, pointers to
        associated profile and Fcl, operational and administrative statuses,
        ingress and egress interface lists, and two operational parameter
        values associated with a service type, as defined in the profile table.
        The index is sequential integer represent by rlQosServServiceIndex."                       +"An arbitrary index for the service table."                       "Service's priority."                       $"Pointer to attached profile entry."                        "Pointer to attached FCL entry."                       <"Ingress interface list associated with this service entry."                       ;"Egress interface list associated with this service entry."                       B"Egress scaled interface list associated with this service entry."                      B"If the service type specified in a profile associated with this entry
         has a parameter, this object instance specifies the parameter's
         operative value.
         This value will be different from the value defined in the associated
         profile only in case of scaling out, otherwise value 0 is used."                       *"Operational value of the service status."                       -"Administrative value of the service status."                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       :"This table specifies service priority table information."                       �"Each entry in this table maps a priority to a service.
        The information includes: service's priority and the service index
        in the service table.
        The index is sequential integer represent by
        rlQosServServicePriorityIndex."                       "The service priority."                       W"The index of the service associated with this priority in the service
         table."                       :"This table specifies service priority table information."                      "Each entry in this table describes one service priority entry.
        The information includes: service's priority, a pointer to its
        corresponding index in the service table.
        The index is sequential integer represent by
        rlQosServServicePriorityIndex."                       �"Service type for the default mapping.
         'Trust DSCP' service type is absent since no default mapping
         is possible for it."                       ["DSCP default mapping value.
         A value of 64 means no DSCP default mapping is done."                       X"Vpt default mapping value.
         A value of 9 means no VPT default mapping is done."                       *"This table specifies scaling error table"                       i"Each entry in this table specifies for each interface its scaling
        error, if such indeed exists."                       "The interface index."                       "Scaling error reason."                      j"The table is used to get free indices of tables to create
         new entries, and next free priorities.
         The algorithm for free indexes depends on table types:
         Fcl table        - first free index.
         Fce table        - first free index.
         Service table    - first free index.
         Service priority - last used priority + priority-delta.

         The priority-delta is used to supply QoS MIB user easy new priority
         insert entry capabilities.
         Values of these deltas depend on the MIB implementation.
         The 'Get and Increment' approach is used in all cases."                       ;"The entry is used to get free index for particular table."                       ^"Identification of the sequential, for which free indices or priority
         are retrieved."                       i"The free index for the table or service priority.
         Returned '0' means no free entries/priority."                       C"The table is used to get specific table(s) indices from the name."                       E"The entry is used to get index form particular name and table type."                       @"Identification of the table, for which the index is retrieved."                       "Name of the table's entry"                       /"The index of the table. Value '0' is invalid."                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       �"The table is used to get specific table(s) name from indices.
         It is a read-write table for internal (CDB) purpose only and is not to
         set by outside users."                       E"The entry is used to get name form particular index and table type."                       ?"Identification of the table, for which the name is retrieved."                       /"The index of the table. Value '0' is invalid."                       "Name of the table's entry"                       V"MIB's version, the current version is 1.
         1 - original version.
         2- "                       2"Actions to be performed by QoS service mode MIB."                              