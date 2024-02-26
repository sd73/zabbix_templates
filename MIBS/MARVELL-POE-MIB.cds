     �"PoE types:
                1 - none: no PoE, unknown type;
                2 - PoE: Standard AF PoE
                3 - PoE Plus: Standard AT PoE
                4 - 60 W: 60W poe port "                                                     I"Add a new field in the PoE MIB to indicate Max power allocation allowed" Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "201006020000Z" "200911260000Z" <"The private MIB module definition for Power Over Ethernet." "Initial revision."               J" The table listing additional information for Power Over Ethernet ports."                       &" An entry in the rlPethPsePortTable."                      �"This variable uniquely identifies the group
         containing the port to which a power Ethernet PSE is
         connected.  Group means box in the stack, module in a
         rack and the value 1 MUST be used for non-modular devices.
         Furthermore, the same value MUST be used in this variable,
         pethMainPseGroupIndex, and pethNotificationControlGroupIndex
         to refer to a given box in a stack or module in the rack."                       �"This variable uniquely identifies the power Ethernet PSE
         port within group pethPsePortGroupIndex to which the
         power Ethernet PSE entry is connected."                       ]"This variable indicates on the output voltage level in milli volts from rlPethPsePortIndex."                       ]"This variable indicates on the output current level in milli amper from rlPethPsePortIndex."                       ["This variable indicates on the output power level in milli watts from rlPethPsePortIndex."                       w"This variable indicates on the user configured power level in milli watts which is available from rlPethPsePortIndex."                       G"This variable indicates on the hardware status of rlPethPsePortIndex."                       W"This variable indicates the description of the hardware status of rlPethPsePortIndex."                       l"This variable indicates the maximum power level in milli watts which is available from rlPethPsePortIndex."                       7"This variable is used to bind PoE port to time range."                       t"This Read-Only variable indicates PoE port current status affected by time range active/inactive and admin status."                       �"This variable indicates the maximum power allocation allowed per port (including wire power loses) in milli-watts which is available from rlPethPsePortIndex."                       <"This variable indicates the supported type of the PoE port"                       4"This variable indicates the link partner PoE type."                       P"This variable enabled the spare pair ALT_B in 60W port to force 4 pair enable."                       :"This variable indicates that spare pair ALT_B is enable."                       T"This variable indicates the power allocation in milli watts from power negotiation"                       U"This variable indicates the protocol owner on power management negotiation protocol"                       A"This variable identifies poe Legacy per port configuration mode"                       A"This variable identifies poe port high power configuration mode"                       G"This variable identifies poe power management mode configuration mode"                       �"This variable indicates PoE Static power allocation.
		Static power allocation can be configured by setting rlPethPsePortMenagementMode"                       P" The table listing additional read - only information for Power Over Ethernet."                       &" An entry in the rlPethMainPseTable."                      �"This variable uniquely identifies the group
         containing the port to which a power Ethernet PSE is
         connected.  Group means box in the stack, module in a
         rack and the value 1 MUST be used for non-modular devices.
         Furthermore, the same value MUST be used in this variable,
         pethMainPseGroupIndex, and pethNotificationControlGroupIndex
         to refer to a given box in a stack or module in the rack."                       ."This variable identifies the MCU SW version."                       ."This variable identifies the MCU HW version."                       B"This variable identifies the MCU HW type (enhanced, plus, none)."                       ^"This variable identifies the guard band in [W] for not connecting
         additional ports."                       Z" The table listing additional read-write information for Power Over Ethernet - PSE side."                       '" An entry in the rlPethPowerPseTable."                      �"This variable uniquely identifies the group
         containing the port to which a power Ethernet PSE is
         connected.  Group means box in the stack, module in a
         rack and the value 1 MUST be used for non-modular devices.
         Furthermore, the same value MUST be used in this variable,
         PethPowerPseGroupIndex, and pethNotificationControlGroupIndex
         to refer to a given box in a stack or module in the rack."                       D"This variable identifies the maximum power in [W] supplied by PSE."                       J"This variable identifies the maximum power in [W] supplied by PSE + RPS."                       1"This variable identifies power management mode."                       ."This variable identifies disconnect method. "                       6"This variable identifies the pd temperature sensor. "                       l"This variable identifies if HW inrush test will be disabled.
        by default HW inrush test is enabled."                       ?"This variable identifies poe Legacy global configuration mode"                       Y" The table listing additional read-write information for Power Over Ethernet - PD side."                       %" An entry in the rlPethPdPortTable."                       �"This variable uniquely identifies the power Ethernet PD
         port within group rlPethPdPortGroupIndex to which the
         power Ethernet PSE entry is connected."                       A"This variable indicates the PoE type of the PD port (AF/AT/60W)"                       C"This variable indicates the operational PoE status of the PD port"                       \"This variable indicates the requested power the PD port request from the PSE in mili-Watts"                       ^"This variable indicates the available power the PSE port offers to the PD port in mili-Watts"                       9"This variable indicates the powered PD port forced mode"                       U"This variable indicates the protocol owner on power management negotiation protocol"                       a" The table listing additional read-write information for Power Over Ethernet unit capabilities."                       &" An entry in the rlPethPseUnitTable."                      n"This variable uniquely identifies the unit id.  
		 It means box in the stack, module in a
         rack and the value 1 MUST be used for non-modular devices.
         Furthermore, the same value MUST be used in this variable,
         PethPowerPseGroupIndex, and pethNotificationControlGroupIndex
         to refer to a given box in a stack or module in the rack."                       <"This variable identifies the unit type (PSE/PD/Both/None)."                       O"This variable identifies the unit PSE status (color can be green,yellow,red)."                       �"Clear poe port counter. By setting the MIB to 0x0FFFFFFF, all poe ports counters are set to zero. 
		by Setting to port index, all specific poe port counters are set to zero"                       h" The table listing additional read - only information for Power Over Ethernet PSE chipset HW Revision."                       ," An entry in the rlPethHwRevisionPseTable."                       �"This variable uniquely identifies the group
         containing the port to which a power Ethernet PSE is
         connected.  Group means box in the stack, module in a
         rack and the value 1 MUST be used for non-modular devices."                       �"This variable uniquely identifies the device within the group
         containing the port to which a power Ethernet PSE is connected."                       ."This variable identifies the MCU HW version."                       /"Specifies status of VoP problem in PoE device"                       J"Specifies if class detection error is enabled (true) or disabled (false)"                       Y" The table listing additional information for Power Over Ethernet ports per PSE device."                       %" An entry in the rlPethPerPseTable."                       �"This variable uniquely identifies the group
         containing the port to which a power Ethernet PSE is
         connected.  Group means box in the stack, module in a
         rack and the value 1 MUST be used for non-modular devices."                       D"This variable uniquely identifies the PSE device within the group."                       @"This variable represents temperature reported from PSE device."                              