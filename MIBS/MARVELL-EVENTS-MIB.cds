     ."Smart macro type - built-in or user-defined."               "Supported smart port types."               "Smart macro parameter value."               "Smart macro parameter order."               "Smart macro parameter name."                                                                     "MTS events MIB." "www.Marvell.com" "201009110000Z" "Initial revision."                  "disabled    - Auto Smart port feature is administratively disabled.
            enabled     - Auto Smart port feature is administratively enabled.
            controlled  - Auto Smart port feature is administratively controlled by VOICE VLAN.
             "                       �"disabled    - Auto Smart port feature is operationally disabled.
            enabled     - Auto Smart port feature is operationally enabled.
             "                      �"Indicated last status set by VOICE VLAN feature.
            If rlAutoSmartPortAdminStatus has 'controlled' value then the value of this object is the same as rlAutoSmartPortOperStatus.

            enabled   - Auto Smart port feature should be operationally enabled, if rlAutoSmartPortAdminStatus has 'controlled' value.
            disabled  - Auto Smart port feature should be operationally disabled, if rlAutoSmartPortAdminStatus has 'controlled' value
             "                       9"Indicated last VOICE VLAN ID set by VOICE VLAN feature."                      7"cdp  - Information about device type of neighboring devices(s) is learnt
                   via CDP (Cisco Discovery Protocol) advertisements.
            lldp - Information about device type of neighboring devices(s) is learnt
                    via LLDP (Link Layer Discovery Protocol ) advertisements. "                       P"The table is used to keep all the information related to a specific port type."                       ="An entry (conceptual row) in the rlAutoSmartPortTypesTable."                       "Smart port type."                       !"Smart port type global status. "                       �"Macro to be activated when a port is set to the smart port type indicated
             by rlAutoSmartPortTypesType. The macro whose name is 'no_'<rlAutoSmartPortMacro>
             is activated when a port ceases to be of this smart port type. "                       �"Setting this object will cause the smart port type macro associated with this smart port type
            to revert to the default macro. "                       �"Setting this object will cause the default smart port type parameter values associated with the built-in macro
            of this smart port type to revert to their default values."                       :"Indicates whether the macro is built-in or user defined."                       ]"The table is used to keep all the default parameter values related to a specific port type."                       D"A parameter name & default value pair for a smart port type macro."                       ("Macro type - built-in or user defined."                       G"Name of the parameter to be supplied at smart port macro activation. "                      z"Setting this object to 'first' instructs the system to erase all previous information associated
             with the rlAutoSmartPortTypesType and rlAutoSmartPortMacroType associated with this conceptual row.
             Setting this object to 'middle' instructs the system to wait for further parameters.
             Setting this object to 'last' informs the system that no further parameters will be sent and
             therefore it can start the macro or builtin parameters change process.
             Setting this object to 'single' instructs the system to erase all previous information associated
             with the rlAutoSmartPortTypesType and rlAutoSmartPortMacroType associated with this conceptual row and
             informs the system that no further parameters will be sent and therefore it can start macro or builtin
             parameters change process."                       P"Default value of the parameter to be supplied at smart port macro activation. "                       ["The table is used to keep all the auto smart port information related to a specific port."                       ="An entry (conceptual row) in the rlAutoSmartPortPortsTable."                       <"The port to which the smartport information is associated."                       K"Indicates whether auto smart port feature is enabled or not on this port."                       �"Smart port type associated with this port. If set by user, the port will retain
             the smart port type at link down, link not present and reboot events."                      U"If set to persistent then, if the system concludes, according to
             the information learnt there is no relevant device connected to the port,
             the rlAutoSmartPortPortType will not be changed (as if the user set this
             rlAutoSmartPortPortType himself), except on learning another rlAutoSmartPortPortType."                      �"Smart port type learnt via the learning protocols. This value will
             be different from rlAutoSmartPortPortType only if rlAutoSmartPortPortType
             was manually configured (i.e. if the value of
             rlAutoSmartPortPortAcquiringType is 'configuration'). The value of the object
             is used to set the value of rlAutoSmartPortPortType
             if the user removes the configuration."                       �"Indicates the way that the value of rlAutoSmartPortPortType was acquired. This object can be
             set only during configuration download."                       Q"Indicates macro name of last activated macro or 'no macro' if no macro was run."                       �"Indicates number of command (starting with 1) that caused the macro
             failure or 0 if the macro succeeded or no macro was run."                       D"Instructs the system to set the port type to the learnt port type."                       �"This table optionally determines the parameter values for the macro that is activated when the smartport type is
           manually changed for a specific port or trunk via the rlAutoSmartPortPortType object."                       %"A parameter name & immediate value."                       8"The port or trunk that this entry is associated with. "                       W"Name of the parameter whose value must be supplied at a smart port macro activation. "                      �"Setting this object to 'first' instructs the system to erase all previous information associated
             with the rlAutoSmartPortTypesType and rlAutoSmartPortMacroType associated with this conceptual row.
             Setting this object to 'middle' instructs the system to wait for further parameters.
             Setting this object to 'last' informs the system that no further parameters will be sent and
             therefore it can start applying the smartport type.
             Setting this object to 'single' instructs the system to erase all previous information associated
             with the rlAutoSmartPortTypesType and rlAutoSmartPortMacroType associated with this conceptual row and
             informs the system that no further parameters will be sent and informs the system that no further parameters will be sent and
             therefore it can start applying the smartport type."                       X"Value of the parameter whose value must be supplied at a smart port macro activation. "                       �"Setting this object causes running the SmartPort macros of the
           following types: router, switch and ap. This operation is called the trunk refresh operation."                       @"An entry (conceptual row) in the rlAutoSmartTrunkRefreshTable."                      J"If not default the trunk refresh operation will be carried out on all ports of this smart port type if
             rlAutoSmartTrunkRefreshIfIndex is nonzero, or on the port specifed by rlAutoSmartTrunkRefreshIfIndex if it's type
             matches the given  this smart port type (if not matching a wrong-value error will be return).
             If default the trunk refresh operation will be carried out on all ports of router, switch and ap smart port type if
             rlAutoSmartTrunkRefreshIfIndex is nonzero, or on the port specifed by rlAutoSmartTrunkRefreshIfIndex."                      �"If 0 the trunk refresh operation will be carried out on all ports of the smart port type as specified in the
             rlAutoSmartTrunkRefreshSmartPortType. If nonzero the trunk refresh operation will be carried out
             on the specified port, if rlAutoSmartTrunkRefreshSmartPortType is default or matches the smart port type of
             the specified port. Any other case will result in a wrong-value error."                       �"Since this an action table only createAndGo will be accepted and the conceptual row will vanish immediately
             after the action execution."                       �"If true indicates that the autosmartports system is temporarily busy performing a multiport
                operation and therefore can not service management requests for the time-being."                              