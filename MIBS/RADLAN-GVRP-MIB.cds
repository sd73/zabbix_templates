                                           4"This private MIB module defines GVRP private MIBs." W"5488 Marvell Lane
					Santa Clara, CA 95054
					USA

					Website:  www.marvell.com" "200701020000Z" "Initial revision."               a"A table of GVRP timer values for every bridge
         port.  This is indexed by dot1dBasePort."                       &"GVRP timer values for a bridge port."                       &"The GVRP Join time, in centiseconds."                       '"The GVRP Leave time, in centiseconds."                       *"The GVRP LeaveAll time, in centiseconds."                       �"If enabled{1}, GVRP timer values for this port are
         determined by the values in this entry. Otherwise, they
         are determined by the values in dot1dPortGarpTable."                       )"Is GVRP supported in this device or not"                       *"MIB's version, the current version is 3."                       f"A table of GVRP statistics values for every bridge
         port.  This is indexed by dot1dBasePort."                       +"GVRP statistics values for a bridge port."                       U"The number of Join Empty  Received  on the port,
         since the last clearance."                       R"The number of Join In  Received  on the port,
         since the last clearance."                       P"The number of Empty  Received  on the port,
         since the last clearance."                       Q"The number of Leave In Received on the port,
         since the last clearance."                       T"The number of Leave Empty Received on the port,
         since the last clearance."                       R"The number of Leave All Received on the port,
         since the last clearance."                       O"The number of Join Empty Sent on the port,
         since the last clearance."                       L"The number of Join In Sent on the port,
         since the last clearance."                       J"The number of Empty Sent on the port,
         since the last clearance."                       M"The number of Leave In Sent on the port,
         since the last clearance."                       P"The number of Leave Empty Sent on the port,
         since the last clearance."                       N"The number of Leave All Sent on the port,
         since the last clearance."                      p"activate - the signal/trigger to clear ALL
                    the rlPortGvrpStatisticsEntry's fields.
         passive  - specify that the rlPortGvrpStatisticsClear field is not
                    activate, or finshed the clearnce process.
                    the rlPortGvrpStatisticsClear return automatically to
                    passive after it was activate."                       k"A table of GVRP ErrorStatistics values for every bridge
         port.  This is indexed by dot1dBasePort."                       0"GVRP ErrorStatistics values for a bridge port."                       e"The number of Invalid Protocol Id encountered by
         the GVRP port. (since the last clearance)"                       h"The number of Invalid Attribute Type encountered by
         the GVRP port. (since the last clearance)"                       i"The number of Invalid Attribute Value encountered by
         the GVRP port. (since the last clearance)"                       d"The number of Invalid PDU Length encountered by
         the GVRP port. (since the last clearance)"                       j"The number of Invalid Attribute Length encountered by
         the GVRP port. (since the last clearance)"                       _"The number of Invalid Event encountered by
         the GVRP port. (since the last clearance)"                      "activate - the signal/trigger to clear ALL
                    the rlPortGvrpErrorStatisticsEntry's fields.
         passive  - specify that the rlPortGvrpErrorStatisticsClear field is not
                    activate, or finshed the clearnce process.
                    the rlPortGvrpErrorStatisticsClear return automatically to
                    passive after it was activate."                       l"A table of GVRP Applicant Status values for every bridge
         port.  This is indexed by dot1dBasePort."                       0"GVRP Applicant Status value for a bridge port."                       �"participant -  the Gvrp enabled port sending GARP PDUs.
         nonParticipant - preventing the Gvrp enabled port from sending GARP PDUs."                       m"A table of GVRP Registration Mode values for every bridge
         port.  This is indexed by dot1dBasePort."                       2"GVRP  Registration Mode value for a bridge port."                       �"true -  deregisters all VLANS on the specified port and prevents any
                 VLAN creation or registration on that port.
         false - the registration operation on this port behaves normally."                                  