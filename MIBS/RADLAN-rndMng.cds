                                                           C"The private MIB module definition for RND general management MIB." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "201212040000Z" "201204040000Z" "200902240000Z" "200710240000Z" "200606200000Z" "200406010000Z" "Added rlSysNameTable object." !"Added rlScheduledReload object." -"Added rlRunningCDBequalToStartupCDB object." !"Added rlGroupManagement branch." "Added rlRebootDelay object" "Initial version of this MIB."               p"Identification of an RND device. The device type for each
      integer clarifies the sysObjectID in MIB - II."                       �"This variable enables the operator to perform one of the
      specified actions on the tables maintained by the network device.
      Send actions require support of proprietery File exchange
      protocol."                       �"The name of the file used internally by RND for transferring
      tables maintained by network devices, using a prorietary File
      exchange protocol."           -- SIZE 256
           H"Indicates the snmp versions that are supported by
        this device."                       N"Indicates the snmp support version that is supported by
        this device."                       �"Enables measurement of the device CPU utilization.
         In order to get real values for rlCpuUtilDuringLastSecond, rlCpuUtilDuringLastMinute
         and rlCpuUtilDuringLast5Minutes, the value of this object must be true."                       �"Percentage of the device CPU utilization during last second.
         The value 101 is a dummy value, indicating that the CPU utilization was
         not measured (since measurement is disabled or was disabled during last second)."                       �"Percentage of the device CPU utilization during last minute.
         The value 101 is a dummy value, indicating that the CPU utilization was
         not measured (since measurement is disabled or was disabled during last minute)."                       �"Percentage of the device CPU utilization during the last 5 minutes.
         The value 101 is a dummy value, indicating that the CPU utilization was
         not measured (since measurement is disabled or was disabled during last 5 minutes)."                      H"Setting the variable will cause the device to reboot rlRebootDelay timeticks
         from the moment this variable was set.
         If not set, the variable will return a value of 4294967295.
         If set to 4294967295, reboot action is cancelled.
         The maximum delay is set by the host parameter: reboot_delay_max"                           �"Setting value query will cause the device to query for UPNP devices on the network.
         The device will always return value idle for GET."                      �"Sets desired interval between queries for UPNP devices on the network.
         Setting 0 will result in no such query.
         Note that the actual query interval might be less than the set value
         if another application running in the device requested a shorter interval.
         Likewise setting 0 will not necessarily stop periodic queries if another
         application is still interested in periodic polling."                       +"The last time rlGroupMng MIB was updated."                       ,"The table showing the discovered  devices."                       %" The row definition for this table."                       0"The IP address type of the discovered device  "                       +"The IP address of the discovered device  "                       �"A subdevice within the rlGroupMngDeviceId. Only subdevices with greatest
     specifity will be kept (specific UUID device is more specific than  basic device which is in turn
     more specific than root device.  "                       3"The discovery protocol description of the device."                       ;"Indicates whether the device has Group Management enable."                       �"The LLDP device id. If  it  is empty the device id is not known (either it is a non-MTS device or  a non-LLDP supporting MTS device."                       ="The vendor of the device. If empty the vendor is not known."                       �"The caching time advertised by the device. If no update for this
         device has been received during this caching time the system will assume
         that the device has left the network and will therefore remove its entry
         from the table."                       T"The URL inidicating the location of the XML presenting the details of  the device."                       _"The value of sysUpTime at the moment of last reception of an  update for
       this device. "                       I"Indicates the object identifier of the private MIB root in this device."                       R"Indicates whether there are changes in running CDB that were not saved in flash."                       �"Clear MIB value for scalars or tables:
     Delete all entries for tables with dynamic entries.
     Set table entries default values for table with static entries.
     Set scalar default value."                      ("Used for requesting a delayed reload of the device in a
        specific desired time, should be configured in one of the following formats:
        'athhmmddMM' , 'inhhhmmm' or '', setting this value to an empty string
        will result in request for cancellation of a (previously) committed system reload.
        to complete the request, the 'rlScheduledReloadCommit' must also be set to either
        TRUE (apply) or FALSE (discard) for completion of the transaction.
        failing from doing so will result in an indefinite lock of the API"                       �"Displays the most recently requested scheduled-reload due date
         in 'inhhhmmathhmmssddMMYYYYw' format. where 'w' stands for weekDay (1-7).
         if there is no pending/scheduled reload request, string will be empty"                       �"Displays the most recently approved/committed scheduled-reload date
         in 'inhhhmmathhmmssddMMYYYYw' format. where 'w' stands for weekDay (1-7).
         if there is no committed scheduled-reload , string will be empty"                      G"commits the pending scheduled-reload request, and completes the transaction.
        when this value is set to TRUE, the system is instructed to perform the
        requested reload operation at the requested date/time
        as was given in 'rlScheduledReload'.
        setting this value to FALSE will discard the request."                       ."Holds the current system name configuration."                       #"The row definition of this table."                       �"The system name source. 'static' if defined by user through CLI,
        'dhcpv6' or 'dhcpv4' if received by DHCP network protocol."                       y"The IfIndex from which the system-name configuration was received,
         for static entries, value will always be 1."                       �"An administratively-assigned name for this managed node.
         By convention, this is the node's fully-qualified domain
         name.  If the name is unknown, the value is the zero-length
         string."                       _"The row status variable, used according to
         row installation and removal conventions."                       ;"Enable/Disable Link flapping error disable in the switch."                       �"The default value for the administratively-assigned name for this managed node.
             If the name is unknown, the value is the zero-length string."                              