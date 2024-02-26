     ;"Method to be used for time synchronization in the device."              �"The time in seconds that could represent signed
                      quantities like time delay with respect to some
                      source.  This textual-convention is specific to RADLAN
                      implementation of NTP where 32-bit integers are used
                      for such quantities.  The signed integer part is in
                      the first 16 bits and the fraction part is in the
                      last 16 bits."             j"D.L. Mills, 'Network Time Protocol (Version 3)',
                      RFC-1305, March 1992, Section 2.2""Indicates the stratum of the clock.  The stratum
                      defines the accuracy of a time server.  Higher the
                      stratum, lower the accuracy.
                      0, unspecified
                      1, primary reference (e.g., calibrated atomic clock,
                         radio clock)
                      2-255, secondary reference (via NTP)"               #"Entry in rlSntpNtpConfigSrvTable."             j"D.L. Mills, 'Network Time Protocol (Version 3)',
                      RFC-1305, March 1992, Section 3.1")"NTP timestamps are represented as a 64-bit
                      unsigned fixed-point number, in seconds relative to
                      00:00 on 1 January 1900.  The integer part is in the
                      first 32 bits and the fraction part is in the last
                      32 bits."               -"Daylight Saving Time - Recurring/Date/None."               ;"Method to be used for time synchronization in the device."                                                                     G"The MIB module describes the private MIB for SNTP & TIME definitions." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "200906180024Z" "200709060024Z" "200311230024Z" ("Added support in DHCP timezone option." "Added rlClockStatus" "Initial revision"                   "TimeSync Mib Version."                       ,"The time will be sent in the format hhmmss"                       ,"The date will be sent in the format ddmmyy"                       ;"The date and time will be sent in the format ddmmyyhhmmss"                       ;"Method to be used for time synchronization in the device."                       1"Offset from Greenwich time (format [+/-]hh:mm)."                       '"Code definition for current TimeZone."                       -"Daylight Saving Time - Recurring/Date/None."                      A"Daylight Saving Time start date.
                 In recurring mode (format 1): week wday month hh:mm
                 In recurring mode (format 2): RJul n hh:mm
                 In date mode:      month day year hh:mm
                 week:  0-6  (0=First, 6=Last)
                 wday:  1-7  (Sunday-Saturday)
                 month: 1-12 (January-December)
                 day:   1-31
                 year:  0-99 (2000-2099)
                 hh:    0-23 (hours)
                 mm:    0-59 (minutes)
                 n:     0-365 (zero-based Julian day of the year. Leap days shall be
                               counted, and it is possible to refer to February 29).
                 Format 2 for recurring mode is used only in the dynamic entry and
                 should not be used in the static entry (with index 1)."                      A"Daylight Saving Time start date.
                 In recurring mode (format 1): week wday month hh:mm
                 In recurring mode (format 2): RJul n hh:mm
                 In date mode:      month day year hh:mm
                 week:  0-6  (0=First, 6=Last)
                 wday:  1-7  (Sunday-Saturday)
                 month: 1-12 (January-December)
                 day:   1-31
                 year:  0-99 (2000-2099)
                 hh:    0-23 (hours)
                 mm:    0-59 (minutes)
                 n:     0-365 (zero-based Julian day of the year. Leap days shall be
                               counted, and it is possible to refer to February 29).
                 Format 2 for recurring mode is used only in the dynamic entry and
                 should not be used in the static entry (with index 1)."                       k"Daylight Saving Time - The number of minutes to add to
                     the clock during summer time."                       3"Code definition for current Daylight Saving Time."                       R"Local Time Zone and Daylight Saving Time offset
                     in seconds."                       L"Human readable string describing Local Time Zone and Daylight Saving Time."                       "TimeZone information."                       $"The row definition for this table."                      v"Entry index. A row with index 2 will be existing in case the DHCP
                 timezone is supported, and will contain Timezone and Summertime dynamic
                 values.
                 Using index 2 in SET operations is allowed only for SNMP
                 inner clients (SNMPServ users), on condition that DHCP timezone option
                 is supported."                       ;"Method to be used for time synchronization in the device."                       1"Offset from Greenwich time (format [+/-]hh:mm)."                       '"Code definition for current TimeZone."                       -"Daylight Saving Time - Recurring/Date/None."                      A"Daylight Saving Time start date.
                 In recurring mode (format 1): week wday month hh:mm
                 In recurring mode (format 2): RJul n hh:mm
                 In date mode:      month day year hh:mm
                 week:  0-6  (0=First, 6=Last)
                 wday:  1-7  (Sunday-Saturday)
                 month: 1-12 (January-December)
                 day:   1-31
                 year:  0-99 (2000-2099)
                 hh:    0-23 (hours)
                 mm:    0-59 (minutes)
                 n:     0-365 (zero-based Julian day of the year. Leap days shall be
                               counted, and it is possible to refer to February 29).
                 Format 2 for recurring mode is used only in the dynamic entry and
                 should not be used in the static entry (with index 1)."                      A"Daylight Saving Time start date.
                 In recurring mode (format 1): week wday month hh:mm
                 In recurring mode (format 2): RJul n hh:mm
                 In date mode:      month day year hh:mm
                 week:  0-6  (0=First, 6=Last)
                 wday:  1-7  (Sunday-Saturday)
                 month: 1-12 (January-December)
                 day:   1-31
                 year:  0-99 (2000-2099)
                 hh:    0-23 (hours)
                 mm:    0-59 (minutes)
                 n:     0-365 (zero-based Julian day of the year. Leap days shall be
                               counted, and it is possible to refer to February 29).
                 Format 2 for recurring mode is used only in the dynamic entry and
                 should not be used in the static entry (with index 1)."                       g"Daylight Saving Time - The number of minutes to add to
                 the clock during summer time."                       3"Code definition for current Daylight Saving Time."                       ="Local Time Zone and Daylight Saving Time offset in seconds."                       L"Human readable string describing Local Time Zone and Daylight Saving Time."                       4"The type of data in this entry: static or dynamic."                      /"IfIndex of the interface through which the dynamic data of this row has been learned.
                     The value of this field will be 0 if rlTimeZoneTimeDataType is static (since it is
                     relevant only for dynamic entry), and this is the only value allowed for SET in this case."                       �"The source of dynamic data in this entry, for example: dhcpv4.
                 Values other than 'none' are relevant only for dynamic entry."                       �"Current status of the clock. The value 'invalid' means time is meaninglesss,
                     since it has neither been manually configured nor achieved as a result
                     of SNTP synchronization."                      |"Specifies whether the DHCP Timezone option (DHCPv4 option 100) is supported in the system.
                     Setting this value to FALSE, will clear Timezone and Summertime dynamic configuration,
                     so that:
                     1) rlTimeZoneTimeZoneCode and rlTimeZoneDaylightSavingTimeCode length will
                        be 0 for rlTimeZoneEntry whose index = 2 (dynamic entry).
                     2) the operative values of Timezone and Summertime will be those
                        statically configured. Thus, GET operations on the following
                        MIB scalars will result is static values:
                        rlTimeZone, rlTimeZoneCode, rlDaylightSavingTimeMode,
                        rlDaylightSavingTimeStart, rlDaylightSavingTimeEnd, rlDaylightSavingTimeOffset,
                        rlDaylightSavingTimeCode, rlTZDSTOffset."                      C"Specifies whether automatic set of time and date is permitted from
                     connected host PC.
                     The feature is meant to be used in order to initialize the clock
                     after reboot (if SNTP is not in use), since the device does not have
                     a realtime clock."                      @"Indicates whether the time and date have been set in the
                     device, manually or through SNTP synchronization.
                     If only time has been set, the value of this MIB will
                     be FALSE. If only date has been set, the value of this MIB
                     will be FALSE."                               "SntpNtp Mib Version."                       <"Current configuration operational mode of SNTP/NTP client."                       �"The stratum of the local clock. If the value is set
                     to 1, i.e., this is a primary reference, then the
                     Primary-Clock procedure described in Section 3.4.6,
                     in RFC-1305 is invoked."                       l"Period of time (in seconds) between succesive attempts to
                     perform an update via SNTP."                       2"Ip Address of a trusted SNTP server for polling."                       !"The mrid of the primary server."                       0"The interface addressed of the primary server."                       ,"The stratum of the primary polling server."                       ""Ip Address of the synced server."                        "The mrid of the synced server."                       /"The interface addressed of the synced server."                       "Synced server type."                       #"The stratum of the synced server."                       #"SNTP/NTP requests Retry Interval."                        "SNTP/NTP requests Retry Count."                       6"A table containing information about config servers."                       #"Entry in rlSntpNtpConfigSrvTable."                       9"Server type: Synchronize Server or Primary Poll Server."                       "Server inet address type."                       "Server inet address."                       "The mrid of the server."                       ("The interface addressed of the server."                       "The type of synchronization."                       #"The stratum of the synced server."                           *"Current operational mode of SNTP client."                      "SNTP Unicast Administrative state - Enable/Disable SNTP.
                     In case of reinitializing polling or time
                     synchronization this MIB is modified. The MIB can
                     be enabled even thought it is already enabled."                      "SNTP Broadcast Administrative state - Enable/Disable SNTP.
                     In case of reinitializing polling or time
                     synchronization this MIB is modified. The MIB can
                     be enabled even thought it is already enabled."                      "SNTP Anycast Administrative state - Enable/Disable SNTP.
                     In case of reinitializing polling or time
                     synchronization this MIB is modified. The MIB can
                     be enabled even thought it is already enabled."                       ,"SNTP Unicast poll state - TRUE for polled."                       ."SNTP Broadcast poll state - TRUE for polled."                       ,"SNTP Anycast poll state - TRUE for polled."                       1"SNTP authentication state- Enable/Disable SNTP."                       "Is time valid."                       S"A table containing broadcast mode information per
                     interface."                       T"Private paramters for interface:
                     sntp status, broadcast mode."                       ("The interface addressed by this entry."                      "SNTP interface Adminstrative state- Enable/Disable SNTP.
                     In case of reinitializing polling or time
                     synchronization this MIB is modified. The MIB can
                     be enabled even thought it is already enabled."                      1"SNTP/NTP Broadcast Mode.
                     none        - no broadcast SNTP packets are received or sent.
                     Receive     - host only receive SNTP packets that were sent
                                   to broadcast address (were not directed to
                                   the host). This is multicast mode in the RFC.
                     Send        - host only send SNTP packets and wait for replies
                                   directed to the host. This is anycast mode in
                                   the RFC.
                     ReceiveSend - host receive broadcast messages (destination
                                   is broadcast address in the received messages)
                                   and send SNTP packets to wait for replies
                                   directed to the host (destination address
                                   of the reply is the host address). This mode
                                   combines anycast and multicast modes in the
                                   RFC."                       5"TRUE if participating in polling cycle, else FALSE."                       &"Ip Address of a trusted SNTP server."                       "The stratum of this server."                       #"SNTP Broadcast Last Response Time"                      b"The Operational State of the remote IP Address of
                     the SNTP Broadcast.
                     unknown     - requests were not sent yet.
                     inProcess   - replies were not received yet.
                     up          - server sent SNTP packets.
                     down        - server stopped sending SNTP packets."                       �"The estimated offset of the server's clock relative to
                 the local clock, in seconds.  The host determines the
                 value of this object using the algorithm described in
                 RFC 2030."                      "The estimated round-trip delay of the server's clock
                 relative to the local clock over the network path
                 between them, in seconds. The host determines the
                 value of this object using the algorithm described in
                 RFC 2030."                       O"The Status of this SNTP broadcast interface
                     information."                       L"A table containing anycast information per
                     interface."                       D"Private paramters for interface:
                     server info."                       ("The interface addressed by this entry."                       &"Ip Address of a trusted SNTP server."                       "The stratum of this server."                       !"SNTP Anycast Last Response Time"                      `"The Operational State of the remote IP Address of
                     the SNTP Anycast.
                     unknown     - requests were not sent yet.
                     inProcess   - replies were not received yet.
                     up          - server sent SNTP packets.
                     down        - server stopped sending SNTP packets."                       �"The estimated offset of the server's clock relative to
                 the local clock, in seconds.  The host determines the
                 value of this object using the algorithm described in
                 RFC 2030."                      "The estimated round-trip delay of the server's clock
                 relative to the local clock over the network path
                 between them, in seconds. The host determines the
                 value of this object using the algorithm described in
                 RFC 2030."                       M"The Status of this SNTP anycast interface
                     information."                       j"A table containing trusted SNTP servers to be queried in
                     unicast or broadcast mode."                       "A trusted server."                       &"Ip Address of a trusted SNTP server."                       5"TRUE if participating in polling cycle, else FALSE."                       "The stratum of this server."                        "SNTP Server Last Response Time"                      _"The Operational State of the remote IP Address of
                     the SNTP Server.
                     unknown     - requests were not sent yet.
                     inProcess   - replies were not received yet.
                     up          - server sent SNTP packets.
                     down        - server stopped sending SNTP packets."                       �"The estimated offset of the server's clock relative to
                 the local clock, in seconds.  The host determines the
                 value of this object using the algorithm described in
                 RFC 2030."                      "The estimated round-trip delay of the server's clock
                 relative to the local clock over the network path
                 between them, in seconds. The host determines the
                 value of this object using the algorithm described in
                 RFC 2030."                       �"Authentication key identifier. The valid range is
                     1-4294967295.
                     Value zero, means no authentication is being done."                       -"The Status of this SNTP server information."                       "A table authentication keys."                       4"Keys information for authenticationof NTP packets."                       Z"The key identifier. Valid rabge for key identifier
                     is 1-4294967295."                       "Key value."                       0"Authentication key state - Enable/Disable key."                       4"The Status of this Authentication key information."                       "User defined SNTP port."                       S"A table containing broadcast mode information per
                     interface."                       T"Private paramters for interface:
                     sntp status, broadcast mode."                       ("The interface addressed by this entry."                      "SNTP interface Adminstrative state- Enable/Disable SNTP.
                     In case of reinitializing polling or time
                     synchronization this MIB is modified. The MIB can
                     be enabled even thought it is already enabled."                      1"SNTP/NTP Broadcast Mode.
                     none        - no broadcast SNTP packets are received or sent.
                     Receive     - host only receive SNTP packets that were sent
                                   to broadcast address (were not directed to
                                   the host). This is multicast mode in the RFC.
                     Send        - host only send SNTP packets and wait for replies
                                   directed to the host. This is anycast mode in
                                   the RFC.
                     ReceiveSend - host receive broadcast messages (destination
                                   is broadcast address in the received messages)
                                   and send SNTP packets to wait for replies
                                   directed to the host (destination address
                                   of the reply is the host address). This mode
                                   combines anycast and multicast modes in the
                                   RFC."                       5"TRUE if participating in polling cycle, else FALSE."                       -"Inet Address Type of a trusted SNTP server."                       ("Inet Address of a trusted SNTP server."                       "The stratum of this server."                       #"SNTP Broadcast Last Response Time"                      b"The Operational State of the remote IP Address of
                     the SNTP Broadcast.
                     unknown     - requests were not sent yet.
                     inProcess   - replies were not received yet.
                     up          - server sent SNTP packets.
                     down        - server stopped sending SNTP packets."                       �"The estimated offset of the server's clock relative to
                 the local clock, in seconds.  The host determines the
                 value of this object using the algorithm described in
                 RFC 2030."                      "The estimated round-trip delay of the server's clock
                 relative to the local clock over the network path
                 between them, in seconds. The host determines the
                 value of this object using the algorithm described in
                 RFC 2030."                       O"The Status of this SNTP broadcast interface
                     information."                       ""SNTP Broadcast Last Request Time"                       L"A table containing anycast information per
                     interface."                       D"Private paramters for interface:
                     server info."                       ("The interface addressed by this entry."                       -"Inet Address Type of a trusted SNTP server."                       ("Inet Address of a trusted SNTP server."                       "The stratum of this server."                       !"SNTP Anycast Last Response Time"                      `"The Operational State of the remote IP Address of
                     the SNTP Anycast.
                     unknown     - requests were not sent yet.
                     inProcess   - replies were not received yet.
                     up          - server sent SNTP packets.
                     down        - server stopped sending SNTP packets."                       �"The estimated offset of the server's clock relative to
                 the local clock, in seconds.  The host determines the
                 value of this object using the algorithm described in
                 RFC 2030."                      "The estimated round-trip delay of the server's clock
                 relative to the local clock over the network path
                 between them, in seconds. The host determines the
                 value of this object using the algorithm described in
                 RFC 2030."                       M"The Status of this SNTP anycast interface
                     information."                        "SNTP Anycast Last Request Time"                       j"A table containing trusted SNTP servers to be queried in
                     unicast or broadcast mode."                       "A trusted server."                       -"Inet Address Type of a trusted SNTP server."                       ("Inet Address of a trusted SNTP server."                       5"TRUE if participating in polling cycle, else FALSE."                       "The stratum of this server."                        "SNTP Server Last Response Time"                      _"The Operational State of the remote IP Address of
                     the SNTP Server.
                     unknown     - requests were not sent yet.
                     inProcess   - replies were not received yet.
                     up          - server sent SNTP packets.
                     down        - server stopped sending SNTP packets."                       �"The estimated offset of the server's clock relative to
                 the local clock, in seconds.  The host determines the
                 value of this object using the algorithm described in
                 RFC 2030."                      "The estimated round-trip delay of the server's clock
                 relative to the local clock over the network path
                 between them, in seconds. The host determines the
                 value of this object using the algorithm described in
                 RFC 2030."                       �"Authentication key identifier. The valid range is
                     1-4294967295.
                     Value zero, means no authentication is being done."                       -"The Status of this SNTP server information."                       "SNTP Server Last Request Time"                       �"A table containing all SNTP servers (for example: statically
                     configured, dynamically configured) to be queried in unicast
                     or broadcast mode."                       "A server entry."                       �"The SNTP server source: static means manually defined,
                     dhcpv6 means learnt from DHCP. Only static entries are
                     stored in CDB."                       �"The ifIndex from which the SNTP server configuration was
                     received (for dhcpv6 configurations). For static entries
                     the value of this field will always be 1. "                       �"The preference of SNTP server (for dhcpv6 configurations).
                     For static entries the value of this field will always be 0. "                        "SNTP server inet address type."                       "SNTP server inet address."                       5"TRUE if participating in polling cycle, else FALSE."                       "The stratum of this server."                        "SNTP Server Last Response Time"                      _"The Operational State of the remote IP Address of
                     the SNTP Server.
                     unknown     - requests were not sent yet.
                     inProcess   - replies were not received yet.
                     up          - server sent SNTP packets.
                     down        - server stopped sending SNTP packets."                       �"The estimated offset of the server's clock relative to
                 the local clock, in seconds.  The host determines the
                 value of this object using the algorithm described in
                 RFC 2030."                      "The estimated round-trip delay of the server's clock
                 relative to the local clock over the network path
                 between them, in seconds. The host determines the
                 value of this object using the algorithm described in
                 RFC 2030."                       �"Authentication key identifier. The valid range is
                     1-4294967295.
                     Value zero, means no authentication is being done."                       "SNTP Server Last Request Time"                      "Setting this scalar to true restores sntp default unicast servers.
                     Meaning: all manually configured servers are deleted, and the
                     default SNTP servers are recreated with their default values.
                     This is an 'action' scalar."                                  