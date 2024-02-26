                                       0"The table of RIP global filters per IP router."                       +" An entry in the RIP global filter table "                       !" Type of filter - input/output "                       " Number of RIP filter. "                       �" The validity of this entry. Setting this value to invalid deletes
   the entry, and the entry may be actualy removed from the table."                       :" network prefix IP address, as in the forwarding table. "                       �" the number of bits in the IP Network mask, called network-prefix-length
   in Router Requirements terminology. for example: the value 16 means
   mask 255.255.0.0 "                      K" the number of bits to match in the Network IP address. A value
   smaller than 32 defines a wildcard. for example: the value 8 means
   all routes whose leftmost 8 bits are equal to those of the network IP
   address. If this variable has a value other than 32, than
   rsIpRipFilterGlbNetworkMaskBits must be 0 and is ignored. "                       /" Filter action - permit/deny for this network"                       ;"Table of input/output  RIP filters used per IP Interface."                       (" An entry in the Intf RIP filter table"                       m" The IP address identifying the RIP interface for this filter.
   This value corresponds to rsIpAdEntAddr. "                       !" Type of filter - input/output "                       *" Number of RIP filter for this Interface"                       �" The validity of this entry. Setting this value to invalid deletes
   the entry, and the entry may be actualy removed from the table."                       :" network prefix IP address, as in the forwarding table. "                       �" the number of bits in the IP Network mask, called network-prefix-length
   in Router Requirements terminology. for example: the value 16 means
   mask 255.255.0.0 "                      K" the number of bits to match in the Network IP address. A value
   smaller than 32 defines a wildcard. for example: the value 8 means
   all routes whose leftmost 8 bits are equal to those of the network IP
   address. If this variable has a value other than 32, than
   rsIpRipFilterLclNetworkMaskBits must be 0 and is ignored. "                       " Filter action - permit/deny "                          "The Preference given to routes whose origin is Local
            IP (i.e. IP interface in IpAddrTable)
            It is proposed that the value will be higher than dynamic routing protocols.
            The change of its value may lead to unexpected results, such as routing loops"                       �"The Preference given to routes whose origin is Men configured by
            Net managment tools, i.e. Command line or SNMP configured."                       �"The Preference given to routes whose origin is internal
            ospf Links.
            Relate to routes which are based on
            OSPF Link State Advertisements of type 1-4"                       �"The Preference given to routes whose origin is external to OSPF
            i.e. routes imported by as OSPF AS Border router.
            Relate to routes which are based on
            OSPF Link State Advertisements of types 5 and 7"                       m"The Preference given to routes whose origin is OSPF
            and Are inserted to cover gaps in net range"                       O"The Preference given to routes whose origin is RIP
            routing domain"                      �"The Preference given to routes whose origin is aggregation
            As a method of rip1 to handle the CIDR schema.
            The idea is that ripv1 aggregates route which fall into certion
            class of IP. This route is a discard route in effect,
            and is referenced, at forwarding route look up, if there is no beter
            match. (which means the route is not available)"                       W"The Preference given to routes whose origin is
            BGP ROUTERS (EBGP or IBGP)"                               *"MIB's version, the current version is 1."                      >"This variable controls OSPF automatic creation and activation of
          interfaces.  If value is enable - IP interface creation results in
          creation and activation of OSPF Interface.  If value is disable
          OSPF interface is created but not activated.
          The option is a platform parameter."                       Y"The OSPF Interface Table describes the
          interfaces from the viewpoint of OSPF."                       E"The OSPF interface table extension
          for md5 authentication"                       Q"Name of the key-chain which ospf
         interface uses for md5 authentication"                       ""Router Link State Advertisement."                       !"A single entry from Router LSA."                       N"The 32 bit identifier of the Area  from  which
        the LSA was received." ."OSPF Version 2, Appendix C.2 Area parameters"                     �"The Link State ID is an LS Type Specific field
        containing either a Router ID or an IP Address;
        it identifies the piece of the  routing  domain
        that is being described by the advertisement." ."OSPF Version 2, Section 12.1.4 Link State ID"                     e"The 32 bit number that uniquely identifies the
        originating router in the Autonomous System." 0"OSPF Version 2, Appendix C.1 Global parameters"                     �"The index is a unsigned 32-bit integer.
        It is used as sequence number of entry
        in the LSA and relevant only for Router
        or Network LSA which can contain
        unlimited number of entries."                      "The sequence number field is a signed  32-bit
        integer. It is used to detect old and duplicate
        link state advertisements. The space of sequence
        numbers is linearly ordered. The larger the
        sequence number the more recent the advertisement." 3"OSPF Version 2, Section 12.1.6 LS sequence number"                     K"This field is the age of the link state
        advertisement in seconds." '"OSPF Version 2, Section 12.1.1 LS age"         -- Should be 0..MaxAge
          �"This field is the checksum of the complete contents
        of the advertisement, excepting the age field.
        The age field is excepted so that an advertisement's
        age can be incremented without updating the checksum.
        The checksum used is the same that is used for ISO
        connectionless datagrams; it is commonly referred
        to as the Fletcher checksum." ,"OSPF Version 2, Section 12.1.7 LS checksum"                     N"The lenth in bytes of the LSA.
        This includes the 20 byte LSA header."                       �"When set, the router is an endpoint
        of one or more fully adjacent virtual
        links having the described area as Transit
        area (V is for virtual link endpoint)."                       L"When set, the router is an AS
        boundary router (E is for external)."                       J"When set, the router is an area
        border router (B is for border)."                       �"The number of router links described in this LSA.
        This must be the total collection of router links
        (i.e., interfaces) to the area."                       d"Identifies the object that this router link
        connects to. Value depends on the link's Type."                       )"Value depends on the link's Type field."                       )"A quick description of the router link."                       %"The cost of using this router link."                       #"Network Link State Advertisement."                       ""A single entry from Network LSA."                       N"The 32 bit identifier of the Area  from  which
        the LSA was received." ."OSPF Version 2, Appendix C.2 Area parameters"                     �"The Link State ID is an LS Type Specific field
        containing either a Router ID or an IP Address;
        it identifies the piece of the  routing  domain
        that is being described by the advertisement." ."OSPF Version 2, Section 12.1.4 Link State ID"                     e"The 32 bit number that uniquely identifies the
        originating router in the Autonomous System." 0"OSPF Version 2, Appendix C.1 Global parameters"                     �"The index is a unsigned 32-bit integer.
        It is used as sequence number of entry
        in the LSA and relevant only for Router
        or Network LSA which can contain
        unlimited number of entries."                      "The sequence number field is a signed  32-bit
        integer. It is used to detect old and duplicate
        link state advertisements. The space of sequence
        numbers is linearly ordered. The larger the
        sequence number the more recent the advertisement." 3"OSPF Version 2, Section 12.1.6 LS sequence number"                     K"This field is the age of the link state
        advertisement in seconds." '"OSPF Version 2, Section 12.1.1 LS age"         -- Should be 0..MaxAge
          �"This field is the checksum of the complete contents
        of the advertisement, excepting the age field.
        The age field is excepted so that an advertisement's
        age can be incremented without updating the checksum.
        The checksum used is the same that is used for ISO
        connectionless datagrams; it is commonly referred
        to as the Fletcher checksum." ,"OSPF Version 2, Section 12.1.7 LS checksum"                     N"The lenth in bytes of the LSA.
        This includes the 20 byte LSA header."                       &"The IP address mask for the network."                       H"The Router IDs of each of the routers
        attached to the network."                       A"Summary Link State Advertisement
         for network (Type 3)."                       ""A single entry from Summary LSA."                       N"The 32 bit identifier of the Area  from  which
        the LSA was received." ."OSPF Version 2, Appendix C.2 Area parameters"                     �"The Link State ID is an LS Type Specific field
        containing either a Router ID or an IP Address;
        it identifies the piece of the  routing  domain
        that is being described by the advertisement." ."OSPF Version 2, Section 12.1.4 Link State ID"                     e"The 32 bit number that uniquely identifies the
        originating router in the Autonomous System." 0"OSPF Version 2, Appendix C.1 Global parameters"                    "The sequence number field is a signed  32-bit
        integer. It is used to detect old and duplicate
        link state advertisements. The space of sequence
        numbers is linearly ordered. The larger the
        sequence number the more recent the advertisement." 3"OSPF Version 2, Section 12.1.6 LS sequence number"                     K"This field is the age of the link state
        advertisement in seconds." '"OSPF Version 2, Section 12.1.1 LS age"         -- Should be 0..MaxAge
          �"This field is the checksum of the complete contents
        of the advertisement, excepting the age field.
        The age field is excepted so that an advertisement's
        age can be incremented without updating the checksum.
        The checksum used is the same that is used for ISO
        connectionless datagrams; it is commonly referred
        to as the Fletcher checksum." ,"OSPF Version 2, Section 12.1.7 LS checksum"                     N"The lenth in bytes of the LSA.
        This includes the 20 byte LSA header."                       )"Value depends on the link's Type field."                       %"The cost of using this router link."                       >"Summary Link State Advertisement
         for ASBR (Type 4)."                       ""A single entry from Summary LSA."                       N"The 32 bit identifier of the Area  from  which
        the LSA was received." ."OSPF Version 2, Appendix C.2 Area parameters"                     �"The Link State ID is an LS Type Specific field
        containing either a Router ID or an IP Address;
        it identifies the piece of the  routing  domain
        that is being described by the advertisement." ."OSPF Version 2, Section 12.1.4 Link State ID"                     e"The 32 bit number that uniquely identifies the
        originating router in the Autonomous System." 0"OSPF Version 2, Appendix C.1 Global parameters"                    "The sequence number field is a signed  32-bit
        integer. It is used to detect old and duplicate
        link state advertisements. The space of sequence
        numbers is linearly ordered. The larger the
        sequence number the more recent the advertisement." 3"OSPF Version 2, Section 12.1.6 LS sequence number"                     K"This field is the age of the link state
        advertisement in seconds." '"OSPF Version 2, Section 12.1.1 LS age"         -- Should be 0..MaxAge
          �"This field is the checksum of the complete contents
        of the advertisement, excepting the age field.
        The age field is excepted so that an advertisement's
        age can be incremented without updating the checksum.
        The checksum used is the same that is used for ISO
        connectionless datagrams; it is commonly referred
        to as the Fletcher checksum." ,"OSPF Version 2, Section 12.1.7 LS checksum"                     N"The lenth in bytes of the LSA.
        This includes the 20 byte LSA header."                       %"The cost of using this router link."                       $"External Link State Advertisement."                       #"A single entry from External LSA."                       �"The Link State ID is an LS Type Specific field
        containing either a Router ID or an IP Address;
        it identifies the piece of the  routing  domain
        that is being described by the advertisement." ."OSPF Version 2, Section 12.1.4 Link State ID"                     e"The 32 bit number that uniquely identifies the
        originating router in the Autonomous System." 0"OSPF Version 2, Appendix C.1 Global parameters"                    "The sequence number field is a signed  32-bit
        integer. It is used to detect old and duplicate
        link state advertisements. The space of sequence
        numbers is linearly ordered. The larger the
        sequence number the more recent the advertisement." 3"OSPF Version 2, Section 12.1.6 LS sequence number"                     K"This field is the age of the link state
        advertisement in seconds." '"OSPF Version 2, Section 12.1.1 LS age"         -- Should be 0..MaxAge
          �"This field is the checksum of the complete contents
        of the advertisement, excepting the age field.
        The age field is excepted so that an advertisement's
        age can be incremented without updating the checksum.
        The checksum used is the same that is used for ISO
        connectionless datagrams; it is commonly referred
        to as the Fletcher checksum." ,"OSPF Version 2, Section 12.1.7 LS checksum"                     N"The lenth in bytes of the LSA.
        This includes the 20 byte LSA header."                       )"Value depends on the link's Type field."                      "Data traffic for the advertised destination
        will be forwarded to this address. If the
        Forwarding address is set to 0.0.0.0, data
        traffic will be forwarded instead to the LSA's
        originator (i.e., the responsible AS boundary router)."                       i"The type of external metric. If bit E is set,
        the metric specified is a Type 2 external metric."                       "The cost of this route."                       1"A 32-bit field attached to each external route."                       t"The Virtual Interface Table describes the virtual
          links that the OSPF Process is configured to carry on."                       M"The OSPF virtual interface table
          extension for md5 authentication"                       Y"Name of the key-chain which ospf virtual
         interface uses for md5 authentication"                           �"This parameter controls the IP Redundancy in the device.
         In case the parameter is Enable and the other router
         becomes inoperational, all the traffic is handled by
         this element."                       " obsolete "                       0"List of IP addresses backed up by this router."                       %" The row definition for this table."                       Y"The Ip address of the IP interface on which the redundancy feature
     is operational."                       +"The Ip address of the polled main router."                       i"If active, the main router is considered inoperational and the IP
    interface operates as its backup."                       T"Polling interval for this router (in seconds). If 0 the router is not
     polled."                       �"Interval in seconds during which the backed-up router must signal.
     If it does not signal, it is considered inoperational and the IP
     interface starts operating as backup."                       "Entry status"                           7"The private MIB module definition for RND router MIB." W"5488 Marvell Lane
					Santa Clara, CA 95054
					USA

					Website:  www.marvell.com" "200406010000Z" "Initial version of this MIB."                       >"This table is extension of rip2IfConfTable (RFC 1724 ,RIP 2)"                       $"The row definition for this table."                       :" The IP Address of this system on the indicated subnet. "                       �"This variable defines the virtual number of hops assigned to
          the interface specified by rsIfIpAddrIndex. This enables
          fine-tuning of the RIP routing algorithm."                       Q"Name of the key-chain which rip2
         interface uses for md5 authentication"                       @"This variable defines administrative status of RIP interface. "                       ."Type of Rx filtering (ACL, Prefix List etc)."                       ."Type of Tx filtering (ACL, Prefix List etc)."                       �"Name of a filtering list. The list defines
         which networks are to be received and which
         are to be suppressed in routing updates.
         List type is defined by rlRip2IfConfFilteringType."                       �"Name of a filtering list. The list defines
         which networks are to be sent and which
         are to be suppressed.
         List type is defined by rlRip2IfConfFilteringType."                      H"if set to global RIP behavior is specified by the value of
         rlRip2GlobalDefaultInformationOriginate scalar
         if set to enabled RIP will advertise default route on this interfaces
         if set to passiveOnly RIP will advertise default route on this interfaces
         only if it is configured to passive mode"                       *"MIB's version, the current version is 2."                       W"Default metric value when RIP advertises routes,
         derived by other protocols."                       �"If set to TRUE causes RIP to use the routing table metric
         for redistributed static routes as the RIP metric.
         If set to FALSE then the metric defined in
         rlRip2RedistDefaultMetric is used."                       A"Clears RIP statistics counters of all interfaces and all peers."                       _"if set to TRUE all interfaces created will be created as passive (rip2IfConfSend = doNotSend)"                       �"if set to Enabled RIP will advertise default route on all RIP interfaces
         if set to PassiveOnly RIP will advertise default route on all RIP passive interfaces"                       p"If set to TRUE causes RIP to redistribute
         directly connected interfaces, on which RIP is not enabled."                       �"If set to TRUE causes RIP to use the routing table metric
         for redistributed connected routes as the RIP metric.
         If set to FALSE then the metric defined in
         rlRip2RedistDefaultMetric is used."                       t"User defined metric value when RIP advertises
         directly connected interfaces, on which RIP is not enabled."                           �"This parameter controls leaking (redistribution) of static routes
         to RIP. When enabled, all routes inserted to the IP routing table
         via SNMP are advertised into RIP."                       �"This parameter controls leaking (redistribution) of static routes
         into OSPF. When enabled, all routes inserted to the IP routing table
         via SNMP are advertised into OSPF as external routes."                       �"This parameter controls leaking (redistribution) of routes
         from OSPF to RIP. If enabled, all routes learned via OSPF
         are advertised into RIP."                       �"This parameter controls leaking (redistribution) of routes
         from RIP to OSPF. If enabled, all routes learned via RIP
         are advertised into OSPF as external routes."                      ,"This parameter controls leaking (redistribution) into OSPF of
         direct routes external to OSPF, i.e. routes to local network
         corresponding to IP interfaces on which OSPF is disabled.
         When enabled, all such direct routes are advertised into OSPF
         as external routes."                                  