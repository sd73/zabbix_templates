                           J"The private MIB module definition for Energy Efficient Ethernet feature." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "201005150000Z" ?"Add Energy Efficient Ethernet support per port and per system"     --  5-May-2010
         "Enable the EEE mode globally"                       "A table of EEE state of ports"                       &"An entry of EEE state of bridge port"                       "Enable/Disable EEE on ifindex"                       �"Bit map that indicates whether EEE supported on the phy of the ifindex per speed
         0 - speed 10m; 1 - 100m; 2 - 1g; 3 - 10g; 4 - 2.5g; 5 - 5g"                       E"Indicates whether EEE active on remote link on current port's speed"                      �"Indicates whether EEE active on ifindex - ifoper is up,
                                                   rlEeePortSupported BIT is on in current port speed
                                                   rlEeePortLldpRemoteStatus is true,
                                                   rlEeeEnable is true,
                                                   rlEeePortAdminStatus is true"                       "A table of EEE LLDP"                       "An entry of EEE LLDP"                       $"Enable/Disable EEE LLDP on ifindex"                      R"Indicates whether EEE LLDP active on ifindex - rlEeePortLldpAdminStatus is true
                                                        lldpPortConfigAdminStatus is txAndRx,
                                                        rlLldpEnabled is true,
                                                        recieve a synch lldp packet"                       "A table of EEE Local ports"                       "An entry of EEE Local port"                       R"Indicates the current Tw_sys_tx configured in the local system, in micro-seconds"                       V"Indicates the value of Tw_sys_tx that the local system can support, in micro-seconds"                       �"Indicates the remote system's Transmit Tw_sys_tx that was used by the local system
         to compute the Tw_sys_tx that it wants to request from the remote system, in micro-seconds"                       S"Indicates the current Tw_sys_tx configured by the remote system, in micro-seconds"                       s"Indicates the value of Tw_sys_tx that the local system requests from the remote system,
         in micro-seconds"                       �"Indicates the remote system Receive Tw_sys_tx that was used by the local system
         to compute the Tw_sys_tx that it can support, in micro-seconds"                       "A table of EEE remote ports"                       "An entry of EEE remote port"                       W"Indicates the value of Tw_sys_tx that the remote system can support, in micro-seconds"                       s"Indicates the value of Tw_sys_tx that the remote system requests from the local system,
         in micro-seconds"                       ^"Indicates the value of transmit Tw_sys_tx echoed back by the remote system, in micro-seconds"                       Z"Indicates the value Receive Tw_sys_tx echoed back by the remote system, in micro-seconds"                                  