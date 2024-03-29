     ."Embedde Web Service Support Enabled/Disabled"               "Embedde Web Protocol"                                                                     D"This private MIB module adds MIBs to EMBWEB (Embedded Web Server)." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "200607030000Z" "Initial revision."               1"Embedded web version, the current version is 2."                       ;"Link for the vendor web site used to retrive information."                       �"Security Table whose entry is composed of username and
         Password, group and access privileges for each user.
         The access privileges can be one or more of none, read-files,
         read-write, and super."                       $"The row definition for this table."                       "The User name."                       "The User password."                       "Access rights for this user ."                       Q"IP Address to send the traps to.0 means doesn't want
         to receive traps."                       "Port to send the traps to."                       9"SNMP version supported by this user. For the agent use."                       F"The status of the security table entry. It's used to delete an entry"                       �"This variable defines the maximum time period
         in seconds that a TCP connection can stay open
         without depending on the TCP timeout mechanism"                       �"This variable defines the maximum time period
         in seconds that a TCP connection can wait for
         data which hasn't arrived "                       �"This variable defines the maximum HTTP Idle time
         period in seconds for a TCP connection.If another request
         isn't made at this period, the connection is closed.
         The value 0 is supported as 'no timeout'."                       d"This variable sets the status of the embedded Web Server
        files to either closed or opened."                       z"Specifies if the device supports Embedded WEB:
                true  - suppotrs
                false - does not support"                       A"Specifies the TCP port the embedded web uses for HTTP sessions."                       "Enable/Disable HTTP sessions"                       B"Specifies the TCP port the embedded web uses for HTTPS sessions."                       "Enable/Disable HTTPS sessions"                       S"Value of country name field that will appear when a new certificate is generated."                       ]"Value of state or province name field that will appear when a new certificate is generated."                       O"Value of locality field that will appear when a new certificate is generated."                       S"Value of organization field that will appear when a new certificate is generated."                       R"Value of common name field that will appear when a new certificate is generated."                       r"Setting to a regenerateCertificate causes a new certifiacte to be generated and to be used for all new sessions."                       �"Setting the RSA key size that will be created when rlEmWebRegenerateCertificateAndKey will be
         set to regenerateCertificateAndKey."                       -"MIB variable for setting debug information."                       ?"The URL through which the EWS of this device can be accessed."                       �"This object indicates whether the EWS is required to display non-present entities
         (like non-present ports, IP addresses on non-present ports etc.) on it's screens."                       A"This object indicates whether a certificate has been generated."                       �"By setting this scalar https is notified that the certificate and key with this index
        should be used for new https sessions. Even if the certifcate or key doesn't exist yet
        the operation will succeed."                       K"Specifies the TCP port the embedded web uses for The Extra Port sessions."                       <"Specifies the Extra Port Type HTTP/HTTPS for all sessions."                       �"This variable defines the maximum HTTPS Idle time
         period in seconds for a web connection.If another request
         isn't made at this period, the connection is closed.
         The value 0 is supported as 'no timeout'."                       "."                       $"The row definition for this table."                       "The Service Id."                       "Service name"                       �"Indicates whether the service is enabled or not. if set to 'default' will
         the service to go back to its initialization default status."                       z"Indicates whether the TCP port on which service is listening.
         value 0 will set the service to it's default port"                       /"The maximal number of users for this service."                      9"Indicates the protocol that the service operates on. Note that the
         general HTTP service can have only the http value and the general HTTPS
         service can have only the https value.
         setting the field to 'default' will cause the service to go back to it's
         initialization settings."                      "Indicates the certificate used by the service if rlEmWebServiceProtocol is
         https. A value of 0 indicates that a certificate has not been assigned to
         this service. setting this field to 1000 will cause the service to go
         back to it's initialization value."                      @"This variable defines the maximum Idle time period in seconds for a TCP connection.
         If another request isn't made at this period, the connection is closed.
         The value 0 is supported as 'no timeout'. Setting this field to 3932160
         will cause the service to go back to it's initialization value."                      j"A user connected to the device via an HTTP session is
         automatically logged out after this amount of time (in seconds) regardless of the amount of HTTP activity.
         Maximal value is 168 hours.
         The value 0 is supported as 'no timeout'. Setting this field to 3932160
         will cause the service to go back to it's initialization value."                       �"A user connected to the device via an HTTP session is
         automatically logged out after this amount of time regardless of the amount of HTTP activity.
         Maximal value is 168 hours.
         The value 0 is supported as 'no timeout'."                       �"A user connected to the device via an HTTPS session is
         automatically logged out after this amount of time regardless of the amount of HTTPS activity.
         Maximal value is 168 hours.
         The value 0 is supported as 'no timeout'."                              