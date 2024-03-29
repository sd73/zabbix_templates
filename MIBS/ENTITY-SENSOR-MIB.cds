    w"An object using this data type represents the Entity Sensor
            measurement data type associated with a physical sensor
            value. The actual data units are determined by examining an
            object of this type together with the associated
            EntitySensorDataScale object.

            An object of this type SHOULD be defined together with
            objects of type EntitySensorDataScale and
            EntitySensorPrecision.  Together, associated objects of
            these three types are used to identify the semantics of an
            object of type EntitySensorValue.

            Valid values are:

               other(1):        a measure other than those listed below
               unknown(2):      unknown measurement, or arbitrary,
                                relative numbers
               voltsAC(3):      electric potential
               voltsDC(4):      electric potential
               amperes(5):      electric current
               watts(6):        power
               hertz(7):        frequency
               celsius(8):      temperature
               percentRH(9):    percent relative humidity
               rpm(10):         shaft revolutions per minute
               cmm(11),:        cubic meters per minute (airflow)
               truthvalue(12):  value takes { true(1), false(2) }

            "             "TBD"q"An object using this data type represents a data scaling
            factor, represented with an International System of Units
            (SI) prefix.  The actual data units are determined by
            examining an object of this type together with the
            associated EntitySensorDataType object.

            An object of this type SHOULD be defined together with
            objects of type EntitySensorDataType and
            EntitySensorPrecision.  Together, associated objects of
            these three types are used to identify the semantics of an
            object of type EntitySensorValue."              �"An object using this data type represents a sensor
            precision range.

            An object of this type SHOULD be defined together with
            objects of type EntitySensorDataType and
            EntitySensorDataScale.  Together, associated objects of
            these three types are used to identify the semantics of an
            object of type EntitySensorValue.

            If an object of this type contains a value in the range 1 to
            9, it represents the number of decimal places in the
            fractional part of an associated EntitySensorValue fixed-
            point number.

            If an object of this type contains a value in the range -8
            to -1, it represents the number of accurate digits in the
            associated EntitySensorValue fixed-point number.

            The value zero indicates the associated EntitySensorValue
            object is not a fixed-point number.

            Agent implementors must choose a value for the associated
            EntitySensorPrecision object so that the precision and
            accuracy of the associated EntitySensorValue object is
            correctly indicated.

            For example, a physical entity representing a temperature
            sensor that can measure 0 degrees to 100 degrees C in 0.1
            degree increments, +/- 0.05 degrees, would have an
            EntitySensorPrecision value of '1', an EntitySensorDataScale
            value of 'units(9)', and an EntitySensorValue ranging from
            '0' to '1000'.  The EntitySensorValue would be interpreted
            as 'degrees C * 10'."              �"An object using this data type represents an Entity Sensor
            value.
            An object of this type SHOULD be defined together with
            objects of type EntitySensorDataType, EntitySensorDataScale
            and EntitySensorPrecision.  Together, associated objects of
            those three types are used to identify the semantics of an
            object of this data type.

            The semantics of an object using this data type are
            determined by the value of the associated
            EntitySensorDataType object.

            If the associated EntitySensorDataType object is equal to
            'voltsAC(3)', 'voltsDC(4)', 'amperes(5)', 'watts(6),
            'hertz(7)', 'celsius(8)', or 'cmm(11)', then an object of
            this type MUST contain a fixed point number ranging from
            -999,999,999 to +999,999,999.  The value -1000000000
            indicates an underflow error. The value +1000000000
            indicates an overflow error.  The EntitySensorPrecision
            indicates how many fractional digits are represented in the
            associated EntitySensorValue object.

            If the associated EntitySensorDataType object is equal to
            'percentRH(9)', then an object of this type MUST contain a
            number ranging from 0 to 100.

            If the associated EntitySensorDataType object is equal to
            'rpm(10)', then an object of this type MUST contain a number
            ranging from -999,999,999 to +999,999,999.

            If the associated EntitySensorDataType object is equal to
            'truthvalue(12)', then an object of this type MUST contain
            either the value 'true(1)' or the value 'false(2)'.

            If the associated EntitySensorDataType object is equal to
            'other(1)' or unknown(2)', then an object of this type MUST
            contain a number ranging from -1000000000 to 1000000000."              \"An object using this data type represents the operational
            status of a physical sensor.

            The value 'ok(1)' indicates that the agent can obtain the
            sensor value.

            The value 'unavailable(2)' indicates that the agent
            presently cannot obtain the sensor value.

            The value 'nonoperational(3)' indicates that the agent
            believes the sensor is broken.  The sensor could have a hard
            failure (disconnected wire), or a soft failure such as out-
            of-range, jittery, or wildly fluctuating readings."                                                                     N"This module defines Entity MIB extensions for physical
            sensors."�"        Andy Bierman
                     Cisco Systems, Inc.
                Tel: +1 408-527-3711
             E-mail: abierman@cisco.com
             Postal: 170 West Tasman Drive
                     San Jose, CA USA 95134

                     Dan Romascanu
                     Avaya Communication
                Tel: +972-3-645-8414
              Email: dromasca@avaya.com
             Postal: Atidim technology Park, Bldg. #3
                     Tel Aviv, Israel, 61131

                     K.C. Norseth
                     L-3 Communications
                Tel: +1 801-594-2809
              Email: kenyon.c.norseth@L-3com.com
             Postal: 640 N. 2200 West.
                     Salt Lake City, Utah 84116-0850

             Send comments to <entmib@ietf.org>
             Mailing list subscription info:
               http://www.ietf.org/mailman/listinfo/entmib " "200210160000Z" V"Initial version of the Entity Sensor MIB module, published
            as RFC xxxx."             O-- RFC Editor assigns xxxx
--  ::= { mib-2 xxx } ## IANA needs to assign xxx
     x"This table contains one row per physical sensor represented
            by an associated row in the entPhysicalTable."                      �"Information about a particular physical sensor.

            An entry in this table describes the present reading of a
            sensor, the measurement units and scale, and sensor
            operational status.

            Entries are created in this table by the agent.  An entry
            for each physical sensor SHOULD be created at the same time
            as the associated entPhysicalEntry.  An entry SHOULD be
            destroyed if the associated entPhysicalEntry is destroyed."                     -- SPARSE-AUGMENTS
 �"The type of data returned by the associated
            entPhySensorValue object.

            This object SHOULD be set by the agent during entry
            creation, and the value SHOULD NOT change during operation."                       �"The exponent to apply to values returned by the associated
            entPhySensorValue object.

            This object SHOULD be set by the agent during entry
            creation, and the value SHOULD NOT change during operation."                      �"The number of decimal places of precision in fixed-point
            sensor values returned by the associated entPhySensorValue
            object.

            This object SHOULD be set to '0' when the associated
            entPhySensorType value is not a fixed-point type: e.g.,
            'percentRH(9)', 'rpm(10)', 'cmm(11)', or 'truthvalue(12)'.

            This object SHOULD be set by the agent during entry
            creation, and the value SHOULD NOT change during operation."                      "The most recent measurement obtained by the agent for this
            sensor.

            To correctly interpret the value of this object, the
            associated entPhySensorType, entPhySensorScale, and
            entPhySensorPrecision objects must also be examined."                       '"The operational status of the sensor."                       o"A textual description of the data units that should be used
            in the display of entPhySensorValue."                       x"The value of sysUpTime at the time the status and/or value
            of this sensor was last obtained by the agent."                      �"An indication of the frequency that the agent updates the
            associated entPhySensorValue object, representing in
            milliseconds.

            The value zero indicates:

                - the sensor value is updated on demand (e.g.,
                  when polled by the agent for a get-request),
                - the sensor value is updated when the sensor
                  value changes (event-driven),
                - the agent does not know the update rate.

            "                               Z"Describes the requirements for conformance to the Entity
            Sensor MIB module."                   W"A collection of objects representing physical entity sensor
            information."                