    )"If all the echo request packets in this sequence have been
                 responded by valid echo responses, this object is set to ok.
                 Otherwise this status indicates the problem. bad-reply-data indicates
                 that the reply data is not equal to the response data."                                                                     ="The private MIB module definition for RND applications MIB." W"5488 Marvell Lane
					Santa Clara, CA 95054
					USA

					Website:  www.marvell.com" "200406010000Z" "Initial version of this MIB."                       K"Indicates whether alarms should be issued to the high-level
         NMS "                       {"Indicates the minimal period of time which must pass after issuing
         an alarm before issuing the same alarm again."                       0"The table of monitored elements of the network"                       %" The row definition for this table."                       )"The IP address of the monitored element"                       ("The community of the monitored element"                       D"The label assigned by the network manager to the monitored element"                       �"The default period of time between two consecutive pollings of the
     monitored element for the value of an object instance. If no other polling
     interval is specifically assigned to the monitored object instance, this
     one will be used"                       �"The default file path of the log-file which will contain the polling
     results for the monitored element. If no other file path is specifically
     assigned to the monitored object instance, this log-file will be used."                       x"It is used to manage the monitored elements table and indicates
          the current monitoring status of an element."                       �"The table of monitored object instances. Each monitored object instance
     belongs to a monitored element previously entered in the
     rndMonitoredElementsTable. "                       %" The row definition for this table."                       �"A label assigned by the network manager to a monitored element to
     which this monitored object instance belongs. This label must have
     been previously entered in an instance of rndMonitoredElementLabel"                       L"The label assigned by the network manager to the monitored object instance"                      !"The symbolic object type name of the object to which the monitored object
     instance belongs (as it appears the MIB module definition). In case of
     ambiguity the <MIB module name> : <object type name> format should be used.
     An instance of rndMonitoredObjectName need not be assigned any value, if
     the corresponding instance of rndMonitoredObjectIdentifier is assigned a
     value, since any one of these, together with the object instance
     identifier, suffices to unambigously identify the monitored object
     instance."                      �"The object identifier of the object to which the monitored object
     instance belongs.
     An instance of rndMonitoredObjectIdentifier need not be assigned any value, if
     the corresponding instance of rndMonitoredObjectName is assigned a value,
     since any one of these, together with the object instance identifier,
     suffices to unambigously identify the monitored object instance."                       A"The instance identifier (key) of the monitored object instance."                      
"The syntax of the monitored object instance (i.e., the syntax of the object
     type of the object to which the monitored instance belongs).
     Need not be assigned any value if the corresponding instance of
     rndMonitoredObjectName has been assigned a value"                       f"The period of time between two consecutive retrievals of the monitored
     object instance's value."                       �"The value of the monitored object instance, the exceeding of which
     will cause the generation of an alarm to the high-level management
     station."                       �"If the value of the monitored object instance falls below the value
     assigned to rndAlarmMinTreshold, an alarm to the high-level management
     station will be issued."                       u"The entire path of the file in which the results of the monitoring
     of this object instance should be recorded."                       �"It is used to manage the monitored object instances table and
          indicates the current monitoring status of an object instance."                       ""                       �"The table of monitored object instances. Each monitored object instance
     belongs to a monitored element previously entered in the
     rndMonitoredElementsTable. "                       %" The row definition for this table."                      x"The number of the MIB file in the list MIB files supported by the
     Mid-Level management station. The order of the MIB files in this
     list must reflect the the IMPORT relation between the MIBS contained
     in the MIB files, i.e., if MIB A IMPORTS FROM MIB B, the file containing
     MIB A must have a lesser index in this table than the file containing
     MIB B."                       2"The path of the MIB file in the MIB file server."                       a"Indicates if the file should be fetched after setting this entry from the
     MIB file server."                       +"It is used to manage the MIB files table."                      h"Indicates whether the current SET SNMP PDU contains hardware
         configuration (i.e., normally read-only variables). SET of such
         variables in the Mid-level management station will be allowed only
         if this variable is included in the SNMP PDU and its value is true.
         Its value as returned in  a GET SNMP PDU will always be false."                      �"eraseSimulatedConfiguration instructs the MLNMS to erase all the
         simulated configuration from its configuration data-base (CDB). This
         the only accepted value for SNMP SET statements and will never be
         returned in SNMP GET statements.
         simulatedConfigurationPresent indicates that the MLNMS currently has
         a simulated configuration.
         simulatedConfigurationErased indicates that the MLNMS currently has
         no simulated configuration."                      ^"This table indicates which MIB variables are row status fields which
     control the status of the entry to which they belong. This table also
     indicates which (integer!) value of these MIB variables will cause, if
     present in a SNMP SET PDU, the deletion of the conceptual row instance
     to which the SET MIB variable instance belongs."                       9" The row definition for the rndDeleteValuesTable table."                       �"The name of the row status field. This name may not necessarily be any
     name which is present in the MIBs loaded into the MLNMS station."           "--   MAX-ACCESS         read-only
          �"The object id of the row status field. If the rndRowStatusVariableName is
     a name present in the MIBs loaded into the MLNMS, this MIB
     variable is not required, but if given, it must match the object id known
     to the MLNMS.
     The variable identified by rndRowStatusVariableName and/or rndRowStatusObjectId
     must be a read-write MIB variable of type INTEGER which belongs to an
     entry (i.e, is a child of a MIB variable of type SEQUENCE)."                       �"The value of the variable identified by rndRowStatusVariableName and/or
     rndRowStatusObjectId, which, if present in a SNMP SET PDU, will cause
     the deletion of the conceptual row instance which the SET MIB variable
     instance belongs."                       0"It is used to delete an entry from this table."                           9"This table indicates which MIB variables are simulated."                       ?" The row definition for the rndSimulatedVariablesTable table."                       "The index entry."                       �"The object id of the simulated variable. If the simulated variable belongs
     to a table entry, the entire entry is henceforth supported."                       ("Variable for not supported simulation."                       0"It is used to delete an entry from this table."                       ^"This variable enables the user supplying the correct code to use the
     SNMP test feature."                       J"This variable enables the authorized user to test various SNMP features."                       J"This variable enables the authorized user to test the SNMP UNDO feature."                       J"This variable enables the authorized user to test the SNMP SERV package."                       h"This variable enables the authorized user to retrieve the results of
    a the SNMP SERV package test."                       �"This variable enables the authorized user to indicate that after its reset
     the device should create a buffer pool for SNMPServ process PDU
     testing."                      �"This variable enables the authorized user to to indicate that after
         its reset the device should create ITC clients for SnmpServ data
         requests clients.
         The semantics of this variable is as follows:
            subidentifier 2*n indicates whether the client n is synchronous(1) or
            asynchronous(2)
            subidentifier 2*n+1 indicates the number of simulatneous requests
            expected by client n."                           "Table for testing SNMP agent."                       &"An entry in the rlTstBasicRateTable."                       ""                       ""                       ""                       ""                           +"This reflects the MIB tree of the device."                       2" Each row shows a tree relationsship in the MIB."                       &" The father in a tree relation ship."                        " Running index for this table."                       #" The son in a tree relation ship."                       <" The object identifier of the son in a tree relation ship."                       B" The grand father (i.e father's father) in a tree relation ship."                           W"A table for retreiving information on the current instances in a requested MIB table."                       }"A row with index rlMibTableInstancesInfoTableName = 'xTable' contains
        information on current instances in 'xTable'."                       <"The name of the MIB table (for examle: snmpCommunityTable)"                       �"Get operation on this object will retreive the current number of instances
        in the MIB table specified by the index rlMibTableInstancesInfoTableName."                           ""A table of ping request entries."                      "A ping request entry.

        A management station wishing to create an entry should
        first generate a pseudo-random serial number to be used
        as the index to this sparse table. It must also create in the same
        PDU the associated instance of the address object. It should also
        modify in the same PDU the default values for the other configuration
        objects if the defaults are not appropriate.

        Once the sequence completes, the management station should
        retrieve the values of the status objects of interest, and
        should then delete the entry.  In order to prevent old
        entries from clogging the table, entries will be aged out,
        but an entry will never be deleted within 5 minutes of
        completing."                       �"The address of the device to be pinged.
         Once an instance of this object is created, its
         value can not be changed."           --    Rsyntax OCTET STRING
           V"Specifies the number of ping packets to send to the target
        in this sequence."                     --    DEFVAL { 5 }
 �"Specifies the size of ping packets to send to the target
        in this sequence.  The lower and upper boundaries of this
        object are implementation dependent."                     --    DEFVAL { 100 }
 |"Specifies the amount of time to wait for a response to a
        transmitted packet before declaring the packet 'dropped.'"           --  Units
--    milliseconds
         --    DEFVAL { 2000 }
 �"Specifies the minimum amount of time to wait before sending
        the next packet in a sequence after receiving a response.
        The actual delay may be greater due to internal task scheduling."           --  Units
--    milliseconds
         --    DEFVAL { 0 }
<"Specifies whether or not a rsPingCompletion trap should
         be issued on completion of the sequence of pings.  If such a
         trap is desired, the NMS should ensure that the community table
         contains an instance specified by the NMSs IP address with
         rndCommunityTrapsEnable = trapsEnable."                     --  DEFVAL { false }
 X"The number of ping packets that have been sent to the target
        in this sequence."                       ^"The number of ping packets that have been received from the
        target in this sequence."                       �"The minimum round trip time of all the packets that have
         been sent in this sequence. The value returned to a GET request
         is meaningless if no ping response in a sequence has been received
         yet."           --  Units
--    milliseconds
           �"The average round trip time of all the packets that have
         been sent in this sequence.The value returned to a GET request
         is meaningless if no ping response in a sequence has been received
         yet."           --  Units
--    milliseconds
           �"The maximum round trip time of all the packets that have
         been sent in this sequence.The value returned to a GET request
         is meaningless if no ping response in a sequence has been received
         yet."           --  Units
--    milliseconds
          "If all the echo request packets in this sequence have been
         responded by valid echo responses, this object is set to ok.
         Otherwise this status indicates the problem. bad-reply-data indicates
         that the reply data is not equal to the response data."                       �"The time-stamp indicating the time and date of creation or last
         update of this request. The format of the time-stamp is
         dd/mm/yyyy hh:mm:ss"                       !"The status of this table entry."                       ""A table of ping request entries."                      "A ping request entry.

        A management station wishing to create an entry should
        first generate a pseudo-random serial number to be used
        as the index to this sparse table. It must also create in the same
        PDU the associated instance of the address object. It should also
        modify in the same PDU the default values for the other configuration
        objects if the defaults are not appropriate.

        Once the sequence completes, the management station should
        retrieve the values of the status objects of interest, and
        should then delete the entry.  In order to prevent old
        entries from clogging the table, entries will be aged out,
        but an entry will never be deleted within 5 minutes of
        completing."                       �"The address type of the device to be pinged.
                Once an instance of this object is created, its
                value can not be changed."                       �"The address of the device to be pinged.
                Once an instance of this object is created, its
                value can not be changed."                       ^"Specifies the number of ping packets to send to the target
                in this sequence."                       �"Specifies the size of ping packets to send to the target
                in this sequence.  The lower and upper boundaries of this
                object are implementation dependent."                       �"Specifies the amount of time (in milliseconds) to wait for a response to a
                transmitted packet before declaring the packet 'dropped.'"                       �"Specifies the minimum amount of time (in milliseconds) to wait before sending
                the next packet in a sequence after receiving a response.
                The actual delay may be greater due to internal task scheduling."                      \"Specifies whether or not a rsPingCompletion trap should
                 be issued on completion of the sequence of pings.  If such a
                 trap is desired, the NMS should ensure that the community table
                 contains an instance specified by the NMSs IP address with
                 rndCommunityTrapsEnable = trapsEnable."                       `"The number of ping packets that have been sent to the target
                in this sequence."                       f"The number of ping packets that have been received from the
                target in this sequence."                       �"The minimum round trip time (in milliseconds) of all the packets that have
                been sent in this sequence. The value returned to a GET request
                is meaningless if no ping response in a sequence has been received yet."                       �"The average round trip time (in milliseconds) of all the packets that have
                been sent in this sequence.The value returned to a GET request
                is meaningless if no ping response in a sequence has been received yet."                       �"The maximum round trip time (in milliseconds) of all the packets that have
                been sent in this sequence.The value returned to a GET request
                is meaningless if no ping response in a sequence has been received yet."                      &"If all the echo request packets in this sequence have been
                responded by valid echo responses, this object is set to ok.
                Otherwise this status indicates the problem. bad-reply-data indicates
                that the reply data is not equal to the response data."                       �"The time-stamp indicating the time and date of creation or last
                update of this request. The format of the time-stamp is
                dd/mm/yyyy hh:mm:ss"                       !"The status of this table entry."                       !"The status of this table entry."                           $"The power supply redundancy table."                       7"The status of power supply redundancy for this table."                       _"This number identifies the module backed up
         by power supply redundancy in the stack."                       7"The status of a power supply redundancy of the entry."                           n"The name of NVRAM application that will be erased
         after reset or ALL if all NVRAM should be erased."                       "The NVRAM application table."                       ("The status of NVRAM application table."                       '"The index of NVRAM application table."                       %"The name of application used NVRAM."                                  