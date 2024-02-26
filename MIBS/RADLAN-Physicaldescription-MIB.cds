                                                                                                                                       9"Trap indicating that a unit was removed from the stack."                 }"Trap indicating that the configuration of the stack has changed.
        - from ring to chain
        - from chain to ring."                 B"Trap indicating that the backup unit was removed from the stack."                 ["Trap indicating that a new master was elected.
         The old maste is the backup now. "                 o"Trap indicating that the new unit added to the stack has
         different software version than the master."                 {"Trap indicating that a new unit with duplicated unit id was
         added to the stack - but it will not join the stack."                 D"Trap indicating that Link has change in one of the Stacking Ports."                         c"The private MIB module definition for physical
                             device configuration." ]"5488 Marvell Lane
							Santa Clara, CA 95054
							USA

							Website:  www.marvell.com" "200602120000Z" "200310180000Z" !"Removed TRAP-TYPE from IMPORTS." "Initial version of this MIB."              8"MIB's version, the current version is 3.
         1: original version
         2: a. new tables
                 rlPhdModuleHotSwapTable
                 rlPhdStackOrderTable
            b. new scalars
                 rlPhdStackReorder
                 rlPhdNumberOfUnits
                 rlPhdMaxNumberOfUnits
         3: a. new field rlPhdModuleRole of rlPhdModuleTable
            b. new scalars
                 rlPhdForceMasterUnit
         4: a. new fields rlPhdModuleConnect1 and rlPhdModuleConnect2
               of rlPhdModuleTable.
         5: a. Prefix rlPhD were replaced by prefix rlPhd
            b. fields rlPhdModuleConnect1 and rlPhdModuleConnect2 are
               moved from rlPhdModuleTable to rlPhdStackTable.
            c. new fiels rlPhdStackSofrwareVer, rlPhdStackProductID and
               rlPhdStackMacAddr of rlPhdStackTable.
            d. new scalars
                 rlPhdStackReloadUnit
            e. new scalars
                 rlPhdStackOrderTopUnit
                 rlPhdStackOrderBottomUnit
                 rlPhdStackOrderPermutation"                       Q"For each module (board) there is an entry describing it in this
         module"                       2"A entry of this table specifies a module (board)"                       "The number of the stack unit"                       ,"The number of the module in its stack unit"                        "The index for each module type"                       9"The minimal number of the port residing on this module."                       ."The number of ports residing on this module."                       �"On which row (the uppermost being numbered 1 and the highest row
             number asigned to the lowest row) this module resides within the
         chassis of its stack unit."                       �"On which column (the leftmost being numbered 1 and the highest column
         number asigned to the rightmost column) this module resides within the
         chassis of its stack unit."                       "The module role in the stack."                       <"Lists the physical or physical-related attributes of ports"                       �"For each port, a entry describing attributes which are either
        physical or are derived from the features of the device hardware"                       4"The L2 interface number associated with this port."                      "The L2 interface number associated with this port, in string format
        based on the overall hardware architecture of the device (i.e., for
        monolithic devices just numbers, devices composed of modules (boards,
        cards) or stackable devices composed of monolithic units in form
        <module /stack unit number> - <port number on current module /stack
        unit number>, stackable devices in which each unit is composed of
        modules
             <stack unit number> - <module number> - <port number>"                       "The media type of this port."                       4"The number of the slot to which this port belongs."                       ="The number of the stack unit to which this port resides in."                       �"On which row (the uppermost being numbered 1 and the highest row
        number asigned to the lowest row) this port resides within its
        module."                       �"On which column (the leftmost being numbered 1 and the highest column
        number asigned to the rightmost column) this this port resides within its
        module."                       "Type of connector."                       ""Distance supported by this port."                       C"For each stack unit there is an entry describing it in this table"                       ."A entry of this table specifies a stack unit"                       )"The stack unit described by this entry."                       �"The type of the stack unit described by this entry:
            1 - box 3202
            2 - box LG
            3 - bcm
            4 - prestera"                       �"The unit number connected to the Hyper GLink left side connection -
         0 means not connected; other integer indicates the unit number."                       �"The unit number connected to the Hyper GLink right side connection -
         0 means not connected; other integer indicates the unit number."                       #"The Software version of the unit."                       "The Product ID of the unit."                       )"The physical (MAC) address of the unit."                       S"For each module (board) there is an entry describing its Hot Swap
         status"                       K"A entry of this table specifies a module (board) Hot Swap
         status"                      Y"The desired state of the module.  The off(1) state indicates
         that the module is not used and its rlPhdModuleHotSwapOperStatus
         is always off(2).
         The on{1) state indicates that the module may be used and its
         rlPhdModuleHotSwapOperStatus will be on(1) if it presents and
         off(2) if it does not present."                      �"The current Hot Swap state of the module.
         If rlPhdModuleHotSwapAdminStatus is down(2) then
         rlPhdModuleHotSwapOperStatus should be down(2).  If
         rlPhdModuleHotSwapAdminStatus is changed to up(1) then
         rlPhdModuleHotSwapOperStatus should change to
         up(1) if the module presents; it should remain in the down(2) state if
         and only if the module does not present."                      :"This table enables the user to configure the order
         of the stack units as displayed on his GUI.
         The order of the entries in this table corresponds
         to the last configured order. If the stack units order was
         never configured, the order will be the same as in the rlPhdStackTable."                       R"A entry of this table specifies a stack unit in the position desired by the user"                       ""The current stack unit position."                      �"The desired stack unit position. Note that setting this MIB
         object will take effect only after setting the rlPhdStackReorder MIB
         object below. After setting this MIB object and until a further change
         of at least one instance of the rlPhdStackOrderDesiredUnitPosition object,
         the values of the rlPhdStackOrderCurrentUnitPosition objectinstance and
         the corresponding rlPhdStackOrderDesiredUnitPosition object instance
         will be the same."                       \"This is the original unit index, i.e. has the same value as rlPhdStackUnit
         above."                       �"The type of the stack unit described by this entry. It has the same value
         as rlPhdStackType above. This information is duplicated here only for easier
         retrieval by the device manager."                      �"Setting this MIB object will cause the settings of the
         rlPhdStackOrderDesiredUnitPosition MIB object instances to take effect.
         After setting this MIB object and until a further change
         of at least one instance of the rlPhdStackOrderDesiredUnitPosition object,
         the values of the rlPhdStackOrderCurrentUnitPosition objectinstance and
         the corresponding rlPhdStackOrderDesiredUnitPosition object instance
         will be the same."                       1"Shows the current number of units in the stack."                       1"Shows the maximum number of units in the stack."                       "Force unit to be master."                       X"Determine which unit will be on bottom/top of list
         on Show-List command(see ."                       5"Determine the bottom/top object in the stack table."                       "Reset a specific unit."                       Q"For each module (board) there is an entry describing it in this
         module"                       2"A entry of this table specifies a module (board)"                       G"The index of the stack unit to which this conceptual row corresponds."                       "Serial number of the product."                       "Serial number of the product."                       "Serial number of the product."                       "Serial number of the product."                       "Serial number of the product."                       "Asset tag of the product."                       "Date of product's software."                       "Date of product's firmware."                       "Product's Manufacturer."                       "Model Name."                       "MD5 Checksum for Boot"                       "MD5 Checksum for Image 1"                       "MD5 Checksum for Image 2"                       "Registration Done."                       "Registration Suppressed."                       "CPLD version"                       Q"For each module (board) there is an entry describing it in this
         module"                       2"A entry of this table specifies a module (board)"                       �"The index of the stack unit to which this conceptual row corresponds.
                    Note that the index will be the same index as the index
                    of a 'chassis' physical entity in the entity MIB of the product."                       9"The mandatory  state of the main PS being instrumented."                       >"The mandatory  state of the redundant PS being instrumented."                       7"The mandatory  state of the FAN 1 being instrumented."                       7"The mandatory  state of the FAN 2 being instrumented."                       7"The mandatory  state of the FAN 3 being instrumented."                       7"The mandatory  state of the FAN 4 being instrumented."                       7"The mandatory  state of the FAN 5 being instrumented."                       7"The mandatory  state of the FAN 6 being instrumented."                       2"Current value for the Sensor being instrumented."                       1"Status value for the Sensor being instrumented."                       H"Temperature warning threshold value for the Sensor being instrumented."                       I"Temperature critical threshold value for the Sensor being instrumented."                       3"Up time of the unit in 100th of second (sec/100)."                       /"Disable environment automatic recovery option"                       ;"Display environment monitoring chassis temperature status"                       K"Display environment automatic recovery current status (active/not active)"                       c"Rotation speed of FAN 1 in RPM. Value 4294967295 means the measurement of speed is not supported."                       c"Rotation speed of FAN 2 in RPM. Value 4294967295 means the measurement of speed is not supported."                       c"Rotation speed of FAN 3 in RPM. Value 4294967295 means the measurement of speed is not supported."                       c"Rotation speed of FAN 4 in RPM. Value 4294967295 means the measurement of speed is not supported."                       c"Rotation speed of FAN 5 in RPM. Value 4294967295 means the measurement of speed is not supported."                       c"Rotation speed of FAN 6 in RPM. Value 4294967295 means the measurement of speed is not supported."                       @"This scalar mib holds the Top unit for the stack order command"                       C"This scalar mib holds the Bottom unit for the stack order command"                       )"This scalar mib holds stack permutation"                       5"Shows the current number of poe units in the stack."                       Q"For each module (board) there is an entry describing it in this
         module"                       2"A entry of this table specifies a module (board)"                       ."The stack unit to which this module belongs."                       �"The present state of the PoE module.  The no(1) state indicates
         that the PoE module is not present. The yes{2) state indicates that the
         PoE module is present."                       C"This scalar mib holds the unit number for the stack light command"                       �"This scalar mib holds the timeout for the stack light command.
         May be in the range 2..60 sec. (default - 5 sec.), if the timeout = 0
         - all units return to normal state."                       X"For each cascaded port for stacking unit there is an entry describing it in this table"                       H"An entry of this table specifies a cascaded link information in a unit"                       |"The ifIndex of a stacking port in the neighbor unit -
         0 means not connected; other integer indicates the IfIndex."                       q"The unit number of the neighbor unit -
         0 means not connected; other integer indicates the unit number."                       e"The id of the trunk, the stacking port is member,
         zero if the port is not member of trunk."                       ."The unit number matching the current ifIndex"                       "Port speed"                       3"Port state according to cascade LAG state machine"                       T"For each unit there is an entry describing its cascade ports and speed after reset"                       O"An entry of this table specifies a cascaded information in a unit after reset"                       >"The active unit number. Unit id 0 means configure all units."                       �"Indicates the stack ports indexes list.
         A set of indexes that are identified by a bit-map, in which
         each index is represented as a bit."                       "Cascade port speed"                       �"The table listing information required for stack port.
         The index for the table is ifindex; the ports that represented in that table are
         operational stack ports or ports that can be stack ports after reset"                       &"An entry in rlPhdUnitStackPortTable "                       "Stack port name"                       "Stack port type"                       p"Operational connection type
        (copper(1), combo-copper(2), combo-fiber(3), fiber(4), direct-Attached(5))"                       �"On which row (the uppermost being numbered 1 and the highest row
             number assigned to the lowest row) this actual/candidate cascade
             port resides within the chassis of its stack unit."                       �"On which column (the leftmost being numbered 1 and the highest column
         number assigned to the rightmost column) this actual/candidate cascade
             port resides within the chassis of its stack unit."                       +"Unit Interface Mapping description table."                       *"Unit Interface Mapping description entry"                       	"Unit Id"                       ."Actual unit type used for interface mapping."                       �"This scalar mib holds the time remaining for the stack light command timout to expire.
         May be in the range 0..300 seconds, if the timeout = 0
         - stack light command timeour expired."                       W"This scalar mib holds the pattern configuration required for the stack light command."                                  