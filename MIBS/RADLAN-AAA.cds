     !"Protocols, used for accounting."               ^"Specifies the status of TCP connection
                   between device and TACACS+ server."               f"Line physical port type,the
                rlAAAPortDontCare must be the maximum value in the enum."               "Method list type."               A"Specifies TCP connection type between device and TACACS+ server"               S"Line service type.rlAAAServiceTypeDontCare must be the maximum value in the enum."               "Method list type."                                                                                                 7"The table specifies all methods list per method name."                       $"The row definition for this table."                       "Line Method List Name"                       X" first method type that will be used in the method
                       linked list."                       Y" second method type that will be used in the method
                       linked list."                       T"3th method type that will be used in the method
                      linked list."                       V" 4th method type that will be used in the method
                       linked list."                       T"5th method type that will be used in the method
                      linked list."                       2"method list status can be destroy or createAndGo"                       B"Specifies the method list that will be used for  authentication."                               x"The private MIB module definition for Authentication, Authorization and Accounting
                 in Radlan devices." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "201006210000Z" $"Added this MODULE-IDENTITY clause."               �"MIB's version, the current version is 3. The difference in rlAAACreationDateSystemPasswordLevel15 and
        rlAAALocalUserEntry."                       �"Determines the number of retries for each method
                      (Radius, local passwords, local users table and
                      tacacs)."                       �"Specifies whether AAA will use Radius. When to use
                      Radius exactly       depends on its position in the
                      methods list. "                       �"Specifies whether AAA will use Tacacs. When to use
                      Tacacs exactly       depends on its position in the
                      methods list."                       �"Specifies whether AAA will use the local users table.
                      When to use the       table exactly depends on its
                      position in the methods list. "                       �"Specifies whether AAA will use the system password.
                      When to use the       passwords exactly depends on its
                      position in the methods list. "                       �"Specifies whether AAA will use the line password.
                     When to use the       passwords exactly depends on its
                     position in the methods list. "                       �"Specifies whether AAA will use the always success method.
                      When to use that       method exactly depends on its
                      position in the methods list. "                      �"This mib show whether Radius is supported in AAA. If the
                      value is false Radius will not be used as an
                      authentication and accounting method. If the value
                      is true Radius will be used by AAA for authentication and
                      accounting if the the AAA was configured to do so
                      (by setting the appropriate mibs)."                      �"This mib show whether Tacacs+ is supported in AAA. If the
                      value is       false Tacacs+ will not be used as an
                      authentication and accounting       method. If the value
                      is true Tacacs+ will be used by AAA for authentication and
                      accounting if the the AAA was configured to do so
                      (by setting the appropriate mibs)."                      �"This mib show whether the local users db is supported in
                      AAA.If the value is false the local users db will not be
                      used as an authentication and accounting method. If the
                      value is true the local users db will be used by AAA for
                      authentication and accounting method if the the AAA was
                      configured to do so (by setting the appropriate mibs)."                      �"This mib show whether system password is supported in AAA.
                      If the value is false system password will not be used as
                      an authentication and accounting method. If the value is
                      true the system password will be used by AAA for
                      authentication and accounting method if the the AAA was
                      configured to do so (by setting the appropriate mibs)."                      �"This mib show whether line password is supported in AAA.
                     If the value is false line password will not be used as an
                     authentication and accounting method. If the value is true
                     the line password will be used by AAA for authentication and
                     accounting method if the the AAA was configured
                      to do so (by setting the appropriate mibs)."                      �"This mib show whether line always success method is
                      supported in AAA.If the value is false always success
                      method will not be used as an authentication and
                      accounting method. If the value is true the always
                      success method will be used by AAA for authentication and
                      accounting method if the the AAA was configured
                      to do so (by setting the appropriate mibs)."                       7"The table specifies all methods list per method name."                       $"The row definition for this table."                       "Line Method List Name"                       Y" first method type that will be used in the method
                        linked list."                       Z" second method type that will be used in the method
                        linked list."                       V"3th method type that will be used in the method
                        linked list."                       W" 4th method type that will be used in the method
                        linked list."                       V"5th method type that will be used in the method
                        linked list."                       W" 6th method type that will be used in the method
                        linked list."                       W" 7th method type that will be used in the method
                        linked list."                       2"method list status can be destroy or createAndGo"                       6"flag that indicates whether authorizatoin is enabled"                      �"The table specifies all lines, their passwords and their
                    authorizations level .the table ordered lexicography by
                    the line name. when a new line is being authenticate the
                    search in line table is from the first entry in table
                    till it find the first entry that fit application input
                    line parameters  ."                       $"The row definition for this table."                       " the physical port type ."                       �"Identifies the ifindex for which this entry can be used.
                  If index 0 means don't care (can be used for all if indices).
                  For port type console the value could be only 0."                       "the service type"                       �"Method list Name for level 1 .That name points to the method
                 list table .It is the key in method list table .in that way
                 we can reach the methods list to be used for that line"                       �"Method list Name for level 2 that name points to the method
                  list table it is the key in method list table .by that way
                  we can reach the methods list to be used for that line"                       �"Method list Name for level 3 that name points to the method
                  list table it is the key in method list table .by that way
                  we can reach the methods list to be used for this line"                       �"Method list Name for level 4-that name points to the method
                  list table it is the key in method list table .by that way
                  we can reach the methods list to be used for this line"                       �"Method list Name for level 5 that name points to the method
                  list table it is the key in method list table .in that way
                  we can reach the methods list to be used for that line"                       �"Method list Name for level 6 that name points to the method
                  list table it is the key in method list table .in that way
                  we can reach the methods list to be used for that line"                       �"Method list Name for level 7 that name points to the method
                  list table it is the key in method list table .in that way
                  we can reach the methods list to be used for that line"                       �"Method list Name for level 8 that name points to the method
                  list table it is the key in method list table .in that way
                  we can reach the methods list to be used for that line"                       �"Method list Name for level 9 that name points to the method
                  list table it is the key in method list table .in that way
                  we can reach the methods list to be used for that line"                       �"Method list Name for level 10 that name points to the method
                 list table it is the key in method list table .in that way
                 we can reach the methods list to be used for that line"                       �"Method list Name for level 11 that name points to the method
                 list table it is the key in method list table .in that way
                 we can reach the methods list to be used for that line"                       �"Method list Name for level 12 that name points to the method
                 list table it is the key in method list table .in that way
                 we can reach the methods list to be used for that line"                       �"Method list Name for level 13 that name points to the method
                 list table it is the key in method list table .in that way
                 we can reach the methods list to be used for that line"                       �"Method list Name for level 14 that name points to the method
                 list table it is the key in method list table .in that way
                 we can reach the methods list to be used for that line"                       �"Method list Name for level 15 that name points to the method
                    list table it is the key in method list table .in that way
                    we can reach the methods list to be used for that line"                      �"Line Password. Zero length password is considered as no
                   password. Password with zero length means that in case this
                   password is the method to be used a method fail is returned
                   and no other method is being used.
                   allowed formats:
                   a. Display string starting with '$' for clear text
                   b. Encrypted password: starts with # sign followed by 32
                     octets representing Hex Decimal value(in the 0-9 a-f A-F
                     range)
                   the $ and # as first octet are a directive to indicate what
                   is the type of password and are not not  part of it"                       +"Line status can be destroy or createAndGo"                       "Line locked status"                       *"Number of last consecutive failed logins"                      "The period of time in days, during which the password,
         is considered valid for login. Value of 0 means never expired.
         The actual range is product specific.
         After this time the system may allow limited number of logins
         to change the password. "                       �"If Line password aging is active, the date on which
                     The current password will expire.
                     Otherwise zero size string"                       d"The table specifies all usernames, their passwords and
                      their authorizations."                       $"The row definition for this table."                       "Local User Name"                      �"Local User Password .The password can be null
                   allowed formats:
                   a. Display string starting with '$' for clear text
                   b. Encrypted password: starts with # sign followed by 32
                     octets representing Hex Decimal value(in the 0-9 a-f A-F
                     range)
                   the $ and # as first octet are a directive to indicate what
                   is the type of password and are not not  part of it"                       "Local User Privilage"                       "Local User status"                       "Local User locked status"                       *"Number of last consecutive failed logins"                      "The period of time in days, during which the password,
         is considered valid for login. Value of 0 means never expired.
         The actual range is product specific.
         After this time the system may allow limited number of logins
         to change the password. "                       �"If User password aging is active, the date on which
                      The current password will expire.
                      Otherwise zero size string"                       f"The date on which the current password was created.
                      Otherwise zero size string"                      �"system Password for level 1.
                   allowed formats:
                   a. Display string starting with '$' for clear text
                   b. Encrypted password: starts with # sign followed by 32
                     octets representing Hex Decimal value(in the 0-9 a-f A-F
                     range)
                   the $ and # as first octet are a directive to indicate what
                   is the type of password and are not not  part of it"                      �"system Password for level 2
                      allowed formats:
                      a. Display string starting with '$' for clear text
                      b. Encrypted password: starts with # sign followed by 32
                        octets representing Hex Decimal value(in the 0-9 a-f A-F
                        range)
                       the $ and # as first octet are a directive to indicate what
                       is the type of password and are not not  part of it"                      �"system Password for level 3
                      allowed formats:
                      a. Display string starting with '$' for clear text
                      b. Encrypted password: starts with # sign followed by 32
                        octets representing Hex Decimal value(in the 0-9 a-f A-F
                        range)
                       the $ and # as first octet are a directive to indicate what
                       is the type of password and are not not  part of it"                      �"system Password for level 4
                      allowed formats:
                      a. Display string starting with '$' for clear text
                      b. Encrypted password: starts with # sign followed by 32
                        octets representing Hex Decimal value(in the 0-9 a-f A-F
                        range)
                      the $ and # as first octet are a directive to indicate what
                      is the type of password and are not not  part of it"                      �"system Password for level 5
                      allowed formats:
                      a. Display string starting with '$' for clear text
                      b. Encrypted password: starts with # sign followed by 32
                        octets representing Hex Decimal value(in the 0-9 a-f A-F
                        range)
                      the $ and # as first octet are a directive to indicate what
                      is the type of password and are not not  part of it"                      �"system Password for level 6
                      allowed formats:
                      a. Display string starting with '$' for clear text
                      b. Encrypted password: starts with # sign followed by 32
                        octets representing Hex Decimal value(in the 0-9 a-f A-F
                        range)
                      the $ and # as first octet are a directive to indicate what
                      is the type of password and are not not  part of it"                      �"system Password for level 7
                      allowed formats:
                      a. Display string starting with '$' for clear text
                      b. Encrypted password: starts with # sign followed by 32
                        octets representing Hex Decimal value(in the 0-9 a-f A-F
                        range)
                      the $ and # as first octet are a directive to indicate what
                      is the type of password and are not not  part of it"                      �"system Password for level 8
                      allowed formats:
                      a. Display string starting with '$' for clear text
                      b. Encrypted password: starts with # sign followed by 32
                        octets representing Hex Decimal value(in the 0-9 a-f A-F
                        range)
                      the $ and # as first octet are a directive to indicate what
                      is the type of password and are not not  part of it"                      �"system Password for level 9
                      allowed formats:
                      a. Display string starting with '$' for clear text
                      b. Encrypted password: starts with # sign followed by 32
                        octets representing Hex Decimal value(in the 0-9 a-f A-F
                        range)
                      the $ and # as first octet are a directive to indicate what
                      is the type of password and are not not  part of it"                      �"system Password for level 10
                      allowed formats:
                      a. Display string starting with '$' for clear text
                      b. Encrypted password: starts with # sign followed by 32
                        octets representing Hex Decimal value(in the 0-9 a-f A-F
                        range)
                      the $ and # as first octet are a directive to indicate what
                      is the type of password and are not not  part of it"                      �"system Password for level 11
                      allowed formats:
                      a. Display string starting with '$' for clear text
                      b. Encrypted password: starts with # sign followed by 32
                        octets representing Hex Decimal value(in the 0-9 a-f A-F
                        range)
                      the $ and # as first octet are a directive to indicate what
                      is the type of password and are not not  part of it"                      �"system Password for level 12
                      allowed formats:
                      a. Display string starting with '$' for clear text
                      b. Encrypted password: starts with # sign followed by 32
                        octets representing Hex Decimal value(in the 0-9 a-f A-F
                        range)
                      the $ and # as first octet are a directive to indicate what
                      is the type of password and are not not  part of it"                      �"system Password for level 13
                      allowed formats:
                      a. Display string starting with '$' for clear text
                      b. Encrypted password: starts with # sign followed by 32
                        octets representing Hex Decimal value(in the 0-9 a-f A-F
                        range)
                      the $ and # as first octet are a directive to indicate what
                      is the type of password and are not not  part of it"                      �"system Password for level 14
                      allowed formats:
                      a. Display string starting with '$' for clear text
                      b. Encrypted password: starts with # sign followed by 32
                        octets representing Hex Decimal value(in the 0-9 a-f A-F
                        range)
                      the $ and # as first octet are a directive to indicate what
                      is the type of password and are not not  part of it"                      �"system Password for level 15
                      allowed formats:
                      a. Display string starting with '$' for clear text
                      b. Encrypted password: starts with # sign followed by 32
                        octets representing Hex Decimal value(in the 0-9 a-f A-F
                        range)
                      the $ and # as first octet are a directive to indicate what
                      is the type of password and are not part of it"                       A"The table holds all current users that have been authenticated."                       $"The row definition for this table."                       "User Index"                       ^"The service that the user uses. Service dont care is console
                      terminal."                       "User remote IP address."                       "User Name"                       "User level"                       "User if index."                       "Date of use creation."                       "Time in MS since user login."                           ]"This variable enables the user supplying the correct code to use the
     AAA test feature."                       E"This table enables a user to perform a simulation of authentiction."                       $"The row definition for this table."                       B"User entry index (the number is used just to identify the user)."                       " the physical port type ."                       Z" line ifIndex can configue to be zero witch means
                      Don't-care value"                       "the service type"                       P"Shows the ststus of the operation and what is expected from the
       'user'."                      F"By setting this field the process moves from one state to another. On
       creation the value must be begin.
       When the value of rlAAATestUserAuthenticationStatus is needPassword
       the value can be set to receivePassword or abort.
       When the value of rlAAATestUserAuthenticationStatus is needUsername
       the value can be set to receiveUsername or abort.
       When the value of rlAAATestUserAuthenticationStatus is success or failure
       the value can be set to delete or abort.
       When the value of rlAAATestUserAuthenticationStatus is aborted the value
       can be set to delete.
       When the value of rlAAATestUserAuthenticationStatus is deleted the value
       can not be set to any value.
       When the value of rlAAATestUserAuthenticationStatus is waiting the value
       can be set or abort."                       �"If the acion was set to receivePassword than this field should hold
       the value of the password.
       If the action was set to receiveUsername than this field should hold
       the value of the username. "                       i"Entry status. The entry can not be deleted. It will be deleted if
       unchanged more than 2 minutes."                           *"MIB's version, the current version is 1."                       �"The maximum time (in seconds) to wait for TACACS+
        server to reply. This MIB is used if the value of the
        field rlTacacsServerTimeout is 0."                       �"Secret key to be shared with TACACS+ server. This MIB is
        used if the value of the field rlTacacsServerUseGlobalDefaultKey
        is false."                       �"IP address of the interface to use with TACACS+ server.
        A value of 0.0.0.0  for this object disables source
        address  specification. This MIB is used if the value of the
        field rlTacacsServerSource is 255.255.255.255."                       d"The (conceptual) table listing the TACACS+
        servers with which the cliient shares a secret."                       p"An entry (conceptual row) representing a TACACS+
        server with which the client shares
        a secret."                       O"The IP address of the TACACS+ server
        referred to in this table entry."                       C"The TCP port the client establishes connections with this server."                      "Specifies TCP connection type between device and TACACS+ server.
        Either a single open connection between device and server
        (rlTacacsSingleConnection), or open/close connection per
        communication session (rlTacacsPerSessionConnection)."                       I"Specifies status TCP connection type between device and TACACS+ server."                       �"The maximum time (in seconds) to wait for this TACACS+ server to reply.
        Value of 0 means that rlTacacsGlobalDefaultTimeout value is used."                       �"If this field is set to true the value in field rlTacacsServerKey
        is ignored and instead the value in the MIB
        rlTacacsGlobalDefaultKey is used. Otherwise the value in
        rlTacacsServerKey is used."                       3"Secret key to be shared with this TACACS+ server."                       �"IP address of the interface to use with this server.
        A value of 0.0.0.0  for this object disables source
        address  specification. Value of 255.255.255.255 means that
        rlTacacsGlobalDefaultSourceIpInterface will be used."                       �"Determines the order in which the TACACS+ servers will be used,
        when 0 is the highest priority. If more than one server share the
        same priority - they will be used in lexicgoraphic order
        (the order of entries in this table)."                       ""                       �"IP address of the interface to use with TACACS+ server.
        A NULL for this object disables source
        address specification. This MIB is used if the value of the
        field rlTacacsServerInetSourceInterface is 255.255.255.255."                       d"The (conceptual) table listing the TACACS+
        servers with which the cliient shares a secret."                       p"An entry (conceptual row) representing a TACACS+
        server with which the client shares
        a secret."                       p"The Inet address type of TACACS+ server reffered to
         in this table entry .IPv6Z type is not supported."                       Y"The Inet Address address of the TACACS+ server
        referred to in this table entry."                       C"The TCP port the client establishes connections with this server."                      "Specifies TCP connection type between device and TACACS+ server.
        Either a single open connection between device and server
        (rlTacacsSingleConnection), or open/close connection per
        communication session (rlTacacsPerSessionConnection)."                       I"Specifies status TCP connection type between device and TACACS+ server."                       �"The maximum time (in seconds) to wait for this TACACS+ server to reply.
        Value of 0 means that rlTacacsGlobalDefaultTimeout value is used."                       �"If this field is set to true the value in field rlTacacsServerKey
        is ignored and instead the value in the MIB
        rlTacacsGlobalDefaultKey is used. Otherwise the value in
        rlTacacsServerKey is used."                       3"Secret key to be shared with this TACACS+ server."                       A"The Inet address type of the interface to use with this server."                      T"Inet address of the interface to use with this server.
        A value of NULL for this object disables source
        address specification for this server.
        A value of 255.255.255.255 maens that the global default
        rlTacacsGlobalDefaultSourceIpInterface or
        rlTacacsGlobalDefaultSourceIPv6Interface values are used."                       �"Determines the order in which the TACACS+ servers will be used,
        when 0 is the highest priority. If more than one server share the
        same priority - they will be used in lexicgoraphic order
        (the order of entries in this table)."                       ""                       L"Controls whether SysLog messages
         should be issued on login events"                      Y"The minimum length of password for local user authentication
         defined in field rlAAALocalUserPassword in rlAAALocalUserTable.
         The value applies only to new or updated user passwords.
         In actual implementation the range may be reduced to (0 | N-64),
         where N is a platform dependent (for TIC compatibility N=8) "                      _"The number of most recent password,
         previously defined for Local User Table, Line Table,
         System Password Table for specific entity.
         This list used for password reusing prevention.
         Value of 0 means none. Changing the value
         does not cause the loss of history.
         History Max size is product specific."                       �"The time in day, which an old password
         may be used in password history check.
   Changing the value does not cause the
         loss of history."                       G"Controls whether successful logins are
         written to login file"                       i"The table holds successful login history
                       for all users. This table is read-only."                       $"The row definition for this table."                       "User Name"                       a"Index in History for specific user.
                      Lower number means more recent login."                       _"The service that the user uses.
                      Service don't care is console terminal."                       "User remote IP address."                       "local Ip Address on login."                       P"Date and time in the SysLog Format:
                      DD-MMM-YYYY HH:MM:SS"                       D"Mrid - indicates to which instance the connection was established "                       n"The table holds successful login history
                       for Line passwords. This table is read-only."                       $"The row definition for this table."                       " the physical port type."                       �"Identifies the ifindex for which this entry can be used.
                  If index 0 means don't care
                  (can be used for all if indices).
                  For port type console the value could be only 0."                       "the service type"                       a"Index in History for specific user.
                      Lower number means more recent login."                       _"The service that the user uses.
                      Service don't care is console terminal."                       "User remote IP address."                       "local Ip Address on login."                       P"Date and time in the SysLog Format:
                      DD-MMM-YYYY HH:MM:SS"                       D"Mrid - indicates to which instance the connection was established "                       p"The table holds successful login history
                       for system passwords. This table is read-only."                       $"The row definition for this table."                       "User Name"                       a"Index in History for specific user.
                      Lower number means more recent login."                       _"The service that the user uses.
                      Service don't care is console terminal."                       "User remote IP address."                       "local Ip Address on login."                       P"Date and time in the SysLog Format:
                      DD-MMM-YYYY HH:MM:SS"                       D"Mrid - indicates to which instance the connection was established "                      ""The table specifies all system password and
                    their security properties: is password locked
                    due to wrong password, when and how it was locked
                    or last unsuccessful login information, expiry date
                    of the password."                       $"The row definition for this table."                       "System password level"                       "System password locked status"                       *"Number of last consecutive failed logins"                      "The period of time in days, during which the password,
         is considered valid for login. Value of 0 means never expired.
         The actual range is product specific.
         After this time the system may allow limited number of logins
         to change the password. "                       �"If System password aging is active, the date,
                     on which the current password will expire.
                     Otherwise zero size string"                       �"The number of consecutive unsuccessful login attempts
         before user is locked. Value of 0 means no limit. The actual range is
         product specific. TIC requirement is 3."                       �"An action MIB variable setting with value
   of Local User Name will unlock this user.
   The value of this variable is not saved to
   non volatile storage. Read of this variable
   always returns zero length display string."                       �"An action MIB variable setting with value
   of Level will unlock the system password
   for this level. The value of this variable
   is not saved to non volatile storage.
   Read of this variable always returns zero.
   Zero (0) does no action."                       �"The table specifies lines statuses.
                        Users cannot access the product from
                        remote based on a password of the locked line.
                        This table enables to unlock lines."                       $"The row definition for this table."                       " the physical port type ."                       �"Identifies the ifindex for which this entry can be used.
                      If index 0 means don't care (can be used for all if indices).
                      For port type console the value could be only 0."                       "the service type"                       �"The entry exists only if a line exist.
                      Setting this field to value usable results in
                      resetting the password failure counter,
                      and unlock a locked user."                       �"The table specifies per every system level, old and new passwords.
                       Serves for verification the old password and setting a new password."                       <"The row of system password verification and setting table."                       ,"System password Privelege Level to be set."                       %"Old system password to be verified."                        "New system password to be set."                       &"New system password to be confirmed."                       o"Method, used for accounting of management sessions,
                     none denotes Accounting is disabled."                       k"Method, used for accounting of 802.1x sessions,
                     none denotes Accounting is disabled."                       �"The table holds all current users that have been authenticated.
                        it coexist with rlAAAUserTable to support IPv4 and IPv6"                       $"The row definition for this table."                       "User Index"                       ^"The service that the user uses. Service dont care is console
                      terminal."                        "User remote INET address Type."                       "User remote INET address."                       "User Name"                       "User level"                       "User if index."                       "Date of use creation."                       "Time in MS since user login."                       �"The table holds successful login history
                       for all users. This table is read-only.
                       it coexist with rlAAALocalLoginHistTable to support IPv4 and IPv6"                       $"The row definition for this table."                       "User Name"                       a"Index in History for specific user.
                      Lower number means more recent login."                       _"The service that the user uses.
                      Service don't care is console terminal."                       "User remote IP address Type."                       "User remote IP address."                       !"local Ip Address Type on login."                       "local Ip Address on login."                       P"Date and time in the SysLog Format:
                      DD-MMM-YYYY HH:MM:SS"                       D"Mrid - indicates to which instance the connection was established "                       �"The table holds successful login history
                       for Line passwords. This table is read-only.
                       it coexist with rlAAALinePassLoginHistTable to support IPv4 and IPv6"                       $"The row definition for this table."                       " the physical port type."                       �"Identifies the ifindex for which this entry can be used.
                  If index 0 means don't care
                  (can be used for all if indices).
                  For port type console the value could be only 0."                       "the service type"                       e"Index in HistInetory for specific user.
                      Lower number means more recent login."                       _"The service that the user uses.
                      Service don't care is console terminal."                       "User remote IP address Type."                       "User remote IP address."                       !"local Ip Address Type on login."                       "local Ip Address on login."                       P"Date and time in the SysLog Format:
                      DD-MMM-YYYY HH:MM:SS"                       D"Mrid - indicates to which instance the connection was established "                       �"The table holds successful login history
                       for system passwords. This table is read-only.
                       it coexist with rlAAASystemLoginHistTable to support IPv4 and IPv6"                       $"The row definition for this table."                       "User Name"                       a"Index in History for specific user.
                      Lower number means more recent login."                       _"The service that the user uses.
                      Service don't care is console terminal."                       "User remote IP address Type."                       "User remote IP address."                       !"local Ip Address Type on login."                       "local Ip Address on login."                       P"Date and time in the SysLog Format:
                      DD-MMM-YYYY HH:MM:SS"                       D"Mrid - indicates to which instance the connection was established "                       S"Specifies whether password complexity rules
                     must be applied."                       "Indicates minimal number of character classes
                     from which the password should contain characters
                     if password complexity enabled.
                     charater classes are : lower case, upper case,
                     digits, special characters."                       t"Specifies whether new password can be as
                     same as old password if password complexity enabled."                       �"Indicates that no character in new password can't be
                     repeated more than 3 times if password complexity enabled."                       q"Specifies whether new password can be as
                     same as user name if password complexity enabled."                       y"Specifies whether new password can be as
                     same as manufacturer name if password complexity enabled."                      e"Determines whether password aging should be applied.
                     Tic doesn't have to be enabled.
                     If == 0 then aging is disabled.
                     Note: Actual aging will not be enabled if system
                           doesn't have real time clock until, clock is
                           set either by user or SNTP."                       �"The table specifies per every local user, old and new passwords.
                       Serves for verification the old password and setting a new password."                       @"The row of local user password verification and setting table."                       "Local user name."                       )"Local user old password to be verified."                       $"Local user new password to be set."                       +"Local user new password for confirmation."                       r"The date on which the system Password for level 15 was created.
                      Otherwise zero size string"                       �"if this MIB is set to TRUE then when user will use 'password Recovery'
                     to the device , the configuration will automatically be erased."                       �"The table holds s list of keywords that a valid password must not contain. 
                       Excluded keyword checking is case-insensitive."                       $"The row definition for this table."                        "Password Excluded keyword name"                       &"Status can be destroy or createAndGo"                                   �"MIB's version, the current version is 2.
           1 - original version.
           2 - field rlRadiusServerUsage was added to rlRadiusServerEntry"                       �"The maximum time (in seconds) to wait for this RADIUS
        server to reply. This MIB is used if the value of the
        field rlRadiusServerUseGlobalDefaultTimeout is false."                       �"The number of times to try contacting this RADIUS server. This MIB
        is used if the value of the field
        rlRadiusServerUseGlobalDefaultRetries is false."                       �"Number of minutes that any RADIUS server is ignored after
        it has failed. This MIB is used if the value of the field
        rlRadiusServerUseGlobalDefaultDeadtime is false."                       �"Secret key to be shared with this RADIUS server. This MIB is
        used if the value of the field rlRadiusServerUseGlobalDefaultKey
        is false."                       �"IPv4 address of the interface to use with this server.
        A value of 0.0.0.0  for this object disables source
        address  specification. This MIB is used if the value of the
        field rlRadiusServerUseGlobalDefaultSource is false."                       c"The (conceptual) table listing the RADIUS
        servers with which the cliient shares a secret."                       o"An entry (conceptual row) representing a RADIUS
        server with which the client shares
        a secret."                       N"The IP address of the RADIUS server
        referred to in this table entry."                       Z"The UDP port the client is using to send authentication
        requests to this server."                       V"The UDP port the client is using to send accounting
        requests to this server."                       �"The maximum time (in seconds) to wait for this RADIUS
        server to reply. Value of 0 means that rlRadiusGlobalDefaultTimeout."                       w"The number of times to try contacting this RADIUS server. Value of
        0 means that rlRadiusGlobalDefaultRetries."                       �"Number of minutes that any RADIUS server is ignored after
        it has failed. Value of 2001 means that rlRadiusGlobalDefaultDeadtime
        will be used."                       �"If this field is set to true the value in field rlRadiusServerKey
        is ignored and instead the value in the MIB
        rlRadiusGlobalDefaultKey is used. Otherwise the value in
        rlRadiusServerKey is used."                       2"Secret key to be shared with this RADIUS server."                       �"IP address of the interface to use with this server.
        A value of 0.0.0.0  for this object disables source
        address  specification. Default value of 255.255.255.255
        means that rlRadiusGlobalDefaultSource will be used."                       �"Determines the order in which the servers will be used, when 0 is
        the highest priority. If more than one server share the same
        priority - they will be used in lexicgoraphic order
        (the order of entries in this table)."                       ""                       >"Determines actions for which the radius server will be used."                       c"The (conceptual) table listing the RADIUS
        servers with which the cliient shares a secret."                       o"An entry (conceptual row) representing a RADIUS
        server with which the client shares
        a secret."                       o"The Inet address type of RADIUS server reffered to
         in this table entry .IPv6Z type is not supported."                       �"The Inet address of the RADIUS server
        referred to in this table entry.Only one instance
        of specified address can be added at the same time."                       �"The UDP port the client is using to send authentication
        requests to this server.The zero value can be used only
        if rlRadiusServerInetAcctPortNumber value is not zero."                       �"The UDP port the client is using to send accounting
        requests to this server.The zero value can be used only
        if rlRadiusServerInetAuthPortNumber value is not zero."                       �"The maximum time (in seconds) to wait for this RADIUS
        server to reply. Value of 0 means that rlRadiusGlobalDefaultTimeout."                       w"The number of times to try contacting this RADIUS server. Value of
        0 means that rlRadiusGlobalDefaultRetries."                       �"Number of minutes that any RADIUS server is ignored after
        it has failed. Value of 2001 means that rlRadiusGlobalDefaultDeadtime
        will be used."                       �"If this field is set to true the value in field rlRadiusServerKey
        is ignored and instead the value in the MIB
        rlRadiusGlobalDefaultKey is used. Otherwise the value in
        rlRadiusServerKey is used."                       2"Secret key to be shared with this RADIUS server."                       N"The rlRadiusServerInetSource address type.
         IPv6Z type not supported"                      "Inet address of the interface to use with this server.
         To provide backward compatibility the
         value of 0.0.0.0  for this object will be used to
         disables source address  specification.
         Default value of 255.255.255.255 means that
         rlRadiusGlobalDefaultSource will be used for Ipv4
         servers and rlRadiusIPv6GlobalDefaultSource
         will be used for Ipv6 servers.IPv6Z type not supported.
         Only valid IP address will be used.
         Application will set default value."                       �"Determines the order in which the servers will be used, when 0 is
        the highest priority. If more than one server share the same
        priority - they will be used in lexicgoraphic order
        (the order of entries in this table)."                       ""                       �"Determines actions for which the radius server will be used.
        WirelessAuthentication will be used if wireless is supported."                       �"The value of sysUpTime at the time this server has response.
            If there is no request to the server,  this object contains a zero value."                       0"If true, this server is currently in deadtime."                       �"If this field is set to true the value in field rlRadiusServerInetServerDead
        is false, and it is the highest priority radius server (lowest number). The next connection to
        a radius server will be through this server."                       �"IPv6 address of the interface to use with this server.
        A NULL value for this object disables source
        address  specification. "                      