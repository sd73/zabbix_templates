                           �"This private MIB module is used for achieving extended
                      debugging capablities for the device.
                      For example: greater management capabilies for technical
                      support users." W"5488 Marvell Lane
					Santa Clara, CA 95054
					USA

					Website:  www.marvell.com" "201101050000Z" "Initial revision."              �"A user intereseted to obtain extended debug capabilities should
            SET this MIB to a well known secret value (it is intended to be
            used only by authorized users).
            Most often, this value will be based on the device MAC address.
            Upon setting the correct value, the SET operation will return
            noError. Otherwise, wrongValue will return to the caller.
            GET operation on this MIB will reurn a value of length 0."                              