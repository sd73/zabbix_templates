     !"Specifies the deny attack types"               S"Specifies Martian-address origin: pre-defined (reserved) or statically configured"               !"Specifies well-known DoS attack"               6"Specifies protocol type of the well-known DoS attack"               0"Specifies the TCP SYN attack protection mode ."               5"Specifies the operating modes of the security-suite"               0"Specifies the TCP SYN attack protection mode ."               B"Specifies the dropping SYN, FIN flags enabled TCP packets status"                                                                     �"The private MIB module definition for blocking attacks
                such as DoS(=Denial Of Service), SYN and well known viruses Attacks
                in Radlan devices." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "200601090000Z" w"Add per port dos attack table suport
                rlSecuritySuiteDenyTypesTable ,rlSecuritySuiteDoSSynAttackTable."               >"This scalar globally enables/disables the DoS attack Suite. "                       ^"This table enables/disable well-know DoS attacks,
        applied globally to all ifIndexes."                       F"Each entry in this table describes one well known DoS attack address"                       #"A well-known DoS attack to enable"                       )"Enable/Disable a well-known DoS attack "                       �"This read-only table used to present the detailed attributes
        of each well-known DoS attack. Used for presentation propose only."                       H"Each entry in this table describes one well known DoS attack address ,"                       ?"Specifies the protocol type of the relevant well-known attack"                       E"Specifies the source tcp/udp port of the relevant well-known attack"                       J"Specifies the destination tcp/udp port of the relevant well-known attack"                      P"This scalar globally enables/disables discarding of the IP
     well-known addresses described below:
    -------------------------------------------------------------------------------
    |  Address block               |  Present use
    |-------------------------------------------------------------------------------
    |0.0.0.0/8                     |  Addresses in this block refer to source hosts
    |(except 0.0.0.0/32            |  on 'this' network.
    | as source address)           |
    |------------------------------------------------------------------------------
    |127.0.0.0/8                   | This block is assigned for use as the Internet host loop-back address.
    |-----------------------------------------------------------------------------------------------------
    |192.0.2.0/24                  | This block is assigned as 'TEST-NET'
    |                              | for use in documentation and example code.
    |---------------------------------------------------------------------------
    |224.0.0.0/4 as source.        | This block, formerly known as the Class D address space,
    |                              | is allocated for use in IPv4 multicast address assignments.
    |-------------------------------------------------------------------------------------------
    |240.0.0.0/4                   |
    |(except 255.255.255.255/32    | This block, formerly known as the Class E address space, is reserved.
    | as destination address)      |
    |-------------------------------------------------------------------------------------------------------
   "                       �"This read-only table specifies all current configured Martian addresses -
        both pre-defined (=reserved) and used-configured (=static) addresses"                       �"Each entry in this table describes one Martian address ,
   packets with this address as IP source or IP destination, are discarded."                       Y"An IP address to discard all packets with that address as source
        or destination"                       G"Specify the net mask that comprise the destination IP address prefix."                       M"Specific the entry origin: pre-defined (reserved) of statically configured."                       �"This table specifies the Martian addresses -
        the addresses that packets with these IP addressed as source or
        destination are discarded."                       �"Each entry in this table describes one Martian address ,
   packets with this address as IP source or IP destination, are discarded."                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       w"This table contains IP address and rate, to limit DoS SYN attacks from
        a specific IP address and interface(s)"                       �"Each entry in this table describes one Martian address ,
   packets with this address as IP source or IP destination, are discarded."                       *"Interface which the attack is applied on"                       G"An IP address to discard all packets with that address as destination"                       �"Relevant when rlSecuritySuiteSynAttackRangeType equals prefix(2).
        Specify the number of bits that comprise the destination
        IP address prefix."                       v"Specify the maximum connections per second allowed from this IP address
        and rlSecuritySuiteSynAttackPortList"                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       �"This table specifies the ip address and TCP ports that
        TCP SYN packets from them on a specific interfaces are dropped."                       �"Each entry in this table describes one ip address, TCP port and
   list of ifIndexes, that packets with these attributes are discarded."                       *"Interface which the attack is applied on"                       "The specific deny attack type"                       G"An IP address to discard all packets with that address as destination"                       �"Relevant when rlSecuritySuiteDenyTCPRangeType equals mask(1).
        Specify the number of bits that comprise the destination
        IP address prefix."                       �"Destination TCP port.
        Use 65553 to specify all ports.
        This key-field is relevant in specific attack types (not all)
        Use 0 when not relevant."                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       f"This scalar globally enable or disable dropping of tcp packets with both SYN and FIN flags enabled. "                      a"This scalar globally set protection mode on TCP SYN traffic.
      Disabled - the system doesn't support protection against TCP SYN attack.
      Report   - the system doesn't support protection against TCP SYN attack,but reports about it.
      Block    - the systems supports protection against TCP SYN attack by blocking this traffic on the port.  "                       h"This scalar globally set protection mode treshold value in packet per second
      on TCP SYN traffic."                       C"This scalar globally set protection reovery time out in secounds."                       2"This table keeps SYN protection status per port."                       L"Each entry in this table describes TCP SYN protection status for one port."                       %"The port's TCP SYN protection mode."                       6"The port's TCP SYN protection last attack time mode."                       1"The port's TCP SYN protection last attack time."                                  