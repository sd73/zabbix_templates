     �"This textual convention maps out to the minimal severity levels
         of syslog messages, or indicate non Active. The syslog protocol
         uses the values 0 (emergency), to 7 (debug) last value notActive
         added to indicate inactivity."                                                                     J"The private MIB module definition for SYSLOG services in Radlan devices." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "200602120000Z" "200309220000Z" 1"Editorial changes to support new MIB compilers." "Initial version of this MIB."                   }"Global enable for syslog flash, syslog cache and syslog UDP.
         When set to false, only console logging is performed."                       �"The minimal severity to log to console. Lower severity
         will not be written to console. Value notActive indicate this
         activity is disabled."                       �"The minimal severity to log to LogFile. Lower severity
         will not be written to the LogFile. Value notActive indicates
         this activity is disabled."                       �"The minimal severity to log to memory cache. Lower severity
         will not be read from cache. Value notActive indicate this activity
         is disabled. Note that all events are logged to cache unless its
         severity is notActive."                       C"Setting to a value other than 0 results in deleting the log file."                       G"Setting to a value other than 0 results in clearing the memory cache."                       #"The Syslog MIB's version. It's 1."                       8"A table containing events sent to the system log file."                       "A log entry "                      "A counter that identifies this entry - used to differentiate logged
         entries. And the order given is the order of logging. A entries may
         not form sequence of this value. (Time is not a differentiating
         element as logged entries may come in a sequence."                       s"The time in string (formated DD-MMM-YYYY HH:MM:SS e.g
         14-Apr-2002 10:33:31), when the error was logged.."                       &"Application that created this error."                       !"Severity of the reported error."                       ;"Short identifier of this message that created this error."                       @"The text of the logged message without time and date - part 1."                       @"The text of the logged message without time and date - part 2."                       @"The text of the logged message without time and date - part 3."                       @"The text of the logged message without time and date - part 4."                       7"A table containing errors registered to system cache."                       "A log history entry"                      "A counter that identifies this entry - used to differentiate logged
         entries. And the order given is the order of logging. A entries may
         not form sequence of this value. (Time is not a differentiating
         element as logged entries may come in a sequence."                       s"The time in string (formated DD-MMM-YYYY HH:MM:SS e.g
         14-Apr-2002 10:33:31), when the eroor was logged.."                       &"Application that created this error."                       !"Severity of the reported error."                       ;"Short identifier of this message that created this error."                       @"The text of the logged message without time and date - part 1."                       @"The text of the logged message without time and date - part 2."                       @"The text of the logged message without time and date - part 3."                       @"The text of the logged message without time and date - part 4."                       �"This is a count of messages not sent to the console
         because the severity level of the message was above
         rlSyslogMinLogToConsoleSeverity, the higher the level,
         the lower the severity."                       �"This is a count of messages not sent to the file
         because the severity level of the message was above
         rlSyslogMinLogToFileSeverity, the higher the level,
         the lower the severity."                       M"This is a count of all the messages currently held in the
        Log file."                       J"This is a count of all the messages currently held in the
        cache."                       #"enable/disable Syslog aggregation"                       +"aging time for Syslog aggregated messages"                       �"The minimal severity to log to WEB client. Lower severity
         will not be displayed in WEB client.
         Value notActive indicate this activity
         is disabled."                       �"The MIB is initiated by false and it is set to true every time
        when a syslog message with severity >= min_severity_to_alarm_threshold (host parameter)
        is generated."                       R"Defines the origin field of the SYSLOG message packets sent to the SYSLOG server"                       S"Defines the string origin of the SYSLOG message packets sent to the SYSLOG server"                       W"Enabled sending/not sending of syslog header in syslog messages to syslog collectors."                       1"The table displays counters per syslog severity"                       "Static row for this table."                       +"The table contains only one static entry."                       #"Counts Emergency syslog messages "                       "Counts Alert syslog messages"                       !"Counts Critical syslog messages"                       "Counts Error syslog messages"                        "Counts Warning syslog messages"                       "Counts Notice syslog messages"                       "Counts Info syslog messages"                       "Counts Debug syslog messages"                       k"A table containing Syslog collector information. Internal MIB that configured by snmpSyslogCollectorTable"                      "Defines the information to generate syslog messages to
         an aggregating agent or collector.

         Entries within this table with an access level of read-
         create MUST be considered non-volatile and MUST be
         maintained across entity resets."                       :"A unique arbitrary identifier for this syslog collector."                       �"The type of Internet address by which the Syslog
         collector is specified in snmpSyslogCollectorAddress.

         Not all address types may be supported."                      �"The Internet address for the Syslog message collector.

         The use of DNS domain names is discouraged, and agent
         support for them is optional.  Deciding when, and how
         often, to resolve them is an issue.  Not resolving them
         often enough means you might lose synchronization with
         the associated entry in the DNS server, and resolving
         them too often might leave you without access to the
         Syslog collector during critical network events."                      7"This object allows for the dynamic creation and deletion
         of entries within the snmpSyslogCollectorTable as well as
         the activation and deactivation of these entries.

         When this object's value is set to notInService(2) this
         collector will not be sent any messages, nor will any of its
         counters be incremented.

         The agent SHOULD not delete a row, except in the case of
         the loss of persistent storage.

         Refer to the RowStatus convention for further details on
         the behavior of this object." )"RFC2579 (Textual Conventions for SMIv2)"                     3"The table displays Last Index per syslog severity"                       "Static row for this table."                       +"The table contains only one static entry."                       5"Shows Index of last added Emergency syslog message "                       0"Shows Index of last added Alert syslog message"                       3"Shows Index of last added Critical syslog message"                       0"Shows Index of last added Error syslog message"                       2"Shows Index of last added Warning syslog message"                       1"Shows Index of last added Notice syslog message"                       /"Shows Index of last added Info syslog message"                       0"Shows Index of last added Debug syslog message"                       �"The Log level of the PropAPPL0 Probe
        info - info log level.
        debug - debug log level.        
        warnings - warnings log level.
	errors - errors log level."                      �"The Log level of the PropAPPL0 Probe
        options:
        none - All modules log disabled
        call-home - call-home modules log enabled.      
        discovery - discovery modules log enabled.
	northbound - northbound modules log enabled.
	services - services modules log enabled.
	southbound - southbound modules log enabled.
	system - system modules log enabled.
	All - all modules log enabled."                       >"A table containing errors registered to non-volatile memory."                       !"An unexpected restart log entry"                      "A counter that identifies this entry - used to differentiate logged
         entries. And the order given is the order of logging. A entries may
         not form sequence of this value. (Time is not a differentiating
         element as logged entries may come in a sequence."                       s"The time in string (formated DD-MMM-YYYY HH:MM:SS e.g
         14-Apr-2002 10:33:31), when the eroor was logged.."                       &"Application that created this error."                       !"Severity of the reported error."                       ;"Short identifier of this message that created this error."                       @"The text of the logged message without time and date - part 1."                       @"The text of the logged message without time and date - part 2."                       @"The text of the logged message without time and date - part 3."                       @"The text of the logged message without time and date - part 4."                       _"A flag representing if an unexpected restart had occured
        and has not yet been cleared"                       �"An action MIB variable setting with that when 
        set to true, will clear the unexpectedRestartOccured
        and delete all entries in "                           G"Writing a value to this leaf results in a test being run on the host."           B-- todo: once we have all of the tests, change them into an enum.
                  