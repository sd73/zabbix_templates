     "SW images enumeration"                                                                     B"This private MIB module defines general Parameters private MIBs." W"5488 Marvell Lane
					Santa Clara, CA 95054
					USA

					Website:  www.marvell.com" "200701020000Z" "Initial revision."               ("Identification of the RND bridge type."                       �"This variable defines the maximum time period that can pass
       between ARP requests concerning an entry in the ARP table.
       After this time period, the entry is deleted from the table."                           �"A textual description of the enterprise-specific trap sent
        to the Network Management Station by the RND managed device."                       {"The severity type of the enterprise-specific trap sent to the
      Network Management Station by the RND managed device."                       "The bridge version."                      
�"A bit mask that defines the features supported by a particular configuration
       of this network element:
       __________________________________________
       |  Byte 1|Byte 2 |Byte 3 | ....|Byte 20  |
       |87654321|                     | 87654321|
       |________|_______________________________|

 Byte1 :
      bit1: TX Block mask
      bit2: Source Routing Encapulation
      bit3: SNA/SDLC
      bit4: Frame Relay
      bit5: SNMP
      bit6: LAN Manager
      bit7: High Performance
      bit8: Translation
 Byte2 :
      bit1: DEC Router
      bit2: IPX Router
      bit3: IP  Router
 Byte3 :
      bit1: Dial Up Backup
      bit2: COD
      bit3: FACS
      bit4: Load Balance
      bit5: Remote Configuration
      bit6: RIP 2
      bit7: OSPF
      bit8: IPX RIP/SAP Filter
 Byte4 :
      bit1: BootP Server
      bit2: BootP Client
      bit3: Compression
      bit4: V25.bis
      bit5: ISDN
      bit6: CODv2
      bit7: NSPF
      bit8: UDP Relay

 Byte5
      bit1:VirtualLAN
      bit2:Static IP Multicast
      bit3:IP Redundancy
      bit4:CCM2
      bit5:ISDN Bonding
      bit6:Backup Link Selection -- for the  VAN/Rdapter ver 4.0
      bit7:IP/IPX Forwarding     -- for the  WANgate ver 4.0
      bit8:Improved COD

 Byte6
      bit1: Server Disptacher
      bit2: ISDN_US             -- for the  VANSX/WANGATE ver 5.0
      bit3: PPP
      bit4: IP Rip Filter       -- for Vgate3
      bit5: Zero Hop Routing    -- for Vgate3
      bit6: ISDN Japan
      bit7: PPP-Security

 Byte7
     bit1: With unmanaged Switch
     bit2: 2 LANs
     bit3: OSPF Ver 2.0
     bit4: FACS Ver 2.0
     bit5: Multiple WEB Farm
     bit6: Backup Server
     bit7: Check Connectivity
     bit8: WSD multiplexing

Byte8
     bit1: MRT3
     bit2: WSD Redundancy
     bit3: DHCP Server
     bit4: WSD Connection Limit
     bit5: WSD Distributed System
     bit6: WSD Load Report
     bit7: WSD super farm
     bit8: RadWiz leased line

Byte9
     bit1: PPP IP address negotiaton
     bit2: DNS
     bit3: Nat
     bit4: WSD Static proximity
     bit5: WSD Dynamic proximity
     bit6: WSD Proxy
     bit7: WSD Proximity client
     bit8: MAC Load balancing

Byte10
     bit1: Unnum Inf
     bit2: Power Supply redundancy
     bit3: MRT PPP Compression
     bit4: ZHR Apolo
     bit5: Copy port
     bit6: UDP Relay 2.0
     bit7: NVRAM
     bit8: URL table

Byte11
     bit1: URL super farm
     bit2: NAT on LAN
     bit3: Remote Con
     bit4: AP5000
     bit5: Session tracking
     bit6: Mirroring
     bit7: Alias IP
     bit8: CSD Nat

Byte12
     bit1: content check
     bit2: mlb virtual ip
     bit3: reserved RadLan
     bit4: csd nat exception
     bit5: statistics monitor
     bit6: reserved-for-radware          "           -- SIZE 20
           �"This parameter is used for entering a s/w license number for a device.
        A separate license number is supplied for each device."           -- SIZE 20
               ""The community table of the agent"                       %" The row definition for this table."                       Z"The management station that will be allowed to
    communicate with the agent IP address"                       ]"The community string with which the management
     station will communicate with the agent"                       /"The allowed access to this management station"                       Z"Should the agent send traps to the management station,
     and what version is required"                       \"The status of this entry. If the status is invalid the
    community entry will be deleted"                       �"If enabled the device will only receive SNMP messages from the port,
     through which this NMS is reachable from the device."                       "The owner of this community"                      5"The transport protocol (usually UDP) port to which traps to the
    management station represebted by this entry will be sent. The default
    is the well-known IANA assigned port number for SNMP traps.
    This object is relevant only if rndCommunityTrapsEnable has a value
    different from trapsDisable."                       4"The MRID related configurations table of the agent"                       %" The row definition for this table."                       �"The router instance connecting the NMS who accessed the agent
     through the community table entry corresponding to the keys of this entry."                       �"The router instance currently managed by the NMS who accessed the agent
     through the community table entry corresponding to the keys of this entry "                           "ifindex manage supported."                       <"if supported manage , indicate ifindex, if 0 thaen disable"                       ,"The time will be sent in the format hhmmss"                       ,"The date will be sent in the format ddmmyy"                       *"Defines the boot version of the product."                           ("Defines the HW version of the product."                       �"Defines the Configuration Symbol attached to any hardware module
      manufactured by LANNET. One single character A..Z defines the CS
      version."                       f"This attribute describes the status of the group hardware as detected
      by the sensors software."                       0"The Base physical (MAC) address of the device."                           [" The (conceptual) table listing the active software file of the
          requested unit."                       ?" An entry (conceptual row) in the rndActiveSoftwareFileTable."                       H"The unit number (for stackable devices) or 1 for 'stand alone' device."                       ?"Indicates the current active software file, image1 or image2."                      %"Indicates the software file that will be active after reset (image1 or image2).
         If an error occurred in the download process, resulting in the corruption
         of the single software file, The value 'invalidImage' will be returned.
         This value can not be set by the user."                      �"A bit mask that specifies system status before reset action is preformed.
         Reset is prohibited in stackable products if the images selected after
         reboot are not of the same release version in ALL stack units.
         Downgrade status specifies that there are some actions to be preformed
         on the CDB file before reset is preformed.
         0x0 - OK
         0x1 - noStackIntegrity
         0x2 - downgrade"                       9"Max number of sectors currently allocated for image(s)."                       R"Specifies whether the device supports backup-config parameters in lcli commands."                           /" The table contains information about images."                       %" An entry in the rndImageInfoTable."                       H"The unit number (for stackable devices) or 1 for 'stand alone' device."                       3"Indicates the file name of image-1 in the system."                       m"Indicates the file name of image-2 (if present) in the system.If image-2 is not present show 'no info' text"                       1"Indicates the version of image-1 in the system."                       k"Indicates the version of image-2 (if present) in the system.If image-2 is not present show 'no info' text"                       :"Indicates the compilation date of image-1 in the system."                       t"Indicates the compilation date of image-2 (if present) in the system.If image-2 is not present show 'no info' text"                       :"Indicates the compilation time of image-1 in the system."                       t"Indicates the compilation time of image-2 (if present) in the system.If image-2 is not present show 'no info' text"                       5"Indicates the description of image-1 in the system."                       5"Indicates the description of image-2 in the system."                       ^"In case customer (external) version exists, this field is indicates image-1 internal version"                       ^"In case customer (external) version exists, this field is indicates image-2 internal version"                       d"The table contains information about components, their streams and baselines in the device images."                       ("An entry in the rlComponentsInfoTable."                       H"The unit number (for stackable devices) or 1 for 'stand alone' device."                       $"Indicates the image id in the unit"                       ""Indicates the SW component name."                       B"Indicates the version control baseline of the SW component name."                              