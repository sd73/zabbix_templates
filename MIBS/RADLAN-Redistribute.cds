     "Destination Protocol"               �"Match Type
                 Bit Map that defines the criteria by which OSPF routes are redistributed into other routing domains."               "Metric Type"               c"Source Protocol
                 this defines the list of sources that redistribute their routes "                                                                                �"Using a routing protocol to advertise routes that are learned by some other means,
                 such as by another routing protocol, static routes, or directly connected routes, is called redistribution.
                 This table is used to configure under which conditions will redistribution occur
                 and which actions (if any) should be done on redistributed route."                       "."                       2"The protocol to which the routes are exported to"                       6"The protocol from which the routes are imported from"                       �"Parameter semantic differs according to rlRedistDstProtocol.
                in OSPF this is an appropriate OSPF process ID to which routes are to be redistributed"                      7"Parameter semantic differs according to rlRedistSrcProtocol.
                 in BGP and EIGRP keyword, this is an autonomous system number, in range 1 to 65535..
                 in OSPF, this is an appropriate OSPF process ID from which routes are to be redistributed.
                 0 means no process ID"                      a"Applicable only when rlRedistSrcProtocol is OSPF
                defines the criteria by which OSPF routes are redistributed into other routing domains.
                It can be one of the following:
                rlRedistMatchTypeInternal    - Routes that are internal to a specific autonomous system.
                rlRedistMatchTypeExternalTwo - Routes that are external to the autonomous system, but are imported into OSPF as Type 2 external route.
                rlRedistMatchTypeExternalOne - Routes that are external to the autonomous system, but are imported into OSPF as Type 1 external route."                      J"Specifies the route map that should be interrogated to filter the importation of routes
                 from this source routing protocol to the current routing protocol.
                 If not specified, all routes are redistributed. If this keyword is specified, but no route map tags are listed, no routes will be imported."                       �"Autonomous system number for the redistributed route. Number in range from 1 to 65535.
                 0 means no AS number defined"                       1"Redistribute routes without changing the metric"                      O"When redistributing from one OSPF process to another OSPF process on the same router,
                 the metric will be carried through from one process to the other if no metric value is specified.
                 When redistributing other processes to an OSPF process, the default metric is 20 when no metric value is specified."                      G"Parameter semantic differs according to rlRedistSrcProtocol.
                 In OSPF specifies the external link type associated with the default route advertised into the OSPF routing domain.
                 It can be one of two values:
                 1 - Type 1 external route
                 2 - Type 2 external route"                       ]"For redistributing routes into OSPF, the scope of redistribution for the specified protocol"                       F"Sets the nssa-only attribute for all routes redistributed into OSPF."                       "Row Status"                      u"Specifies the name of a Standard IP Access List that should be interrogated to filter the importation of routes
                 from this source routing protocol to the current routing protocol.
                 If not specified, all routes are redistributed. If the name is specified but,
                 list with this name is not defined, no routes will be imported."                      