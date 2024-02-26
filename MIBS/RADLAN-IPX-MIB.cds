                                                   1"The table of RIP global filters per IPX router."                       +" An entry in the RIP global filter table "                       !" Type of filter - input/output "                       " Number of RIP filter. "                       �" The validity of this entry. An entry with this value set
   to invalid  may be deleted from the table with IPX
   implementation's discretion."                       L"Number of filtered network. Value 0xFFFFFFFF  applies for
   any network. "                       "Network mask"                       /" Filter action - permit/deny for this network"                       A"Table of input/output  RIP filters used per IPX circuit number."                       +" An entry in the Circuit RIP filter table"                       o" The Interface identifier for this filter. This value
   correspond to rndIPXIfIndex or ipxCircIndex for ET16"                       !" Type of filter - input/output "                       (" Number of RIP filter for this circuit"                       �" The validity of this entry. An entry with this value set
   to invalid  may be deleted from the table with IPX
   implementation's discretion."                       K"Number of filtered network. Value 0xFFFFFFFF applies for
   any network. "                       "Network mask"                       " Filter action - permit/deny "                           5"The table of SAP global filter susedper IPX router."                       )"An entry in the SAP global filter table"                       "Type of filter-input/output"                       "Number of SAP filter."                       �"The validity of this entry. An entry with this value set
       to invalid may be deleted from the table with IPX
       implementation's discretion."                       Z"Number network of the filter edservice. Value
       0xFFFFFFFF applies for any network."                       "Network mask"                       u"The type of the service which may be filtered ;value0xFFFF
       applies for all types of service and it's default"                       d"The name of the service which may be filtered; wild
      cardas * may be used in end of the name."                       ,"Filter mode - permit/deny for this service"                       ?"Table of input/output SAP filter susedper IPX circuit number."                       *"An entry in the Circuit SAP filter table"                       q"The Interface identifier for this filter.  This value
      correspondtornd IPXIfIndex or ipxCircIndex for ET16"                       "Type of filter-input/output"                       F"Number of SAP filter. Th is value correspondto rndIPXSapFilterNumber"                       �"The validity of this entry. An entry with this value set
      to invalid may be deleted from the table with IPX implementation's discretion."                       Z"Number network of the filtered service. Value
      0xFFFFFFFF  applies for any network."                       "Network mask"                       v"The type of the service which may be filtered; value 0xFFFF
       applies for all types of service and it's default"                       f"The name of the service which may be filtered; wild
       cardas * may be used i n end of the name."                       "Filter mode-permit/deny"                           +"The IPX System table - basic information."                       V"Each entry corresponds to one instance of IPX running
                on the system."                       �"The unique identifier of the instance of IPX to which this
                row corresponds.  This value may be written only when
                creating a new entry in the table."                       �"The validity of this entry in the IPX system table.
                Setting this field to off indicates that this entry may be
                deleted from the system table at the IPX implementation's
                discretion."                       ^"The total number of IPX packets received, including
                those received in error."                       �"The number of IPX packets discarded due to errors in
                their headers, including any IPX packet with a size less
                than the minimum of 30 bytes."                       b"The number of IPX packets discarded because the
                destination socket was not open."                       �"The number of IPX packets received but discarded due to
                reasons other than those accounted for by
                ipxBasicSysInHdrErrors, ipxBasicSysInUnknownSockets,
                ipxAdvSysInDiscards, and ipxAdvSysInCompressDiscards."                       o"The total number of IPX packets delivered locally,
                including packets from local applications."                       J"The number of times no route to a destination was
                found."                       �"The number of IPX packets supplied locally for
                transmission, not including any packets counted in
                ipxAdvForwPackets."                       f"The number of IPX packets supplied locally that contained
                errors in their structure."                       �"The number of outgoing IPX packets discarded due to
                reasons other than those accounted for in
                ipxBasicSysOutMalformedRequests, ipxAdvSysOutFiltered,
                and ipxAdvSysOutCompressDiscards."                       ."The total number of IPX packets transmitted."                           "The Circuit table."                       L"Each entry corresponds to one circuit known to the
                system."                       �"The unique identifier of the instance of IPX
                to which this entry corresponds.  This value may be
                written only when creating a new entry in the table."                       �"The identifier of this circuit, unique within the
                instance of IPX.  This value may be written
                only when creating a new entry in the table."                       �"The validity of this circuit entry.  A circuit with this
                value set to off may be deleted from the table at the
                IPX implementation's discretion."                       '"The operational state of the circuit."                       �"The value of ifIndex for the interface used by this
                circuit.  This value may be written only when creating
                a new entry in the table."                       �"The IPX network number of this circuit.  This value may
                be written only when creating a new entry in the table."                       ["The time to net value associated with this interface, in
    term of 1/18ths of a second."                       ;" The encapsulation method associated with this interface."                       2" Deliver NetBios All Networks Broadcast Packets "                           Z"The Destination table contains information about all
                known destinations."                       ,"Each entry corresponds to one destination."                       ]"The unique identifier of the instance of IPX
                to which this row corresponds."                       ,"The IPX network number of the destination."                       R"The unique identifier of the circuit used to reach the
                next hop."                       ]"The routing protocol from which knowledge of this
                destination was obtained."                       /"The delay in ticks to reach this destination."                       8"The number of hops necessary to reach the destination."                       ""The NIC address of the next hop."                       )"The IPX network number of the next hop."                       �"The validity of this entry.  An entry with this
                value set to off may be deleted from the table at the
                IPX implementation's discretion."                           2"The table of services, indexed by name and type."                       ("Each entry corresponds to one service."                       _"The unique identifier of the instance of IPX
                to which this entry corresponds."                       "The service type."                       "The service name."                       Q"The protocol from which knowledge of this service was
                obtained."                       S"The IPX network number portion of the IPX address of the
                service."                       5"The node portion of the IPX address of the service."                       7"The socket portion of the IPX address of the service."                       $"The number of hops to the service."                       �"The validity of this entry.  An entry with this
                value set to off may be deleted from the table at the
                IPX implementation's discretion."                               "The RIP system table."                       V"Each entry corresponds to one instance of RIP
                running on the system."                      �"The unique identifier of the instance of RIP to
                which this row corresponds.  This value links the
                instance of RIP to an instance of IPX running on the
                system  (i.e. the value of ripSysInstance should be the
                same as a value of ipxSysInstance).  This value may be
                written only when creating a new entry in the table."                       :"Indicates the operational state of this instance of RIP."                       \"The number of times that an incorrectly formatted RIP
                packet was received."                       "The SAP system table."                       V"Each entry corresponds to one instance of SAP
                running on the system."                      �"The unique identifier of the instance of SAP to
                which this row corresponds.  This value links the
                instance of SAP to an instance of IPX running on the
                system  (i.e. the value of SApSysInstance should be the
                same as a value of ipxSysInstance).  This value may be
                written only when creating a new entry in the table."                       :"Indicates the operational state of this instance of SAP."                       \"The number of times that an incorrectly formatted SAP
                packet was received."                           "The RIP Circuit table."                       L"Each entry corresponds to one circuit known to the
                system."                       �"The unique identifier of the instance of RIP and IPX
                (via ipxSysInstance) to which this entry corresponds.
                This value may be written only when creating a new entry in
                the table."                      "The identifier of this circuit, unique within the
                instance of RIP.  This value corresponds to the circuit
                identifier found in ipxCircIndex.   This value may be
                written only when creating a new entry in the table."                       ["Indicates whether RIP information may be sent/received
                over this circuit."                       /"The RIP periodic update interval, in seconds."                       Z"The holding multiplier for information received in RIP
                periodic updates."                       1"The number of RIP packets sent on this circuit."                       5"The number of RIP packets received on this circuit."                       "The SAP Circuit table."                       L"Each entry corresponds to one circuit known to the
                system."                       �"The unique identifier of the instance of SAP and IPX
                (via ipxSysInstance) to which this entry corresponds.
                This value may be written only when creating a new entry in
                the table."                      "The identifier of this circuit, unique within the
                instance of SAP.  This value corresponds to the circuit
                identifier found in ipxCircIndex.   This value may be
                written only when creating a new entry in the table."                       ["Indicates whether SAP information may be sent/received
                over this circuit."                       /"The SAP periodic update interval, in seconds."                       Z"The holding multiplier for information received in SAP
                periodic updates."                       k"Indicates whether to respond to SAP get nearest server
                requests received on this circuit."                       1"The number of SAP packets sent on this circuit."                       5"The number of SAP packets received on this circuit."                              