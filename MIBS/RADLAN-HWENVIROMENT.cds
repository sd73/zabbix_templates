    �"Represents the state of a device being monitored.
                 Valid values are:

                 unKnown(1):        if the board not support air flow direction.

                 frontToBack(2):    the air flow direction of the fan is front to back.

                 backToFront(3):    the air flow direction of the fan is back to front.

                 clockwise(4):      the air flow direction of the fan is clock wise

                 unClockwise(5):    the air flow direction of the fan is unclock wise

                 insideOutside(6):  the air flow direction of the fan is inside outside

                 outsideInside(7):  the air flow direction of the fan is outside inside

                 rightToLeft(8):    the air flow direction of the fan is from right to left

                 leftToRight(9):    the air flow direction of the fan is from left to right

                "              �"Represents the state of a device being monitored.
                 Valid values are:

                 normal(1):         the environment is good, such as low
                                    temperature or full battery charge.

                 warning(2):        the environment is bad, such as temperature
                                    above normal operation range but not too
                                    high, or battery discharge.

                 critical(3):       the environment is very bad, such as
                                    temperature much higher than normal
                                    operation limit or critically low battery charge.

                 shutdown(4):       the environment is the worst, the system
                                    should be shutdown immediately.

                 notPresent(5):     the environmental monitor is not present,
                                    such as temperature sensors or battery does not exist.

                 notFunctioning(6): the environmental monitor does not
                                    function properly, such as a temperature
                                    sensor generates a abnormal data like
                                    1000 or error happens while reading battery
                                    state.

                 restore(7):        the environment is restoring its normal state,
                                    such as battery recharging.
                "              O"Represents the status of a redundant fan.
                                Valid values are:
                                Ready(1):        fan is ready and not active (all fans are O.K)
                                Active(2):        fan is active (one or more fan failed)
                                Failure(3): fan failure "                                                     F"The private MIB module definition for environment of Radlan devices." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "200309210000Z" $"Added this MODULE-IDENTITY clause."                   R"The table of fan status maintained by the environmental
                monitor."                       �"An entry in the fan status table, representing the status of
                the associated fan maintained by the environmental monitor."                       �"Unique index for the fan being instrumented.
                This index is for SNMP purposes only, and has no
                intrinsic meaning."                       �"Textual description of the fan being instrumented.
                This description is a short textual label, suitable as a
                human-sensible identification for the rest of the
                information in the entry."                       5"The mandatory  state of the fan being instrumented."                       `"The table of power supply status maintained by the
                environmental monitor card."                       �"An entry in the power supply status table, representing the
                status of the associated power supply maintained by the
                environmental monitor card."                       �"Unique index for the power supply being instrumented.
                This index is for SNMP purposes only, and has no
                intrinsic meaning."                       �"Textual description of the power supply being instrumented.
                This description is a short textual label, suitable as a
                human-sensible identification for the rest of the
                information in the entry."                       >"The mandatory  state of the power supply being instrumented."                      :"The power supply source.
                 unknown - Power supply source unknown
                 ac      - AC power supply
                 dc      - DC power supply
                 externalPowerSupply - External power supply
                 internalRedundant - Internal redundant power supply
                "                       *"The direction of the power supply's fan."                       ="The table that can help building indexes for EnvMon tables."                       ="An entry in table, representing the index input parameters."                       
"Unit ID."                       "Object type."                       "Index of object."                       "Calculated index value."                           "For each unit in a stack"                       )"An entry of this table specifies a unit"                       "The number of the stack unit"                       "The unit temperature"                       "Fan speed in RPM"                       "Fan speed operative level"                       "Configured fan speed level"                       $"The direction of the system's fan."                       "Table of redundant fan status"                       \"An entry in the redundant fan status table, representing the status of the associated fan "                       "The number of the stack unit"                       "The fan index"                       "The fan status"                       4"Defines whether Redundant Fan feature is supported"                              