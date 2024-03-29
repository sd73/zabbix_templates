                                                           7"This private MIB module defines DHCP CL private MIBs." W"5488 Marvell Lane
					Santa Clara, CA 95054
					USA

					Website:  www.marvell.com" "200701020000Z" "Initial revision."               l" The (conceptual) table mentione IP address which must be
              released/renewed on the interface."                       1"An entry (conceptual row) in dhcpClActionTable."                       g" The interface which the action is implemented for
        or NULL if it implemented for all device. "                       �"The status of this entry.  Creating the entry renewing Dhcp
              address on the interface; destroying the entry release Dhcp
              address on the interface."                       0" This option specifies the name of the client."                       �"DHCP Approval feature status - enable (True) or desable (False).
                Must be True only if DHCP Approval supported, device has only one
                ip interface and default ip exist."                       $"IP addresses waiting for approval."                       )"An entry in rlDhcpApprovalWaitingTable."                       "IP interface ifIndex."                       ""IP Address waiting for approval."                       "Mask waiting for approval."                       &"Default gateway of received address."                       2"Action for waiting ip address (approve/decline)."                       ("An entry in rlDhcpApprovalActionTable."                       "IP interface ifIndex."                       "IP Address."                       "IP Address mask."                        "Approve or decline ip address."                       $"Action MIB for DHCP Renew command."                       $"The row definition for this table."                       �"Action to apply. When the field is renew_force_autoconfig the meaning is that
                     every time when DHCP option 67 is received, the configuration is downloaded from DHCP server.
                     The default value is false."                       �"The configuration file name that loaded into the device.
        The filename is a relative path on the TFTP server, without the server IP address."                       V"Defines whether the configuration file can be downloaded from DHCP packet option 67."                       -"Manually configured TFTP server IP Address."                       ,"Currently selected TFTP server IP Address."                       4"Currently selected TFTP server IP Address's origin"                       $"The manually configured file name."                       '"The selected configuration file name."                       /"The selected configuration files name origin."                      �"DHCP Client flag is relevant when host parameter dhcp_client_active_on_start is TRUE.
                 If the MIB has non zero value the meaning is that DHCP client has removed from configuration by the user
                 on the interface and signs to application not to add DHCP client entry. Otherwise (zero value) - the meaning is
                 that DHCP client entry must be added. "                       �"Setting this MIB value to True/False enables/disables DHCP
                 auto-update process in the device (through option 125)."                       @"Describes the status of current/last DHCP auto-update process."                      "Setting this MIB value to True will force DHCP auto-config process
                 after next reboot. This configuration will take effect only during
                 the time period between the next 2 reboots of the device (like
                 a deffered action)."                       �"Setting this MIB value to True configures automatic saving of
                 running-cdb into startup-cdb, to be done at the end of successful
                 DHCP auto-config process to running-cdb."                       @"Describes the status of current/last DHCP auto-config process."                      �"Describes the auto-config process protocol.
                 tftp - only the TFTP protocol is used by auto-configuration.
                 scp - only the SCP protocol is used by auto-configuration.
                 auto-(Default) Auto-configuration uses the TFTP or SCP protocol
                 depending on the configuration file's extension.
                 If this option is selected, the extension parameter may be
                 specified or, if not, the default extension is used."                       i"Describes the SCP file extention.
                 When no vlaue is specified, 'scp' extension is used."                       3"Currently selected TFTP server Inet Address type."                       ."Currently selected TFTP server inet Address."                       �" A table for configuring default values for auto-config/ auto-update process.
              These values during the process, in case no appropriate
              data was received from the DHCP server."                       A"An entry (conceptual row) in rlDhcpClManualAutoConfigDataTable."                       b"The index of this row. There is only one entry in this table,
                 whose index is 1."                       9"Manually configured inet Address type of remote server."                       4"Manually configured inet Address of remote server."                       m"Manually configured indirect file name, that holds the
                 name of the image file to download."                       l" The (conceptual) table mentione IP address which must be
              released/renewed on the interface."                       1"An entry (conceptual row) in dhcpClActionTable."                       g" The DHCPv4 client informational table. Contains information received by DHCP client from DHCP server"                       &"IP Address allocated by DHCP server."                       +"IP Address mask allocated by DHCP server."                       "T1 timer value."                       "T2 timer value."                       "Default Gateway IP Address."                       $" Specifies the name of the client."                       *"The Domain name received by DHCP client."                       /"The Tftp server name received by DHCP client."                       G"Name of file to use in configuration process received by DHCP client."                       '"The timezone received by DHCP client."                       F"Image filename to use in autoupdate process received by DHCP client."                       )"The pnp string received by DHCP client."                       C" The table saved the list of DNS servers received by DHCP client."                       4"An entry in rlDhcpClInformationDnsServerListTable."                       9" The IfIndex in rlDhcpClInformationDnsServerListEntry. "                       " The priority of the entry. "                       ,"DNS server address received by DHCP client"                       D" The table saved the list of Tftp servers received by DHCP client."                       5"An entry in rlDhcpClInformationTftpServerListTable."                       :" The IfIndex in rlDhcpClInformationTftpServerListEntry. "                       " The priority of the entry. "                       -"Tftp server address received by DHCP client"                      �"Describes the auto-update process protocol.
                 tftp - only the TFTP protocol is used by auto-update.
                 scp - only the SCP protocol is used by auto-update.
                 auto-(Default) Auto-update uses the TFTP or SCP protocol
                 depending on the configuration file's extension.
                 If this option is selected, the extension parameter may be
                 specified or, if not, the default extension is used."                       ~"Describes the SCP file extention used for auto-update.
                 When no vlaue is specified, 'scp' extension is used."                      �"DHCP Client flag is relevant when host parameter dhcp_client_active_on_start is TRUE.
                 If the MIB has non zero value the meaning is that DHCP client has removed from configuration by the user
                 on the interface and signs to application not to add DHCP client entry. Otherwise (zero value) - the meaning is
                 that DHCP client entry must be added. "                       D"An entry (conceptual row) in rlDhcpClEnabledByDefaultRemovedTable."                       :" The removed dhcp client interface, enabled by default. "                       "The status of this entry."                                  