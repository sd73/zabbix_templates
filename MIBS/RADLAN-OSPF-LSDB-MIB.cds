           >"The private MIB module definition for OSPF LSA Database MIB." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "201105041700Z" "Initial version of this MIB."        -- Wed Feb 17 17:00:00 PST 2012
       ""Router Link State Advertisement."                       !"A single entry from Router LSA."                       8"A 32-bit integer uniquely identifying an OSPF process."                       N"The 32 bit identifier of the Area  from  which
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
        connects to. Value depends on the link's Type."                       )"Value depends on the link's Type field."                       )"A quick description of the router link."                       %"The cost of using this router link."                       #"Network Link State Advertisement."                       ""A single entry from Network LSA."                       8"A 32-bit integer uniquely identifying an OSPF process."                       N"The 32 bit identifier of the Area  from  which
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
         for network (Type 3)."                       ""A single entry from Summary LSA."                       8"A 32-bit integer uniquely identifying an OSPF process."                       N"The 32 bit identifier of the Area  from  which
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
         for ASBR (Type 4)."                       ""A single entry from Summary LSA."                       8"A 32-bit integer uniquely identifying an OSPF process."                       N"The 32 bit identifier of the Area  from  which
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
        This includes the 20 byte LSA header."                       %"The cost of using this router link."                       $"External Link State Advertisement."                       #"A single entry from External LSA."                       8"A 32-bit integer uniquely identifying an OSPF process."                       �"The Link State ID is an LS Type Specific field
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
        the metric specified is a Type 2 external metric."                       "The cost of this route."                       1"A 32-bit field attached to each external route."                                                  