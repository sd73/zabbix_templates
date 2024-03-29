                                                           7"The private MIB module definition for Radlan CLI MIB." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "200707260000Z" "200504110000Z" "200503280000Z" "200403260000Z" �"Removed ranges of rlLCliTimeout, rlLCliSshTimeout, rlLCliTelnetTimeout since the range is dynamic
                  according to device capabilities. " �"Changed lower range of rlLCliTimeout, rlLCliSshTimeout, rlLCliTelnetTimeout to 0
                  to support 0 as 'no timeout' " �"1) Added Module-identity range.
                  2) Changed description of rlLCliMibVersion
                  3) Added ranges to rlLCliTimeout, rlLCliSshTimeout, rlLCliTelnetTimeout " "Initial version of this MIB."               *"MIB's version, the current version is 3."                       m"LCLI Timeout indicates the interval in seconds, that
        the system waits until user input is detected."           -- (0..65535*60+59)
           5"Indicates if command history function is supported."                       Y"Indicates number of commands that the system will record
        in its history buffer."                       ."This Table maps a CLI command to its level. "                       $"The row definition for this table."                       " The CLI command name "                       @" The CLI context ID which the command name is associated with "                       0"The time elapsed until this entry was created."                       7" The level which is associated with the command name "                       >" The level action which is associated with the command name "                       /" The status of the commandLevel table entry. "                       y"LCLI Timeout indicates the interval in seconds, that
        the system waits until user input is detected on SSH LCLI."           -- (0..65535*60+59)
           |"LCLI Timeout indicates the interval in seconds, that
        the system waits until user input is detected on telnet LCLI."           -- (0..65535*60+59)
           @"Indicates if command history function is supported for Telnet."                       e"Indicates number of commands that the system will record
         in its history buffer for Telnet."                       ="Indicates if command history function is supported for Ssh."                       b"Indicates number of commands that the system will record
         in its history buffer for Ssh."                              