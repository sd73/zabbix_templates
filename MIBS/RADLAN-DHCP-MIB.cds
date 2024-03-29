     )"Ip Dhcp server option type enumeration."                                                                     N"The private MIB module definition for DHCP server support in Radlan devices." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "200310180000Z" "Initial version of this MIB."               /"DHCP MIB's version, the current version is 4."                       B"Maximal number non-ip vlans that DHCP relay can be confirued on."                     --  DEFVAL { 0 }
 B"Current number non-ip vlans that DHCP relay can be confirued on."                     --  DEFVAL { 0 }
 ."Enable or disable the use of the DHCP relay."                     --  DEFVAL { false }
 L"This variable shows whether the device can function as a DHCP Relay Agent."                       1"The DHCP Relay Next Servers configuration Table"                       �"The row definition for this table. DHCP requests are relayed to the
        specified next server according to their threshold values."                       �"The IPAddress of the next configuration server. DHCP Server may
       act as a DHCP relay if  this parameter is not equal to 0.0.0.0."                       �"DHCP requests are relayed only if their SEC field is greater or
        equal to the threshold value in order to allow local DHCP Servers
        to answer first."                     --  DEFVAL  {0}
 �"This variable displays the validity or invalidity of the entry.
        Setting it to 'destroy' has the effect of  rendering it inoperative.
        The internal effect (row removal) is implementation dependent."                       ("The enabled DHCP Relay Interface Table"                       e"The row definition for this table.  The user can add entry when DHCP relay is enabled on Interface."                       6"The Interface on which an user enables a DHCP relay "                       �"The flag is used to set a DHCP relay interface to use GiAddr in the standard way. Default is TRUE.
        The field is not supported."                       5"Entry status. Can be destroy, active or createAndGo"                       z"This table contains one entry. The entry contains port list and vlan lists of interfaces that have configured DHCP relay"                       ]" The entry contains port list and vlan lists of interfaces that have configured DHCP relay."                        "Index in the table. Already 1."                       !"DHCP relay Interface Port List."                       &" DHCP relay Interface VlanId List 1."                       &" DHCP relay Interface VlanId List 2."                       &" DHCP relay Interface VlanId List 3."                       &" DHCP relay Interface VlanId List 4."                       �"Enable or Disable the use of the DHCP Server.
         For a router product the default value is TRUE. For a switch product the default is FALSE."                       G"This variable shows whether the device can function as a DHCP Server."                       1"Describes where DHCP Server database is stored."                       q"This variable shows maximum number of clients that can be
         supported by DHCP Server dynamic allocation."                       J"This variable shows number of active (valid) entries stored in database."                       g"The value is always false. Setting this variable to true causes erasing all entries in DHCP database."                       N"Enable or Disable the use of the DHCP probe before allocating an IP address."                       �"Indicates the peiod of time in milliseconds the DHCP probe will wait before
        issuing a new trial or deciding that no other device on the network
        has the IP address which DHCP considers allocating."                       �"Indicates how many times DHCP will probe before deciding that no other
        device on the network has the IP address which DHCP
        considers allocating."                       N"Contains a default network pool name. Used in case of one network pool only."                       Y"Table of IP Addresses allocated by DHCP Server by static
      and dynamic allocations."                       ]"The row definition for this table.
        Parameters of DHCP allocated IP Addresses table."                       3"The IP address that was allocated by DHCP Server."                       �"The subnet mask associated with the IP address of this entry.
        The value of the mask is an IP address with all the network bits
        set to 1 and all the hosts bits set to 0."                       R"Unique Identifier for client. Either physical address or DHCP Client Identifier."                       E"Identifier Type. Either physical address or DHCP Client Identifier."                       d"Client Host Name. DHCP Server will use it to update DNS Server.
        Must be unique per client."                       n"Mechanism of allocation IP Address by DHCP Server.
        The only value that can be set by user is manual."                       "Age time of the IP Address."                       �"Ip address pool name. A unique name for host pool static allocation,
        or network pool name in case of dynamic allocation."                       �"This variable points (serves as key) to appropriate set of parameters
        in the DHCP Server configuration parameters table."                       ^"The row status variable, used according to
        row installation and removal conventions."                       Z"Lease time of the IP Address. Get a value of network pool lease time at allocation time."                       0"State of allocation IP Address by DHCP Server."                        "The name of DHCP Option Table."                       /"The DHCP Dynamic Server's configuration Table"                       v"The row definition for this table. Parameters sent in
        as a DHCP Reply to DHCP Request with specified indices"                       *"The name of DHCP dynamic addresses pool."                       -"The first IP address allocated in this row."                       ,"The last IP address allocated in this row."                       �"The subnet mask associated with the IP addresses of this entry.
        The value of the mask is an IP address with all the network bits
        set to 1 and all the hosts bits set to 0."                       �"Maximum lease-time in seconds granted to a requesting DHCP client.
        For automatic allocation use 0xFFFFFFFF.
        To exclude addresses from allocation mechanism, set this value to 0."                       L"Enable or Disable the use of the DHCP probe before allocating the address."                       %"Total number of addresses in space."                       $"Free number of addresses in space."                       �"This variable points (serves as key) to appropriate set of parameters
        in the DHCP Server configuration parameters table."                       ^"The row status variable, used according to
        row installation and removal conventions."                       D"Number of available addresses in space - all range minus excluded."                       0"The number of preallocated addresses in space."                       5"The number of Valid (allocated) addresses in space."                       +"The number of expired addresses in space."                       ,"The number of declined addresses in space."                        "The name of DHCP Option Table."                       )"The DHCP Configuration Parameters Table"                       c"The row definition for this table.
        Each entry corresponds to one specific parameters set."                       U"This value is a unique index for the
        entry in the rlDhcpSrvConfParamsTable."                       C"The IP of next server for client to use in configuration process."                     --    DEFVAL { 0.0.0.0 }
 E"The mame of next server for client to use in configuration process."                       6"Name of file for client to request from next server."                       �"The value of option code 3, which defines default routers list.
        Each IP address is represented in dotted decimal notation format
        with ';' between them."                       �"The value of option code 4, which defines time servers list.
        Each IP address is represented in dotted decimal notation format
        with ';' between them."                       �"The value of option code 6, which defines the list of DNSs.
        Each IP address is represented in dotted decimal notation format
        with ';' between them."                       ;"The value option code 15, which defines the domain name.."                       �"The value option code 44, which defines the list of NETBios
        Name Servers. Each IP address is represented in dotted decimal
        notation format with ';' between them."                       �"The value option code 46, which defines the NETBios node type.
        The option will be added only if rlDhcpSrvConfParamsNetbiosNameList
        is not empty."                       �"The value of site-specific option 128, which defines Community.
        The option will be added only if rlDhcpSrvConfParamsNmsIp is set."                       U"The value of site-specific option 129,
        which defines IP of Network Manager."                     --    DEFVAL { 0.0.0.0 }
 "The sequence of option segments.  Each option segment
         is represented by a triplet <code/length/value>.
         The code defines the code of each supported option.
         The length defines the length of each supported option.
         The value defines the value of the supported option.
         If there is a number of elements in the value field,
         they are divided by ','. Each element of type IP address
         in value field is represented in dotted decimal notation
         format."                       ^"The row status variable, used according to
        row installation and removal conventions."                       �"Controls sending an IP address defined on the input interface
             as a default router when an default router is not configured as option."                       ="This variable shows number of network pools (not excluded)."                       /"This variable shows number of excluded pools."                       B"This variable shows number of static entries stored in database."                       ^"This variable shows number of dynamic and automatic (not static) entries stored in database."                       F"This variable shows number of entries (any type) stored in database."                       5"This variable shows number of preallocated entries."                       0"This variable shows number of expired entries."                       1"This variable shows number of declined entries."                       2"This variable shows number of automatic entries."                       ""The DHCP Option Parameters Table"                       c"The row definition for this table.
        Each entry corresponds to one specific parameters set."                       W"This value is a unique index for the
        entry in the rlDhcpSrvOptionParamsTable."                       "The option code."                       "The option type."                       "The option value."                       "The option description."                       ^"The row status variable, used according to
        row installation and removal conventions."                        "The DHCP Auxulary Option Table"                       "The row definition for this table.
        Each entry contains pair option code/option type that permitted by option command."                       "The option Code."                       "The option enumeration."                       ("The minimal value of this option Code."                       ("The maximal value of this option Code."                              