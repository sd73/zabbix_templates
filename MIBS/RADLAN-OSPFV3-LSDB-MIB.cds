           >"The private MIB module definition for OSPF LSA Database MIB." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "201105041700Z" "Initial version of this MIB."        -- Wed Feb 17 17:00:00 PST 2012
       ""Router Link State Advertisement."                       !"A single entry from Router LSA."                       :"A 32-bit integer uniquely identifying an OSPFv3 process."                       N"The 32 bit identifier of the Area  from  which
        the LSA was received." 0"OSPFv3 Version 2, Appendix C.2 Area parameters"                     �"The Link State ID is an LS Type Specific field
        containing either a Router ID or an IP Address;
        it identifies the piece of the  routing  domain
        that is being described by the advertisement." 0"OSPFv3 Version 2, Section 12.1.4 Link State ID"                     e"The 32 bit number that uniquely identifies the
        originating router in the Autonomous System." 2"OSPFv3 Version 2, Appendix C.1 Global parameters"                     �"The index is a unsigned 32-bit integer.
        It is used as sequence number of entry
        in the LSA and relevant only for Router
        or Network LSA which can contain
        unlimited number of entries."                       ("Number of entries containg is the LSA."                      "The sequence number field is a signed  32-bit
        integer. It is used to detect old and duplicate
        link state advertisements. The space of sequence
        numbers is linearly ordered. The larger the
        sequence number the more recent the advertisement." 5"OSPFv3 Version 2, Section 12.1.6 LS sequence number"                     K"This field is the age of the link state
        advertisement in seconds." )"OSPFv3 Version 2, Section 12.1.1 LS age"         -- Should be 0..MaxAge
          �"This field is the checksum of the complete contents
        of the advertisement, excepting the age field.
        The age field is excepted so that an advertisement's
        age can be incremented without updating the checksum.
        The checksum used is the same that is used for ISO
        connectionless datagrams; it is commonly referred
        to as the Fletcher checksum." ."OSPFv3 Version 2, Section 12.1.7 LS checksum"                     N"The lenth in bytes of the LSA.
        This includes the 20 byte LSA header."                       �"When set, the router is a wild-card multicast receiver.
        When running MOSPF, these routers receive all multicast datagrams,
        regardless of destination."                       �"When set, the router is an endpoint
        of one or more fully adjacent virtual
        links having the described area as Transit
        area (V is for virtual link endpoint)."                       L"When set, the router is an AS
        boundary router (E is for external)."                       J"When set, the router is an area
        border router (B is for border)."                       �"The optional capabilities supported by the router.
        Through this mechanism routers of differing capabilities can be
        mixed within an OSPF routing domain."                       )"A quick description of the router link."                       %"The cost of using this router link."                       ="The Interface ID assigned to the interface being described."                       �"The Interface ID the neighbor router (or the attached link's
        Designated Router, for Type 2 interfaces) has been advertising
        in hello packets sent on the attached link."                       l"The Router ID the neighbor router (or the attached link's
      Designated Router, for Type 2 interfaces)."                       #"Network Link State Advertisement."                       ""A single entry from Network LSA."                       :"A 32-bit integer uniquely identifying an OSPFv3 process."                       N"The 32 bit identifier of the Area  from  which
        the LSA was received." 0"OSPFv3 Version 2, Appendix C.2 Area parameters"                     �"The Link State ID is an LS Type Specific field
        containing either a Router ID or an IP Address;
        it identifies the piece of the  routing  domain
        that is being described by the advertisement." 0"OSPFv3 Version 2, Section 12.1.4 Link State ID"                     e"The 32 bit number that uniquely identifies the
        originating router in the Autonomous System." 2"OSPFv3 Version 2, Appendix C.1 Global parameters"                     �"The index is a unsigned 32-bit integer.
        It is used as sequence number of entry
        in the LSA and relevant only for Router
        or Network LSA which can contain
        unlimited number of entries."                       ("Number of entries containg is the LSA."                      "The sequence number field is a signed  32-bit
        integer. It is used to detect old and duplicate
        link state advertisements. The space of sequence
        numbers is linearly ordered. The larger the
        sequence number the more recent the advertisement." 5"OSPFv3 Version 2, Section 12.1.6 LS sequence number"                     K"This field is the age of the link state
        advertisement in seconds." )"OSPFv3 Version 2, Section 12.1.1 LS age"         -- Should be 0..MaxAge
          �"This field is the checksum of the complete contents
        of the advertisement, excepting the age field.
        The age field is excepted so that an advertisement's
        age can be incremented without updating the checksum.
        The checksum used is the same that is used for ISO
        connectionless datagrams; it is commonly referred
        to as the Fletcher checksum." ."OSPFv3 Version 2, Section 12.1.7 LS checksum"                     N"The lenth in bytes of the LSA.
        This includes the 20 byte LSA header."                       �"The optional capabilities supported by the router.
        Through this mechanism routers of differing capabilities can be
        mixed within an OSPF routing domain."                       E"The Router IDs of each of the routers attached
        to the link."                       -"Inter Area Prefix Link State Advertisement."                       ""A single entry from Network LSA."                       :"A 32-bit integer uniquely identifying an OSPFv3 process."                       N"The 32 bit identifier of the Area  from  which
        the LSA was received." 0"OSPFv3 Version 2, Appendix C.2 Area parameters"                     �"The Link State ID is an LS Type Specific field
        containing either a Router ID or an IP Address;
        it identifies the piece of the  routing  domain
        that is being described by the advertisement." 0"OSPFv3 Version 2, Section 12.1.4 Link State ID"                     e"The 32 bit number that uniquely identifies the
        originating router in the Autonomous System." 2"OSPFv3 Version 2, Appendix C.1 Global parameters"                    "The sequence number field is a signed  32-bit
        integer. It is used to detect old and duplicate
        link state advertisements. The space of sequence
        numbers is linearly ordered. The larger the
        sequence number the more recent the advertisement." 5"OSPFv3 Version 2, Section 12.1.6 LS sequence number"                     K"This field is the age of the link state
        advertisement in seconds." )"OSPFv3 Version 2, Section 12.1.1 LS age"         -- Should be 0..MaxAge
          �"This field is the checksum of the complete contents
        of the advertisement, excepting the age field.
        The age field is excepted so that an advertisement's
        age can be incremented without updating the checksum.
        The checksum used is the same that is used for ISO
        connectionless datagrams; it is commonly referred
        to as the Fletcher checksum." ."OSPFv3 Version 2, Section 12.1.7 LS checksum"                     N"The lenth in bytes of the LSA.
        This includes the 20 byte LSA header."                       g"The cost of this route.  Expressed in the same units as the
      interface costs in the router-LSAs."                       "IPv6 address prefix length."                       "IPv6 address prefix options."                       2"IPv6 address prefix - bit strings of length 128."                       -"Inter Area Router Link State Advertisement."                       ""A single entry from Network LSA."                       :"A 32-bit integer uniquely identifying an OSPFv3 process."                       N"The 32 bit identifier of the Area  from  which
        the LSA was received." 0"OSPFv3 Version 2, Appendix C.2 Area parameters"                     �"The Link State ID is an LS Type Specific field
        containing either a Router ID or an IP Address;
        it identifies the piece of the  routing  domain
        that is being described by the advertisement." 0"OSPFv3 Version 2, Section 12.1.4 Link State ID"                     e"The 32 bit number that uniquely identifies the
        originating router in the Autonomous System." 2"OSPFv3 Version 2, Appendix C.1 Global parameters"                    "The sequence number field is a signed  32-bit
        integer. It is used to detect old and duplicate
        link state advertisements. The space of sequence
        numbers is linearly ordered. The larger the
        sequence number the more recent the advertisement." 5"OSPFv3 Version 2, Section 12.1.6 LS sequence number"                     K"This field is the age of the link state
        advertisement in seconds." )"OSPFv3 Version 2, Section 12.1.1 LS age"         -- Should be 0..MaxAge
          �"This field is the checksum of the complete contents
        of the advertisement, excepting the age field.
        The age field is excepted so that an advertisement's
        age can be incremented without updating the checksum.
        The checksum used is the same that is used for ISO
        connectionless datagrams; it is commonly referred
        to as the Fletcher checksum." ."OSPFv3 Version 2, Section 12.1.7 LS checksum"                     N"The lenth in bytes of the LSA.
        This includes the 20 byte LSA header."                       �"The optional capabilities supported by the router.
        Through this mechanism routers of differing capabilities can be
        mixed within an OSPF routing domain."                       g"The cost of this route.  Expressed in the same units as the
      interface costs in the router-LSAs."                       9"The Router ID of the router being described by the LSA."                       '"AS External Link State Advertisement."                       !"A single entry from Router LSA."                       :"A 32-bit integer uniquely identifying an OSPFv3 process."                       N"The 32 bit identifier of the Area  from  which
        the LSA was received." 0"OSPFv3 Version 2, Appendix C.2 Area parameters"                     �"The Link State ID is an LS Type Specific field
        containing either a Router ID or an IP Address;
        it identifies the piece of the  routing  domain
        that is being described by the advertisement." 0"OSPFv3 Version 2, Section 12.1.4 Link State ID"                     e"The 32 bit number that uniquely identifies the
        originating router in the Autonomous System." 2"OSPFv3 Version 2, Appendix C.1 Global parameters"                    "The sequence number field is a signed  32-bit
        integer. It is used to detect old and duplicate
        link state advertisements. The space of sequence
        numbers is linearly ordered. The larger the
        sequence number the more recent the advertisement." 5"OSPFv3 Version 2, Section 12.1.6 LS sequence number"                     K"This field is the age of the link state
        advertisement in seconds." )"OSPFv3 Version 2, Section 12.1.1 LS age"         -- Should be 0..MaxAge
          �"This field is the checksum of the complete contents
        of the advertisement, excepting the age field.
        The age field is excepted so that an advertisement's
        age can be incremented without updating the checksum.
        The checksum used is the same that is used for ISO
        connectionless datagrams; it is commonly referred
        to as the Fletcher checksum." ."OSPFv3 Version 2, Section 12.1.7 LS checksum"                     N"The lenth in bytes of the LSA.
        This includes the 20 byte LSA header."                       i"The type of external metric. If bit E is set, the metric
        specified is a Type 2 external metric."                       <"If set, a Forwarding Address has been included in the LSA."                       ="If set, an External Route Tag has been included in the LSA."                       h"The cost of this route.  Interpretation depends on the external
        type indication (bit E above)."                       w"If non-zero, an LSA with this LS type is to be associated with
        this LSA (see Referenced Link State ID below)."                       "IPv6 address prefix length."                       "IPv6 address prefix options."                       2"IPv6 address prefix - bit strings of length 128."                       k"A fully qualified IPv6 address (128 bits).
        Included in the LSA if and only if bit F has been set."                       m"A 32-bit field which may be used to communicate additional
        information between AS boundary routers."                       8"Included if and only if Reference LS Type is non-zero."                       )"Link (Type 8) Link State Advertisement."                       ""A single entry from Network LSA."                       :"A 32-bit integer uniquely identifying an OSPFv3 process."                       E"The identifier of the link from which the LSA
        was received." ."OSPF Version 2, Appendix C.2 Area parameters"                     p"OSPFv3 protocol instance ID specified in the OSPF header
        of the packet in which this LSA was received."                       �"The Link State ID is an LS Type Specific field
        containing either a Router ID or an IP Address;
        it identifies the piece of the  routing  domain
        that is being described by the advertisement." 0"OSPFv3 Version 2, Section 12.1.4 Link State ID"                     e"The 32 bit number that uniquely identifies the
        originating router in the Autonomous System." 2"OSPFv3 Version 2, Appendix C.1 Global parameters"                     �"The index is a unsigned 32-bit integer.
        It is used as sequence number of entry
        in the LSA and relevant only for Router
        or Network LSA which can contain
        unlimited number of entries."                       ("Number of entries containg is the LSA."                      "The sequence number field is a signed  32-bit
        integer. It is used to detect old and duplicate
        link state advertisements. The space of sequence
        numbers is linearly ordered. The larger the
        sequence number the more recent the advertisement." 5"OSPFv3 Version 2, Section 12.1.6 LS sequence number"                     K"This field is the age of the link state
        advertisement in seconds." )"OSPFv3 Version 2, Section 12.1.1 LS age"         -- Should be 0..MaxAge
          �"This field is the checksum of the complete contents
        of the advertisement, excepting the age field.
        The age field is excepted so that an advertisement's
        age can be incremented without updating the checksum.
        The checksum used is the same that is used for ISO
        connectionless datagrams; it is commonly referred
        to as the Fletcher checksum." ."OSPFv3 Version 2, Section 12.1.7 LS checksum"                     N"The lenth in bytes of the LSA.
        This includes the 20 byte LSA header."                       \"The Router Priority of the interface attaching the originating
        router to the link."                       �"The optional capabilities supported by the router.
        Through this mechanism routers of differing capabilities can be
        mixed within an OSPF routing domain."                       j"Link Local Interface Address.
        The originating router's link-local interface address on the link."                       "IPv6 address prefix length."                       "IPv6 address prefix options."                       2"IPv6 address prefix - bit strings of length 128."                       -"Intra Area Prefix Link State Advertisement."                       ""A single entry from Network LSA."                       :"A 32-bit integer uniquely identifying an OSPFv3 process."                       N"The 32 bit identifier of the Area  from  which
        the LSA was received." 0"OSPFv3 Version 2, Appendix C.2 Area parameters"                     �"The Link State ID is an LS Type Specific field
        containing either a Router ID or an IP Address;
        it identifies the piece of the  routing  domain
        that is being described by the advertisement." 0"OSPFv3 Version 2, Section 12.1.4 Link State ID"                     e"The 32 bit number that uniquely identifies the
        originating router in the Autonomous System." 2"OSPFv3 Version 2, Appendix C.1 Global parameters"                     �"The index is a unsigned 32-bit integer.
        It is used as sequence number of entry
        in the LSA and relevant only for Router
        or Network LSA which can contain
        unlimited number of entries."                       ("Number of entries containg is the LSA."                      "The sequence number field is a signed  32-bit
        integer. It is used to detect old and duplicate
        link state advertisements. The space of sequence
        numbers is linearly ordered. The larger the
        sequence number the more recent the advertisement." 5"OSPFv3 Version 2, Section 12.1.6 LS sequence number"                     K"This field is the age of the link state
        advertisement in seconds." )"OSPFv3 Version 2, Section 12.1.1 LS age"         -- Should be 0..MaxAge
          �"This field is the checksum of the complete contents
        of the advertisement, excepting the age field.
        The age field is excepted so that an advertisement's
        age can be incremented without updating the checksum.
        The checksum used is the same that is used for ISO
        connectionless datagrams; it is commonly referred
        to as the Fletcher checksum." ."OSPFv3 Version 2, Section 12.1.7 LS checksum"                     N"The lenth in bytes of the LSA.
        This includes the 20 byte LSA header."                       7"Number of IPv6 address prefixes contained in the LSA."                       �"Referenced LS Type:
        If the Referenced LS type is 1, the prefixes are associated with a router-LSA.
        If Referenced LS type is 2, the prefixes are associated with a network-LSA."                      "Referenced Link State ID:
       If the prefixes are associated with a router-LSA, the Referenced Link State ID should be 0.
       If the prefixes are associated with a network-LSA, the Referenced Link State ID should be
       the Interface ID of the link's Designated Router."                      5"Referenced Advertising Router: If the prefixes are associated with a router-LSA,
       the Referenced Advertising Router should be the originating router's Router ID.
       If the prefixes are associated with a network-LSA,
       Referenced Advertising Router should be the Designated Router's Router ID."                       g"The cost of this route.  Expressed in the same units as the
      interface costs in the router-LSAs."                       "IPv6 address prefix length."                       "IPv6 address prefix options."                       2"IPv6 address prefix - bit strings of length 128."                                                  