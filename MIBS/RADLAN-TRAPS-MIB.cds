           A"This private MIB module defines Marvell's private notifications" W"5488 Marvell Lane
					Santa Clara, CA 95054
					USA

					Website:  www.marvell.com" "201006250000Z" "Initial revision."               �"An RX buffer overflow has occurred in one of the LAN or link
         interfaces. The bound variable rndErrorDesc provides the
         interface number."                 �"Interport queue overflow has occurred in one of the LAN or link interfaces.
         The bound variable rndErrorDesc provides the interface number."                 }"An overflow condition has occurred in the Routing Table. The Routing
         Table is used for IP routing algorithm (RIP)."                1"This trap indicates that in order to perform the last SET request, a reset operation
         of the router/bridge is required. This occurs when the layer 2 routing algorithm is
         changed between SPF and Spanning Tree. The reset can be performed manually or
         using the variable rndAction."                 �"This trap indicates that in the device finished a TFTP
         transaction with the management station.
         variable rndErrorDesc and rndErrorSeverity provides the actual message
         text and severity respectively."                 �"This trap indicates that in the device aborted a TFTP session with
        the management station. Variable rndErrorDesc  and rndErrorSeverity
        provides the actual  message text  and severity  respectively."                 �"Informational trap indicating that the device has intiated a
         TFTP session. rndErrorDesc will contain the file type in
         question"                 B"Automantic switchover to backup link because of main link fault."                 '"Communication returened to main link."                 �"This trap indicates that in an OpenGate IPX RIP table overflow.
         The bound variable rndErrorDesc, rndErrorSeverity
         provides the actual  message text and severity respectively."                 �"This trap indicates that in an OpenGate IPX SAP table overflow.
         The bound variable rndErrorDesc, rndErrorSeverity
         provides the actual  message text and severity respectively."                 �"This trap indicates that message that fits FACS statenebt with
         operation blockAndReport was forward to the interface. The bound
         variable rndErrorDesc, rndErrorSeverity(== info ) and
         interface Number."                 �"This trap indicates that auto comfiguration completetd succssefully.
         The bound variable rndErrorDesc, rndErrorSeverity(== info )"                 �"This trap indicates that an overflow condition has occurred in the
         layer II Forward Table.
         The bound variable rndErrorDesc, rndErrorSeverity(== warning )"                 �"This trap indicates that a connection establish between the Frame
         relay Switch and the WanGate.
         The bound variable rndErrorDesc, rndErrorSeverity(== warning )"                 �"This trap indicates that a connection between the Frame Relay Switch
         and the WanGate failed.
         The bound variable rndErrorDesc, rndErrorSeverity(== warning )"                 �"This trap indicates that the an error occured during initialization
         The bound variable rndErrorDesc, rndErrorSeverity(== error )"                 ""                 ""                 I"This warning is generated when an overflow occurs in the clients table."                 }"This warning is generated when a server does not respond to the dispatchers polling
         and is thought to be inactive."                 <"The Zero Hop Routing connections Table has been overflown."                 �"The requested static connection was not accepted because there is
          no available IP virtual address to allocate to it."                 �"The virtual IP address appeared as a source IP.
          All the connections using it will be deleted and
          it will not be further allocated to new connections."                 �"The source IP address sent an ARP specifying a virtual IP
          which was not allocated for this source.
          This virtual IP will not be allocated to connections of this
          specific source IP."                 �"An incoming SNMP SET request was rejected because no such
          requests (except action requests) are accepted after start of
          new configuration reception or during sending the current
          configuration to an NMS."                T"A rsPingCompleted trap is sent at the completion
         of a sequence of pings if such a trap was requested
         when the sequence was initiated. The trap severity is info.
         The trap text will specify the following information:
         rsPingCompletionStatus, rsPingSentPackets, rsPingReceivedPackets
         In addition to the above listed objects (which are always present),
         the message will also specify the following quantities:
         if any responses were received:
            rsPingMinReturnTime
            rsPingAvgReturnTime
            rsPingMaxReturnTime"                 �"This trap indicates that a PPP link got an unrecognized secret.
         The bound variables rndErrorDesc,
         rndErrorSeverity(== warning ), interface Number. and pppSecurityIdentity"                 ""                 ""                 ""                 {"Whenever main server fails and backup takes over or server comes
         up after failure a trap of this type is issued."                 �"DHCP failed to allocate an IP address to a requesting host
         because of memory shortage or inadequate configuration of
         available IP addresses."                 "The IP SFFT overflow."                 "The IP NFFT overflow."                 "The IPX SFFT overflow."                 "The IPX NFFT overflow."                 "The IPM FFT overflow."                 K"Indicates that the physical decription of the device has
         changed"                 �"The trap is sent by a bridge when any of its configured ports
         transitions from the Learning state to the Forwarding state."                 �"The trap is sent by a bridge when any of its configured ports
         transitions from the Forwarding state to the Blocking state."                 3"Indicates that the packet drop due to the policy "                 7"Indicates that the packet has forward based on policy"                 "An IGMP PROXY Table overflow."                 -"An IGMP Message of v1 received on ifIndex. "                 O"One or more VRRP entries deleted due to IP interface deletion or transition. "                 "Hot swap trap."                 ?"Informational trap indicating that a port is added to a trunk"                 ="This warning is generated when a port removed from a trunk."                 �"Informational trap indicating that a port can not be added to
         a trunk because of device limitations or diffrent swIfType."                 g"Informational trap indicating that a locked port receive
        a frame with new source Mac Address."                 "add gvrp dynamic vlan"                 "remove gvrp dynamic vlan"                 0"vlan status was changed from dynamic to static"                 0"vlan status was changed from static to dynamic"                 9"Master receive trap from slave , and forward it as trap"                Y"Trap indicating the fan state.
         rndErrorSeverity will be:
                0 for fan state  nomal, notPresent
                1 for fan state warning, notFunctioning
                2 for fan state critical
                3 for fan state fatal
         The error text will specify the fan index, fan description and the exact fan state"                �"Trap indicating the power supply state.
         rndErrorSeverity will be:
                0 for power supply state  nomal, notPresent
                1 for power supply state warning, notFunctioning
                2 for power supply state critical
                3 for power supply state fatal
         The error text will specify the power supply index, power supply description and the exact power supply state"                 �"Trap indicating the stack connection state
                0 for stack state connected,
                1 for stack state disconnected "                 z"Trap indicating that the temperature in the device has exceeded the
         device specific safe temperature threshold."                 a"Informational trap indicating that adding dynamic mac/s
         failed due to full hash chain."                 F"Informational trap indicating that port 802.1x status is authorized."                 E"Warning trap is indicating that port 802.1x status is unAuthorized."                 2"Warning trap is indicating port lock hase began."                 1"Warning trap is indicating port lock has ended."                 u"Warning trap indicating that the user was locked after
         number of consecutives unsuccessful login attempts."                 V"Warning trap indicating - Port was suspended because there was BPDU Guard violation."                 �"Informational trap indicating that MAC authentication supplicant
         is authenticated and is allowed to access the network."                 _"Warning trap is indicating that Radius server rejects
         MAC authentication supplicant."                 <"Warning trap indicating - A loopback was detected on port."                 B"Warning trap indicating - A loopback detection resolved on port."                 L"Warning trap indicating - A port has been suspended by Loopback Detection."                 I"Warning trap indicating - A port has been suspended by Any application."                 5"Warning trap indicating - Special BPDU DB Overflow."                 �"Warning trap is indicating that supplicant was logged out
         Since the port?Ws time-range state was changed to inactive."                 |"Warning trap is indicating that altough port?Ws time-range
         Is active now, it can not start working in mode auto."                 y"Warning trap indicating - Port has multiple LLDP remote link neighbours -
         EEE operational state will be FALSE."                 n"Warning trap indicating - Port has single LLDP remote link neighbour -
         EEE operational can be TRUE."                 Y"Warning trap is indicating that supplicant quiet period timeout
         is active now."                 x"Informational trap indicating that stack slave is upgrading
         to the image or boot version of the stack master."                 t"Warning trap indicating that stack slave is downgrading
         to the image or boot version of the stack master."                 Z"Informational trap indicating that port in PD does not meet the inrush-current standard."                 Y"Informational trap indicating that Port (x) requires more power than it should require."                 J"Informational trap indicating power negotiation resolved power in Watts."                 @"Informational trap indicating power negotiation 4-Wire status."                 5"Informational trap indicating power HW fail status."                 :"Informational trap indicating power negotiation expired."                 ["Warning trap indicating that port storm control rate limit is configured to minumum rate."                 I"Informational trap indicating about backplane ethernet port resolution."                 E"Informational trap indicating that gbic is now present on port (X)."                 M"Informational trap indicating that gbic is not present anymore on port (X)."                 @"Informational trap indicating that loss Diagnosed on port (X)."                 K"Informational trap indicating that loss isn't active anymore on port (X)."                 C"Warning trap indicating that port storm control occurs on a port."                 &"Radius server accounting event trap."                 2"Radius server authentication failure event trap."                 2"Radius server authentication success event trap."                 2"Trap indicating the redundant fan status change."                 Q"Informational trap indicating that 802.1x supplicant port status is authorized."                 M"Warning trap indicating that 802.1x supplicant port status is unAuthorized."                 N"Warning trap indicating that credential is changed, rejected or not updated."                 5"Informational trap indicating Non POE Detected unit"                 ""                 ""                 ="Informational trap indicating CPLD update FW is in progress"                 o"The trap is sent by a bridge when any of its configured ports
         transitions to new inconsistency mode."                 ~"The trap is sent by a bridge when any of its configured ports
         transitions from inconsistency mode to resolved mode."                 I"Warning trap indicating that non-compliant SFP is inserted on port (X)."                        