 ,--
-- draft-ietf-syslog-device-mib-01
--
   �"This textual convention maps out to the severity levels
         of syslog messages.  The syslog protocol uses the values
         0 (emergency), to 7 (debug)."              �"This textual convention maps out to the facilities
         available for syslog messages.

         The value no-map(24) indicates that the appropriate
         facility will be provided by the individual applications
         on the managed entity.  If this option is not available
         on a particular entity the set of this value will fail
         with an error-status of wrongValue."               �"The UDP port number the syslog device is using to send
         requests to this syslog collector.  514 is the IANA
         assigned port number for syslog."                                                                             �"This MIB module defines a portion of the SNMP enterprise
         MIBs pertaining to the configuration and generation of
         Syslog compatible diagnostic messages." �"        Bruno Pape
         Postal: Enterasys Networks, Inc.
                 35 Industrial Way
                 Rochester, NH 03867
         Tel:    +1 603 337 0446
         Email:  bpape@enterasys.com" "200206061841Z" )"The initial version of this MIB module."       -- Thu Jun  6 18:41 GMT 2002
           �"The number of messages successfully delivered to
         the upstream side of the syslog device software
         for processing."                       �"The number of messages unable to be queued to
         the downstream side of the syslog device software
         for transmitting."                       �"The sysUpTime of the last attempt, successful or
         otherwise, to queue a message to the downstream
         side of the syslog device software."                       O"A list of attributes to control the operation of the
         syslog device."                           R"The maximum number of entries allowed in the
         snmpSyslogCollectorTable."                       L"The number of entries currently in the
         snmpSyslogCollectorTable."                      ?"This object indicates the numerically lowest available
         index within this entity, which may be used for the
         value of snmpSyslogCollectorIndex in the creation of a
         new entry in the snmpSyslogCollectorTable.

         An index is considered available if the index value
         falls within the range of 1 to 8 and is not being used
         to index an existing entry in the snmpSyslogCollectorTable
         contained within this entity.

         A value of zero indicates that all of the entries in the
         snmpSyslogCollectorTable are currently in use.

         This value SHOULD only be considered a guideline for
         management creation of snmpSyslogCollectorEntries, there
         is no requirement on management to create entries based
         upon this index value."                       2"A table containing Syslog collector information."                      "Defines the information to generate syslog messages to
         an aggregating agent or collector.

         Entries within this table with an access level of read-
         create MUST be considered non-volatile and MUST be
         maintained across entity resets."                       :"A unique arbitrary identifier for this syslog collector."                       S"Administratively assigned textual description of this
         syslog collector."                       �"The type of Internet address by which the Syslog
         collector is specified in snmpSyslogCollectorAddress.

         Not all address types may be supported."                      �"The Internet address for the Syslog message collector.

         The use of DNS domain names is discouraged, and agent
         support for them is optional.  Deciding when, and how
         often, to resolve them is an issue.  Not resolving them
         often enough means you might lose synchronization with
         the associated entry in the DNS server, and resolving
         them too often might leave you without access to the
         Syslog collector during critical network events."                      i"The UDP port number the syslog device is using to send
         requests to this syslog collector.
         If an entity only supports sending messages using a
         single UDP port to all collectors then this may optionally
         be implemented read-only, in which case the current
         value of snmpSyslogCollectorDefaultUdpPort will be used."                      q"The syslog facility (local0-local7) that will be encoded
         in messages sent to this collector.

         If an entity only supports encoding a single facility in
         all messages to all collectors then this may optionally be
         implemented read-only, in which case the current value of
         snmpSyslogCollectorDefaultFacility will be used."                      �"The maximum severity level of the messages that SHOULD
         be forwarded to the syslog collector.  The higher the level,
         the lower the severity.

         If an entity only supports filtering based on a single
         severity level for all collectors then this may optionally
         be implemented read-only, in which case the current value
         of snmpSyslogCollectorDefaultSeverity will be used."                       �"This is a count of messages not sent to this collector
         because the severity level of the message was above
         snmpSyslogCollectorSeverity, the higher the level,
         the lower the severity."                      C"This object allows for the dynamic creation and deletion
         of entries within the snmpSyslogCollectorTable as well as
         the activation and deactivation of these entries.

         When this object's value is set to notInService(2) this
         collector will not be sent any messages, nor will any of its
         counters be incremented.

         The agent SHOULD not delete a row, except in the case of
         the loss of persistent storage.

         Refer to the RowStatus convention for further details on
         the behavior of this object." )"RFC2579 (Textual Conventions for SMIv2)"                    �"The default UDP port number that the managed entity is
         using to send syslog messages.

         This value will be used as the default value for
         snmpSyslogCollectorUdpPort when creating rows in the
         snmpSyslogCollectorTable and either:

         1.)  no value is specified for snmpSyslogCollectorUdpPort, or

         2.)  snmpSyslogCollectorUdpPort is implemented read-only.

         If snmpSyslogCollectorUdpPort is implemented read-only,
         and this value is changed, it SHOULD affect the UDP
         port that is used to send syslog messages to all
         collectors as soon as it is practical.

         This parameter value is maintained across system reboots."                      �"The default syslog facility (local0-local7) that will be
         encoded in syslog messages.

         This value will be used as the default value for
         snmpSyslogCollectorFacility when creating rows in the
         snmpSyslogCollectorTable and either:

         1.)  no value is specified for snmpSyslogCollectorFacility, or

         2.)  snmpSyslogCollectorFacility is implemented read-only.

         If snmpSyslogCollectorFacility is implemented read-only,
         and this value is changed, it SHOULD affect the syslog
         facility that is encoded in all syslog messages as soon
         as it is practical.

         This parameter value is maintained across system reboots."                      )"The default syslog message severity level that will be used
         to filter all syslog messages.

         This value will be used as the default value for
         snmpSyslogCollectorSeverity when creating rows in the
         snmpSyslogCollectorTable and either:

         1.)  no value is specified for snmpSyslogCollectorSeverity, or
         2.)  snmpSyslogCollectorSeverity is implemented read-only.

         The higher the severity level, the less critical it is.

         If snmpSyslogCollectorSeverity is implemented read-only,
         and this value is changed, it SHOULD affect the syslog
         message severity level that will be used to filter all
         syslog messages as soon as it is practical.

         This parameter value is maintained across system reboots."                           �"This is a table of applications on the managed entity
          that provide individual control over the severity level
          of the messages that they will generate."                       �"An individual application that provides that ability
         to control the messages that it generates based on a
         severity level.

         MUST be considered non-volatile and MUST be maintained
         across entity resets."                       5"A unique arbitrary identifier for this application."                       T"Textual description of this application, assigned by
         the managed entity."                      $"An abbreviation of the textual description for this
         application, assigned by the managed entity.

         i.e. 'STP' for 'Spanning Tree Protocol', etc.

         This provides a mapping between the textual descriptions
         and the mnemonics used in the syslog messages."                       �"The maximum severity level of the messages from this
         application that SHOULD be forwarded to the syslog
         device software for processing.

         The higher the severity level, the more verbose the
         messages."                               H"A collection of objects providing syslog message
         statistics."                 o"A collection of objects providing descriptions of
         syslog collectors for sending system messages to."                 �"A collection of objects providing a mechanism to
         control the severity level of the messages individual
         application may generate."                "A collection of objects providing default values for
         the syslog collectors that can optionally be overridden
         on a per collector basis with snmpSyslogCollectorFacility,
         snmpSyslogCollectorSeverity, or snmpSyslogCollectorUdpPort."                     l"The compliance statement for devices that support sending
         system messages to a syslog collector."   �"The snmpSyslogApplication group is mandatory only for
         agents which support configuring the severity level of
         the messages that individual applications may generate." �"Write access is not required for implementations that
         do not support configuring the UDP port number on a
         per collector basis." �"Write access is not required for implementations that
         do not support configuring the syslog facility on a
         per collector basis." �"Write access is not required for implementations that
         do not support configuring the message severity level
         on a per collector basis." �"Write access is not required for implementations that
         do not support configuring the UDP port number at all,
         or do not want to support a configurable default.
         Hopefully, it is only the later." �"Write access is not required for implementations that
         do not support configuring the syslog facility at all,
         or do not want to support a configurable default.
         Hopefully, it is only the later." �"Write access is not required for implementations that
         do not support configuring the syslog facility at all,
         or do not want to support a configurable default.
         Hopefully, it is only the later."                