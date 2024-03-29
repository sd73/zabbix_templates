                                                                   I"The ELTEX-VPC-MIB is used for management of the VPC(MLAG) configuration" "www.eltex-co.ru" "201809170000Z" $"Initial revision of ELTEX-VPC-MIB."                      �"To enable VPC globally. The VPC role election happens if both
                      the VPC feature is enabled and if the keepalive state machine is
                      enabled.
                      The following options are supported:

                      Note: VPC is supported only on standalone device. VPC is not supported on
                      stacked devices. VPC behavior is undefined if the device is stacked with
                      one another.
                     "                       "VPC domain config table."                       "VPC domain config entry."                       "VPC Domain ID."                       �"To configures a port channel as the VPC peer link.
                      The configurable range is a valid port channel interface index."                      �"To configure the priority of the VPC switch. This value is used
                      for the VPC role election.
                      Note: The VPC switch with lower priority becomes the Primary. If
                            both the VPC peer switches have the same role priority, the
                            device with lower system MAC address becomes the Primary.
                            "                      �"To configure the peer keepalive timeout value (in seconds). If
                      an VPC switch does not receive keepalive messages from the peer
                      for this timeout value, it takes the decision to transition its
                      role (if required).
                      Note: The keepalive state machine is not restarted if keepalive
                      priority is modified post election."                       o"To start/stop the keepalive state machine on the VPC device, if
                     VPC is globally enabled."                      "To configure the MAC address for the VPC domain. This mac-address 
                     is used in the LACP PDUs and STP BPDUs 
                     that are sent out on VPC member ports. For the VPC domain to use 
                     the manually configured VPC MAC address, it should be manually 
                     configured on both the VPC peers and should be the same. If VPC 
                     is configured on only one of the VPC peers or is configured 
                     different on VPC peers, auto-generated MAC address is used. 
                     The specified MAC address should be a unicast MAC address in 
                     <aa:bb:cc:dd:ee:ff> format and should not be equal to the 
                     MAC address of either primary VPC or secondary VPC device.  
                     The manually configured VPC MAC address is used instead of 
                     auto-generated VPC MAC address only if the VPC feature is 
                     re-enabled after configuring the VPC MAC address."                      j"To configure the system priority for the VPC domain. This is used 
                      in the STP BPDU sent out on VPC member ports. System-priority 
                      should be configured same on both the VPC peers. If the configured 
                      VPC system priority is different on VPC peers, then VPC will not 
                      come up."                      F"To start/stop the dual control peer detection protocol on the
                      VPC switch.
                      The following options are supported:

                      Note: The peer VPC switch's IP address has to be configured for
                            the peer detection protocol to start on an VPC switch."                       �"To configure the peer detection protocol transmission interval.
                     Configurable range is 200 to 4000 mseconds."                       "To configure the peer detection protocol reception timeout.
                     Configurable range is 700 to 14000 mseconds."                      �"To configure IP address of the peer VPC switch. This
                      configuration is used by the dual control plane detection
                      protocol on the VPC switches.

                      NOTE: In order to set value for the object, need to set values for 
                      IP address of the peer VPC switch and destination IP of the peer 
                      detection protocol message simultaneously."                      �"To configure Self IP address of the VPC switch that is used as
                      the source IP by the dual control plane detection protocol 
                      on the VPC switches.

                      NOTE: In order to set value for the object, need to set values for 
                      IP address of the peer VPC switch and destination IP of the peer 
                      detection protocol message simultaneously."                       z"To configure the UDP port on which the VPC switch listens to
                      the peer detection protocol messages."                       "Status of VPC Domain."                       "VPC group config table."                       "VPC status entry."                       "VPC group Index."                       %"VPC Domain Index uncluded Vpc Group"                       �"To configures a port channel as the VPC group member port.
                      The configurable range is a valid port channel interface index."                       "VPC operational status."                      �"The following states of a VPC port-channel interface mean:
                         DISABLE:  The state of a port-channel before VPC functionality is enabled on it.
                         WAIT:     The VPC port-channel 'waits' for the VPC functionality 
                                   to be enabled on a port-channel of the peer switch.
                         ERROR:    After VPC is enabled on a port-channel of both peer switches, 
                                   the DOT3AD component checks to see if all entry criteria are met 
                                   for the port-channel to be operational. 
                         ACTIVE:   If the entry criteria are satisfied, then the VPC interface is set 
                                   to ACTIVE and is operationally enabled. 
                                   Traffic is now allowed to flow through the VPC member ports.
                         INACTIVE: If links connected to the VPC member ports are down, 
                                   then the VPC interface is set to INACTIVE on the switch. 
                                   The VPC will remain ACTIVE on the peer switch."                       "Status of VPC Group."                           "VPC domain stats table."                       "VPC domain stats entry."                       "Number of VPC's configured."                       "Number of VPC's operational."                       "VPC role."                       "VPC operational mode."                      "The following states of a VPC mean:
                        DISABLE:   In this state, the VPC interfaces, if any are shut down.
                        LISTEN:    The keepalive does not advertise any packets.
                        READY:     The keepalive component starts sending keepalive messages periodically with the state as READY.
                        PRIMARY:   Traffic over VPC interfaces is allowed to be forwarded. 
                                   The keepalive protocol continues to advertise keepalive messages with the state as PRIMARY.
                        SECONDARY: Traffic over VPC interfaces is allowed to be forwarded. 
                                   The keepalive protocol continues to advertise keepalive messages with the state as SECONDARY."                       �"To operational the system priority for the VPC domain. This is used 
                      in the LACP PDUs sent out on VPC member ports."                       �"Operational MAC address for the VPC domain. This mac-address 
                     is used in the LACP PDUs and STP BPDUs that are sent out on 
                     VPC member ports."                       "Local system MAC."                       "Vpc peer role."                       "VPC peer role priority."                       &"VPC peer configured system priority."                       '"VPC peer operational system priority."                       ""VPC peer configured MAC address."                       #"VPC peer operational MAC address."                       "Peer local system MAC."                       O"Indicates if the VPC peer is detected over peer-link with keepalive protocol."                       "VPC peer detection status."                       R"Indicates if the VPC peer is detected over peer detection protocol (l3 network)."                       #"VPC domain KeepAlive stats table."                       ""VPC domain KeepAliveStats entry."                       !"VPC keepalive operational mode."                       "Total Packets transmitted"                       #"Successfully Transmitted Packets."                       "Transmit Failed Packets."                       "Total Packets Received."                        "Successfully Received Packets."                       )"Number of packets received with errors."                       "Timeout counter."                       ""VPC domain PeerLink stats table."                       ""VPC domain KeepAliveStats entry."                       "Peer link operational status."                       )"Peer link control messages transmitted."                       '"Peer link control messages Tx errors."                       ("Peer link control messages Tx timeout."                       -"Peer link control messages ACK transmitted."                       +"Peer link control messages ACK Tx errors."                       &"Peer link control messages received."                       &"Peer link data messages transmitted."                       $"Peer link data messages Tx errors."                       %"Peer link data messages Tx timeout."                       #"Peer link data messages received."                       '"Peer link BPDU's transmitted to peer."                       "Peer link BPDU's Tx errors."                       &"Peer link BPDU's received from peer."                       "Peer link BPDU's Rx errors."                       )"Peer link LACPDU's tranmsitted to peer."                       "Peer link LACPDU's Tx errors."                       5"Peer link MAC-address data base received from peer."                       "Peer link LACPDU's Rx errors."                       6"Peer link MAC-address data base tranmsitted to peer."                       -"Peer link MAC-address data base Tx timeout."                       ,"Peer link MAC-address data base Tx errors."                       5"Peer link MAC-address data base received from peer."                       ,"Peer link MAC-address data base Rx errors."                       6"VPC domain peer detection protocol statistics table."                       +"VPC domain peer detection protocol entry."                       ,"Number of peer detection protocol enabled."                       3"Number of peer detection protocol enabled errors."                       -"Number of peer detection protocol disabled."                       ""Number of peer timeout detected."                       3"Number of peer detection protocol admin disabled."                       &"Peer detection messages transmitted."                       -"Peer detection messages transmitted errors."                       2"Peer detection fast detect messages transmitted."                       6"Peer detection fast detect ack messages transmitted."                       #"Peer detection messages received."                       *"Peer detection messages received errors."                       /"Peer detection fast detect messages received."                       3"Peer detection fast detect ack messages received."                        "VPC member ports status table."                       "VPC member port status entry."                       "VPC Group Index."                       "Interface Index."                       #"VPC self member interface status."                       #"VPC peer member interface status."                          