     )"A value indicating the test to perform."                                     �"The MIB module describes the private MIB for testing Layer1 interfaces supported
               by Radlan's software and products." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "200209300024Z" "200309210024Z" "Initial revision" 7"Added MODULE-IDENTITY and TEXTUAL-CONVENTION IMPORTS."       -- September 30, 2002
           ""                       A"An entry containing objects for invoking tests on an interface."                       �"A control variable used to start operator initiated interface
             tests.1 indicates that no test has been initiated. Only
             operator initiated interface tests can be set to this variable."                       ""                       7"An entry containing results of tests on an interface."                       �"A control variable used to, 1 to indicate that this test can be
            done on the specified port, 2 to initiate the test whenever the
            user wishes"                      �"This object contains the status of the most recently
        requested test for operator initiated tests or the value
        none(1) if no tests have been requested since the last
        reset. For non operator initiated tests the value is always
        none(1).
        Note that this facility provides no provision for saving
        the results of one test when starting another, as could
        be required if used by multiple managers concurrently."                       #"This object holds the test result"                      �"The test result unit of measure. The units can be standard unit or special units
         that are designed for special test.

         The alaskaPhyLength unit is design for the VCT diagnostic and its values are:
         less_than_50M(1), 50-80M(2), 80-110M(3), 110-140M(4), more_than_140M(5).

         The alaskaPhyStatus unit is design for the VCT diagnostic and its values are:
         4_pair_cable(1), 2_pair_cable(2), no_cable(3), open_cable(4), short_cable(5), bad_cable(6), impedance_mismatch(7)."                       �"This object hold the Alarm for this Entry. only Test that have can have alarms
          use this field, other holds the Value notRelevant(1) "                       V"The time in string (formated DD-MMM-YYYY HH:MM:SS e.g
         14-Apr-2002 10:33:31)"                                  