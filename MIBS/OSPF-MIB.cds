     i"The range of values defined for the priority of a system
          for becoming the designated router."               "The OSPF external metric."               �"An OSPF Area Identifier.
           Note that the Area ID, in OSPF, has the same format
           as an IP address, but has the function of defining
           a summarization point for link state advertisements."               "The authentication type."               w"The values in seconds that one might find or configure
          for variables bounded by the maximum age of an LSA."               u"A positive integer.  Values in excess are precluded as
          unnecessary and prone to interoperability issues."              p"Type of Service (TOS) is defined as a mapping to the IP
        Type of Service Flags as defined in the IP Forwarding
        Table MIB

            +-----+-----+-----+-----+-----+-----+-----+-----+
            |                 |                       |     |
            |   PRECEDENCE    |    TYPE OF SERVICE    |  0  |
            |                 |                       |     |
            +-----+-----+-----+-----+-----+-----+-----+-----+

                     IP TOS                IP TOS
                Field     Policy      Field     Policy

                Contents    Code      Contents    Code
                0 0 0 0  ==>   0      0 0 0 1  ==>   2
                0 0 1 0  ==>   4      0 0 1 1  ==>   6
                0 1 0 0  ==>   8      0 1 0 1  ==>  10
                0 1 1 0  ==>  12      0 1 1 1  ==>  14
                1 0 0 0  ==>  16      1 0 0 1  ==>  18
                1 0 1 0  ==>  20      1 0 1 1  ==>  22
                1 1 0 0  ==>  24      1 1 0 1  ==>  26
                1 1 1 0  ==>  28      1 1 1 1  ==>  30

         The remaining values are left for future definition."               �"A OSPF Router Identifier.
           Note that the Router ID, in OSPF, has the same format
           as an IP address, but identifies the router independent
           of its IP address."               {"The OSPF internal metric.
           Note that the OSPF metric is defined as an unsigned value
           in the range."              "An indication of the operability of an OSPF
          function or feature.  For example, the status
          of an interface: 'enabled' indicates that
          it is willing to communicate with other OSPF routers,
          and 'disabled' indicates that it is not."               U"The range of intervals in seconds on which Hello messages
          are exchanged."                                                                                        �"The MIB module to describe the OSPF Version 2
          Protocol.  Note that some objects in this MIB
          module may pose a significant security risk.
          Refer to the Security Considerations section
          in RFC 4750 for more information.



          Copyright (C) The IETF Trust (2006).
          This version of this MIB module is part of
          RFC 4750;  see the RFC itself for full legal
          notices."�"WG E-Mail: ospf@ietf.org

        WG Chairs: acee@cisco.com
                   rohit@gmail.com

        Editors:   Dan Joyal
                   Nortel
                   600 Technology Park Drive
                   Billerica, MA  01821
                   djoyal@nortel.com

                   Piotr Galecki
                   Airvana
                   19 Alpha Road
                   Chelmsford, MA 01824
                   pgalecki@airvana.com

                   Spencer Giacalone
                   CSFB
                   Eleven Madison Ave
                   New York, NY 10010-3629
                   spencer.giacalone@gmail.com" "200611100000Z" "199501201225Z"�"Updated for latest changes to OSPF Version 2:
          - updated the General Group with the new
            ospfRFC1583Compatibility, ospfReferenceBandwidth
            and ospfDiscontinuityTime objects
          - added graceful-restart-related objects
          - added stub-router-related objects
          - updated the Area Table with NSSA-related objects
          - added ospfAreaAggregateExtRouteTag object
          - added Opaque LSA-related objects
          - updates to the Compliances and Security sections
          - added area LSA counter table
          - added section describing translation of notification
            parameters between SNMP versions
          - added ospfComplianceObsolete to contain obsolete
            object groups
          - deprecated ospfExtLsdbTable
          See Appendix B of RFC 4750 for more details.

          This version published as part of RFC 4750" R"The initial SMIv2 revision of this MIB module, published
          in RFC 1850."       #-- November 10, 2006 00:00:00 EST
          k"A 32-bit integer uniquely identifying the
          router in the Autonomous System.
          By convention, to ensure uniqueness, this
          should default to the value of one of the
          router's IP interface addresses.

          This object is persistent and when written
          the entity SHOULD save the change to non-volatile storage." '"OSPF Version 2, C.1 Global parameters"                    S"The administrative status of OSPF in the
          router.  The value 'enabled' denotes that the
          OSPF Process is active on at least one interface;
          'disabled' disables it on all interfaces.

          This object is persistent and when written
          the entity SHOULD save the change to non-volatile storage."                       7"The current version number of the OSPF protocol is 2." "OSPF Version 2, Title"                     I"A flag to note whether this router is an Area
          Border Router." B"OSPF Version 2, Section 3 Splitting the AS into
          Areas"                     �"A flag to note whether this router is configured as
           an Autonomous System Border Router.

           This object is persistent and when written the
           entity SHOULD save the change to non-volatile storage." B"OSPF Version 2, Section 3.3 Classification of
          routers"                     f"The number of external (LS type-5) link state
           advertisements in the link state database." L"OSPF Version 2, Appendix A.4.5 AS external link
           advertisements"                    �"The 32-bit sum of the LS checksums of
           the external link state advertisements
           contained in the link state database.  This sum
           can be used to determine if there has been a
           change in a router's link state database and
           to compare the link state database of two
           routers.  The value should be treated as unsigned
           when comparing two sums of checksums."                       �"The router's support for type-of-service routing.

           This object is persistent and when written
           the entity SHOULD save the change to non-volatile
           storage." @"OSPF Version 2, Appendix F.1.2 Optional TOS
          support"                    �"The number of new link state advertisements
          that have been originated.  This number is
          incremented each time the router originates a new
          LSA.

          Discontinuities in the value of this counter can
          occur at re-initialization of the management system,
          and at other times as indicated by the value of
          ospfDiscontinuityTime."                      �"The number of link state advertisements received
          that are determined to be new instantiations.
          This number does not include newer instantiations
          of self-originated link state advertisements.

          Discontinuities in the value of this counter can
          occur at re-initialization of the management system,
          and at other times as indicated by the value of
          ospfDiscontinuityTime."                      :"The maximum number of non-default
          AS-external LSAs entries that can be stored in the
          link state database.  If the value is -1, then
          there is no limit.

          When the number of non-default AS-external LSAs
          in a router's link state database reaches
          ospfExtLsdbLimit, the router enters
          overflow state.  The router never holds more than
          ospfExtLsdbLimit non-default AS-external LSAs
          in its database.  OspfExtLsdbLimit MUST be set
          identically in all routers attached to the OSPF
          backbone and/or any regular OSPF area (i.e.,
          OSPF stub areas and NSSAs are excluded).

          This object is persistent and when written
          the entity SHOULD save the change to non-volatile
          storage."                      �"A bit mask indicating whether the router is
          forwarding IP multicast (Class D) datagrams
          based on the algorithms defined in the
          multicast extensions to OSPF.

          Bit 0, if set, indicates that the router can

          forward IP multicast datagrams in the router's
          directly attached areas (called intra-area
          multicast routing).

          Bit 1, if set, indicates that the router can
          forward IP multicast datagrams between OSPF
          areas (called inter-area multicast routing).

          Bit 2, if set, indicates that the router can
          forward IP multicast datagrams between
          Autonomous Systems (called inter-AS multicast
          routing).

          Only certain combinations of bit settings are
          allowed, namely: 0 (no multicast forwarding is
          enabled), 1 (intra-area multicasting only), 3
          (intra-area and inter-area multicasting), 5
          (intra-area and inter-AS multicasting), and 7
          (multicasting everywhere).  By default, no
          multicast forwarding is enabled.

          This object is persistent and when written
          the entity SHOULD save the change to non-volatile
          storage."                      �"The number of seconds that, after entering
          OverflowState, a router will attempt to leave
          OverflowState.  This allows the router to again
          originate non-default AS-external LSAs.  When
          set to 0, the router will not leave
          overflow state until restarted.

          This object is persistent and when written
          the entity SHOULD save the change to non-volatile
          storage."                       �"The router's support for demand routing.
           This object is persistent and when written
           the entity SHOULD save the change to non-volatile
           storage." +"Extending OSPF to Support Demand Circuits"                    !"Indicates metrics used to choose among multiple
          AS-external LSAs.  When RFC1583Compatibility is set to
          enabled, only cost will be used when choosing among
          multiple AS-external LSAs advertising the same
          destination.  When RFC1583Compatibility is set to
          disabled, preference will be driven first by type of
          path using cost only to break ties.

          This object is persistent and when written
          the entity SHOULD save the change to non-volatile
          storage." G"OSPF Version 2, Section 16.4.1 External path
            preferences"                     ,"The router's support for Opaque LSA types." "The OSPF Opaque LSA Option"                    !"Reference bandwidth in kilobits/second for
          calculating default interface metrics.  The
          default value is 100,000 KBPS (100 MBPS).

          This object is persistent and when written
          the entity SHOULD save the change to non-volatile
          storage."                      4"The router's support for OSPF graceful restart.
          Options include: no restart support, only planned
          restarts, or both planned and unplanned restarts.

          This object is persistent and when written
          the entity SHOULD save the change to non-volatile
          storage."                       �"Configured OSPF graceful restart timeout interval.

           This object is persistent and when written
           the entity SHOULD save the change to non-volatile
           storage."                       �"Indicates if strict LSA checking is enabled for
           graceful restart.

           This object is persistent and when written
           the entity SHOULD save the change to non-volatile
           storage."                       *"Current status of OSPF graceful restart."                       F"Remaining time in current OSPF graceful restart
          interval."                       �"Describes the outcome of the last attempt at a
          graceful restart.  If the value is 'none', no restart
          has yet been attempted.  If the value is 'inProgress',
          a restart attempt is currently underway."                       c"The number of AS-scope link state
           advertisements in the AS-scope link state database."                      f"The 32-bit unsigned sum of the LS checksums of
           the AS link state advertisements contained in the AS-scope
           link state database.  This sum can be used to determine
           if there has been a change in a router's AS-scope link
           state database, and to compare the AS-scope link state
           database of two routers."                       5"The router's support for stub router functionality."  "OSPF Stub Router Advertisement"                    i"This object controls the advertisement of
           stub router LSAs by the router.  The value
           doNotAdvertise will result in the advertisement
           of a standard router LSA and is the default value.

           This object is persistent and when written
           the entity SHOULD save the change to non-volatile
           storage."                      D"The value of sysUpTime on the most recent occasion
          at which any one of this MIB's counters suffered
          a discontinuity.

          If no such discontinuities have occurred since the last
          re-initialization of the local management subsystem,
          then this object contains a zero value."                      "Information describing the configured parameters and
          cumulative statistics of the router's attached areas.
          The interfaces and virtual links are configured
          as part of these areas.  Area 0.0.0.0, by definition,
          is the backbone area." 3"OSPF Version 2, Section 6 The Area Data Structure"                    �"Information describing the configured parameters and
          cumulative statistics of one of the router's attached areas.
          The interfaces and virtual links are configured as part of
          these areas.  Area 0.0.0.0, by definition, is the backbone
          area.

          Information in this table is persistent and when this object
          is written the entity SHOULD save the change to non-volatile
          storage."                       j"A 32-bit integer uniquely identifying an area.
          Area ID 0.0.0.0 is used for the OSPF backbone." ."OSPF Version 2, Appendix C.2 Area parameters"           2-- read-only since originally
-- an SMIv1 index
         0"The authentication type specified for an area." +"OSPF Version 2, Appendix D Authentication"                   "-- no authentication, by default
 �"Indicates if an area is a stub area, NSSA, or standard
          area.  Type-5 AS-external LSAs and type-11 Opaque LSAs are
          not imported into stub areas or NSSAs.  NSSAs import
          AS-external data as type-7 LSAs" ."OSPF Version 2, Appendix C.2 Area parameters"                    �"The number of times that the intra-area route
          table has been calculated using this area's
          link state database.  This is typically done
          using Dijkstra's algorithm.

          Discontinuities in the value of this counter can occur
          at re-initialization of the management system, and at other
          times as indicated by the value of ospfDiscontinuityTime."                       �"The total number of Area Border Routers reachable
          within this area.  This is initially zero and is
          calculated in each Shortest Path First (SPF) pass."                       �"The total number of Autonomous System Border
          Routers reachable within this area.  This is
          initially zero and is calculated in each SPF
          pass."                       �"The total number of link state advertisements
          in this area's link state database, excluding
          AS-external LSAs."                      �"The 32-bit sum of the link state
          advertisements' LS checksums contained in this
          area's link state database.  This sum excludes
          external (LS type-5) link state advertisements.
          The sum can be used to determine if there has
          been a change in a router's link state
          database, and to compare the link state database of
          two routers.  The value should be treated as unsigned
          when comparing two sums of checksums."                      �"The variable ospfAreaSummary controls the
          import of summary LSAs into stub and NSSA areas.
          It has no effect on other areas.

          If it is noAreaSummary, the router will not
          originate summary LSAs into the stub or NSSA area.
          It will rely entirely on its default route.

          If it is sendAreaSummary, the router will both
          summarize and propagate summary LSAs."                      "This object permits management of the table by
          facilitating actions such as row creation,
          construction, and destruction.

          The value of this object has no effect on
          whether other objects in this conceptual row can be
          modified."                       ~"Indicates an NSSA border router's ability to
          perform NSSA translation of type-7 LSAs into
          type-5 LSAs."                      	"Indicates if and how an NSSA border router is
          performing NSSA translation of type-7 LSAs into type-5
          LSAs.  When this object is set to enabled, the NSSA Border
          router's OspfAreaNssaExtTranslatorRole has been set to
          always.  When this object is set to elected, a candidate
          NSSA Border router is Translating type-7 LSAs into type-5.
          When this object is set to disabled, a candidate NSSA
          border router is NOT translating type-7 LSAs into type-5."                       �"The number of seconds after an elected translator
          determines its services are no longer required, that
          it should continue to perform its translation duties."                      8"Indicates the number of translator state changes
          that have occurred since the last boot-up.

          Discontinuities in the value of this counter can occur
          at re-initialization of the management system, and at other
          times as indicated by the value of ospfDiscontinuityTime."                       i"The set of metrics that will be advertised
          by a default Area Border Router into a stub area." /"OSPF Version 2, Appendix C.2, Area Parameters"                    ."The metric for a given Type of Service that
          will be advertised by a default Area Border
          Router into a stub area.

          Information in this table is persistent and when this object
          is written the entity SHOULD save the change to non-volatile
          storage." /"OSPF Version 2, Appendix C.2, Area Parameters"                     u"The 32-bit identifier for the stub area.  On
          creation, this can be derived from the
          instance."             2-- read-only since originally an
-- SMIv1 index
         |"The Type of Service associated with the
          metric.  On creation, this can be derived from
          the instance."             2-- read-only since originally an
-- SMIv1 index
         �"The metric value applied at the indicated Type
          of Service.  By default, this equals the least
          metric at the Type of Service among the
          interfaces to other areas."                      "This object permits management of the table by
          facilitating actions such as row creation,
          construction, and destruction.

          The value of this object has no effect on
          whether other objects in this conceptual row can be
          modified."                       U"This variable displays the type of metric
          advertised as a default route."                       �"The OSPF Process's link state database (LSDB).
           The LSDB contains the link state advertisements
           from throughout the areas that the device is attached to." 6"OSPF Version 2, Section 12 Link State Advertisements"                     $"A single link state advertisement."                       O"The 32-bit identifier of the area from which
          the LSA was received." ."OSPF Version 2, Appendix C.2 Area parameters"           2-- read-only since originally an
-- SMIv1 index
        2"The type of the link state advertisement.
          Each link state type has a separate advertisement
          format.

          Note: External link state advertisements are permitted
          for backward compatibility, but should be displayed
          in the ospfAsLsdbTable rather than here." O"OSPF Version 2, Appendix A.4.1 The Link State
          Advertisement header"           2-- read-only since originally an
-- SMIv1 index
         �"The Link State ID is an LS Type Specific field
          containing either a Router ID or an IP address;
          it identifies the piece of the routing domain
          that is being described by the advertisement." ."OSPF Version 2, Section 12.1.4 Link State ID"           2-- read-only since originally an
-- SMIv1 index
         h"The 32-bit number that uniquely identifies the
          originating router in the Autonomous System." 0"OSPF Version 2, Appendix C.1 Global parameters"           2-- read-only since originally an
-- SMIv1 index
        �"The sequence number field is a signed 32-bit
          integer.  It starts with the value '80000001'h,
          or -'7FFFFFFF'h, and increments until '7FFFFFFF'h.
          Thus, a typical sequence number will be very negative.
          It is used to detect old and duplicate Link State
          Advertisements.  The space of sequence numbers is linearly
          ordered.  The larger the sequence number, the more recent
          the advertisement." >"OSPF Version 2, Section 12.1.6 LS sequence
          number"                     N"This field is the age of the link state advertisement
          in seconds." '"OSPF Version 2, Section 12.1.1 LS age"       =-- Should be 0..MaxAge, except when
-- doNotAge bit is set
            �"This field is the checksum of the complete contents of
          the advertisement, excepting the age field.  The age field
          is excepted so that an advertisement's age can be
          incremented without updating the checksum.  The checksum
          used is the same that is used for ISO connectionless



          datagrams; it is commonly referred to as the
          Fletcher checksum." ,"OSPF Version 2, Section 12.1.7 LS checksum"                     �"The entire link state advertisement, including
          its header.

          Note that for variable length LSAs, SNMP agents
          may not be able to return the largest string size." 6"OSPF Version 2, Section 12 Link State Advertisements"                    �"The Address Range Table acts as an adjunct to the Area
           Table.  It describes those Address Range Summaries that
           are configured to be propagated from an Area to reduce
           the amount of information about it that is known beyond
           its borders.  It contains a set of IP address ranges
           specified by an IP address/IP network mask pair.
           For example, class B address range of X.X.X.X
           with a network mask of 255.255.0.0 includes all IP
           addresses from X.X.0.0 to X.X.255.255.

           Note that this table is obsoleted and is replaced
           by the Area Aggregate Table." /"OSPF Version 2, Appendix C.2  Area parameters"                     �"A single area address range.

          Information in this table is persistent and when this object
          is written the entity SHOULD save the change to non-volatile
          storage." /"OSPF Version 2, Appendix C.2  Area parameters"                     C"The area that the address range is to be found
          within." ."OSPF Version 2, Appendix C.2 Area parameters"           2-- read-only since originally an
-- SMIv1 index
         H"The IP address of the net or subnet indicated
          by the range." ."OSPF Version 2, Appendix C.2 Area parameters"           2-- read-only since originally an
-- SMIv1 index
         @"The subnet mask that pertains to the net or
          subnet." ."OSPF Version 2, Appendix C.2 Area parameters"                    "This object permits management of the table by
          facilitating actions such as row creation,
          construction, and destruction.

          The value of this object has no effect on
          whether other objects in this conceptual row can be
          modified."                       �"Subnets subsumed by ranges either trigger the
          advertisement of the indicated summary
         (advertiseMatching) or result in the subnet's not
          being advertised at all outside the area."                       �"The Host/Metric Table indicates what hosts are directly



          attached to the router, what metrics and types
          of service should be advertised for them,
          and what areas they are found within." ?"OSPF Version 2, Appendix C.7 Host route
          parameters"                    
"A metric to be advertised, for a given type of
          service, when a given host is reachable.

          Information in this table is persistent and when this object
          is written the entity SHOULD save the change to non-volatile
          storage."                       "The IP address of the host." 4"OSPF Version 2, Appendix C.7 Host route parameters"           2-- read-only since originally an
-- SMIv1 index
         4"The Type of Service of the route being configured." 4"OSPF Version 2, Appendix C.7 Host route parameters"           2-- read-only since originally an
-- SMIv1 index
         "The metric to be advertised." 4"OSPF Version 2, Appendix C.7 Host route parameters"                    "This object permits management of the table by
          facilitating actions such as row creation,
          construction, and destruction.

          The value of this object has no effect on
          whether other objects in this conceptual row can be
          modified."                       V"The OSPF area to which the host belongs.
          Deprecated by ospfHostCfgAreaID." ."OSPF Version 2, Appendix C.7 Host parameters"                     7"To configure the OSPF area to which the host belongs." ."OSPF Version 2, Appendix C.7 Host parameters"                     �"The OSPF Interface Table describes the interfaces
          from the viewpoint of OSPF.
          It augments the ipAddrTable with OSPF specific information." F"OSPF Version 2, Appendix C.3  Router interface
          parameters"                     �"The OSPF interface entry describes one interface
          from the viewpoint of OSPF.

          Information in this table is persistent and when this object
          is written the entity SHOULD save the change to non-volatile
          storage."                       ("The IP address of this OSPF interface."             2-- read-only since originally an
-- SMIv1 index
        "For the purpose of easing the instancing of
          addressed and addressless interfaces; this
          variable takes the value 0 on interfaces with
          IP addresses and the corresponding value of
          ifIndex for interfaces having no IP address."             2-- read-only since originally an
-- SMIv1 index
         �"A 32-bit integer uniquely identifying the area
          to which the interface connects.  Area ID
          0.0.0.0 is used for the OSPF backbone."                     -- 0.0.0.0
�"The OSPF interface type.
          By way of a default, this field may be intuited
          from the corresponding value of ifType.
          Broadcast LANs, such as Ethernet and IEEE 802.5,
          take the value 'broadcast', X.25 and similar
          technologies take the value 'nbma', and links
          that are definitively point to point take the
          value 'pointToPoint'."                      	"The OSPF interface's administrative status.
          The value formed on the interface, and the interface
          will be advertised as an internal route to some area.
          The value 'disabled' denotes that the interface is
          external to OSPF."                      �"The priority of this interface.  Used in
          multi-access networks, this field is used in
          the designated router election algorithm.  The
          value 0 signifies that the router is not eligible
          to become the designated router on this particular
          network.  In the event of a tie in this value,
          routers will use their Router ID as a tie breaker."                       �"The estimated number of seconds it takes to
           transmit a link state update packet over this
           interface.  Note that the minimal value SHOULD be
           1 second."                      0"The number of seconds between link state advertisement
          retransmissions, for adjacencies belonging to this
          interface.  This value is also used when retransmitting
          database description and Link State request packets.
          Note that minimal value SHOULD be 1 second."                       �"The length of time, in seconds, between the Hello packets
          that the router sends on the interface.  This value must be
          the same for all routers attached to a common network."                      !"The number of seconds that a router's Hello packets have
          not been seen before its neighbors declare the router down.
          This should be some multiple of the Hello interval.  This
          value must be the same for all routers attached to a common
          network."                       �"The larger time interval, in seconds, between the Hello
          packets sent to an inactive non-broadcast multi-access
          neighbor."                       "The OSPF Interface State."                       *"The IP address of the designated router."                     -- 0.0.0.0
 <"The IP address of the backup designated
          router."                     -- 0.0.0.0
4"The number of times this OSPF interface has
          changed its state or an error has occurred.

          Discontinuities in the value of this counter can occur
          at re-initialization of the management system, and at other
          times as indicated by the value of ospfDiscontinuityTime."                      �"The cleartext password used as an OSPF
          authentication key when simplePassword security
          is enabled.  This object does not access any OSPF
          cryptogaphic (e.g., MD5) authentication key under
          any circumstance.

          If the key length is shorter than 8 octets, the
          agent will left adjust and zero fill to 8 octets.

          Unauthenticated interfaces need no authentication
          key, and simple password authentication cannot use
          a key of more than 8 octets.

          Note that the use of simplePassword authentication
          is NOT recommended when there is concern regarding
          attack upon the OSPF system.  SimplePassword
          authentication is only sufficient to protect against
          accidental misconfigurations because it re-uses
          cleartext passwords [RFC1704].

          When read, ospfIfAuthKey always returns an octet
          string of length zero." C"OSPF Version 2, Section 9 The Interface Data
          Structure"                   -- 0.0.0.0.0.0.0.0
"This object permits management of the table by
          facilitating actions such as row creation,
          construction, and destruction.

          The value of this object has no effect on
          whether other objects in this conceptual row can be
          modified."                      |"The way multicasts should be forwarded on this
          interface: not forwarded, forwarded as data
          link multicasts, or forwarded as data link
          unicasts.  Data link multicasting is not
          meaningful on point-to-point and NBMA interfaces,
          and setting ospfMulticastForwarding to 0 effectively
          disables all multicast forwarding."                       �"Indicates whether Demand OSPF procedures (hello
          suppression to FULL neighbors and setting the
          DoNotAge flag on propagated LSAs) should be
          performed on this interface."                       �"The authentication type specified for an interface.

          Note that this object can be used to engage
          in significant attacks against an OSPF router." +"OSPF Version 2, Appendix D Authentication"                   "-- no authentication, by default
 y"The total number of link-local link state advertisements
          in this interface's link-local link state database."                      �"The 32-bit unsigned sum of the Link State
          Advertisements' LS checksums contained in this
          interface's link-local link state database.
          The sum can be used to determine if there has
          been a change in the interface's link state
          database and to compare the interface link state
          database of routers attached to the same subnet."                       )"The Router ID of the designated router."                       0"The Router ID of the backup designated router."                      ["The Metric Table describes the metrics to be advertised
          for a specified interface at the various types of service.
          As such, this table is an adjunct of the OSPF Interface
          Table.

          Types of service, as defined by RFC 791, have the ability
          to request low delay, high bandwidth, or reliable linkage.

          For the purposes of this specification, the measure of
          bandwidth:

          Metric = referenceBandwidth / ifSpeed

          is the default value.
          The default reference bandwidth is 10^8.
          For multiple link interfaces, note that ifSpeed is the sum
          of the individual link speeds.  This yields a number having
          the following typical values:

          Network Type/bit rate   Metric

          >= 100 MBPS                 1
          Ethernet/802.3             10
          E1                         48
          T1 (ESF)                   65
          64 KBPS                    1562
          56 KBPS                    1785
          19.2 KBPS                  5208
          9.6 KBPS                   10416

          Routes that are not specified use the default
          (TOS 0) metric.

          Note that the default reference bandwidth can be configured
          using the general group object ospfReferenceBandwidth." E"OSPF Version 2, Appendix C.3 Router interface
          parameters"                    	"A particular TOS metric for a non-virtual interface
          identified by the interface index.

          Information in this table is persistent and when this object
          is written the entity SHOULD save the change to non-volatile
          storage." E"OSPF Version 2, Appendix C.3 Router interface
          parameters"                     l"The IP address of this OSPF interface.  On row
          creation, this can be derived from the instance."             2-- read-only since originally an
-- SMIv1 index
        A"For the purpose of easing the instancing of
          addressed and addressless interfaces; this
          variable takes the value 0 on interfaces with
          IP addresses and the value of ifIndex for
          interfaces having no IP address.  On row
          creation, this can be derived from the instance."             2-- read-only since originally an
-- SMIv1 index
         |"The Type of Service metric being referenced.
          On row creation, this can be derived from the
          instance."             2-- read-only since originally an
-- SMIv1 index
         �"The metric of using this Type of Service on
          this interface.  The default value of the TOS 0
          metric is 10^8 / ifSpeed."                      "This object permits management of the table by
          facilitating actions such as row creation,
          construction, and destruction.

          The value of this object has no effect on
          whether other objects in this conceptual row can be
          modified."                       p"Information about this router's virtual interfaces
          that the OSPF Process is configured to carry on." B"OSPF Version 2, Appendix C.4  Virtual link
          parameters"                     �"Information about a single virtual interface.

          Information in this table is persistent and when this object
          is written the entity SHOULD save the change to non-volatile
          storage."                       c"The transit area that the virtual link
          traverses.  By definition, this is not 0.0.0.0."             2-- read-only since originally an
-- SMIv1 index
         ("The Router ID of the virtual neighbor."             2-- read-only since originally an
-- SMIv1 index
         �"The estimated number of seconds it takes to
          transmit a Link State update packet over this
          interface.  Note that the minimal value SHOULD be
          1 second."                      �"The number of seconds between link state
          avertisement retransmissions, for adjacencies
          belonging to this interface.  This value is
          also used when retransmitting database
          description and Link State request packets.  This
          value should be well over the expected
          round-trip time.  Note that the minimal value SHOULD be
          1 second."                       �"The length of time, in seconds, between the
          Hello packets that the router sends on the
          interface.  This value must be the same for the
          virtual neighbor."                      "The number of seconds that a router's Hello
          packets have not been seen before its
          neighbors declare the router down.  This should be
          some multiple of the Hello interval.  This
          value must be the same for the virtual neighbor."                        "OSPF virtual interface states."                      "The number of state changes or error events on
          this virtual link.

          Discontinuities in the value of this counter can occur
          at re-initialization of the management system, and at other
          times as indicated by the value of ospfDiscontinuityTime."                      �"The cleartext password used as an OSPF
          authentication key when simplePassword security
          is enabled.  This object does not access any OSPF
          cryptogaphic (e.g., MD5) authentication key under
          any circumstance.

          If the key length is shorter than 8 octets, the
          agent will left adjust and zero fill to 8 octets.

          Unauthenticated interfaces need no authentication
          key, and simple password authentication cannot use
          a key of more than 8 octets.

          Note that the use of simplePassword authentication
          is NOT recommended when there is concern regarding
          attack upon the OSPF system.  SimplePassword
          authentication is only sufficient to protect against
          accidental misconfigurations because it re-uses
          cleartext passwords.  [RFC1704]

          When read, ospfIfAuthKey always returns an octet
          string of length zero." C"OSPF Version 2, Section 9 The Interface Data
          Structure"                   -- 0.0.0.0.0.0.0.0
"This object permits management of the table by
          facilitating actions such as row creation,
          construction, and destruction.

          The value of this object has no effect on
          whether other objects in this conceptual row can be
          modified."                       �"The authentication type specified for a virtual interface.

          Note that this object can be used to engage
          in significant attacks against an OSPF router." +"OSPF Version 2, Appendix E Authentication"                   "-- no authentication, by default
 �"The total number of link-local link state advertisements
          in this virtual interface's link-local link state database."                      �"The 32-bit unsigned sum of the link state
          advertisements' LS checksums contained in this
          virtual interface's link-local link state database.
          The sum can be used to determine if there has
          been a change in the virtual interface's link state
          database, and to compare the virtual interface
          link state database of the virtual neighbors."                       ]"A table describing all non-virtual neighbors
          in the locality of the OSPF router." C"OSPF Version 2, Section 10 The Neighbor Data
          Structure"                     �"The information regarding a single neighbor.

          Information in this table is persistent and when this object
          is written the entity SHOULD save the change to non-volatile
          storage." C"OSPF Version 2, Section 10 The Neighbor Data
          Structure"                     �"The IP address this neighbor is using in its
          IP source address.  Note that, on addressless
          links, this will not be 0.0.0.0 but the
          address of another of the neighbor's interfaces."             2-- read-only since originally an
-- SMIv1 index
         �"On an interface having an IP address, zero.
          On addressless interfaces, the corresponding
          value of ifIndex in the Internet Standard MIB.
          On row creation, this can be derived from the
          instance."             2-- read-only since originally an
-- SMIv1 index
         �"A 32-bit integer (represented as a type
          IpAddress) uniquely identifying the neighboring
          router in the Autonomous System."                     -- 0.0.0.0
�"A bit mask corresponding to the neighbor's
          options field.

          Bit 0, if set, indicates that the system will
          operate on Type of Service metrics other than
          TOS 0.  If zero, the neighbor will ignore all
          metrics except the TOS 0 metric.

          Bit 1, if set, indicates that the associated
          area accepts and operates on external
          information; if zero, it is a stub area.

          Bit 2, if set, indicates that the system is
          capable of routing IP multicast datagrams, that is
          that it implements the multicast extensions to
          OSPF.

          Bit 3, if set, indicates that the associated
          area is an NSSA.  These areas are capable of
          carrying type-7 external advertisements, which
          are translated into type-5 external advertisements
          at NSSA borders." ("OSPF Version 2, Section 12.1.2 Options"                     �"The priority of this neighbor in the designated
          router election algorithm.  The value 0 signifies
          that the neighbor is not eligible to become
          the designated router on this particular network."                       3"The state of the relationship with this neighbor." ."OSPF Version 2, Section 10.1 Neighbor States"                    7"The number of times this neighbor relationship
          has changed state or an error has occurred.

          Discontinuities in the value of this counter can occur
          at re-initialization of the management system, and at other
          times as indicated by the value of ospfDiscontinuityTime."                       <"The current length of the retransmission
          queue."                      "This object permits management of the table by
          facilitating actions such as row creation,
          construction, and destruction.

          The value of this object has no effect on
          whether other objects in this conceptual row can be
          modified."                       �"This variable displays the status of the entry;
          'dynamic' and 'permanent' refer to how the neighbor
          became known."                       K"Indicates whether Hellos are being suppressed
          to the neighbor."                       b"Indicates whether the router is acting
          as a graceful restart helper for the neighbor."                       �"Remaining time in current OSPF graceful restart
          interval, if the router is acting as a restart
          helper for the neighbor."                       p"Describes the outcome of the last attempt at acting
           as a graceful restart helper for the neighbor."                       �"This table describes all virtual neighbors.
          Since virtual links are configured
          in the Virtual Interface Table, this table is read-only." *"OSPF Version 2, Section 15 Virtual Links"                     "Virtual neighbor information."                       "The Transit Area Identifier."             2-- read-only since originally an
-- SMIv1 index
         c"A 32-bit integer uniquely identifying the
          neighboring router in the Autonomous System."             2-- read-only since originally an
-- SMIv1 index
         0"The IP address this virtual neighbor is using."                      �"A bit mask corresponding to the neighbor's
          options field.

          Bit 1, if set, indicates that the system will
          operate on Type of Service metrics other than
          TOS 0.  If zero, the neighbor will ignore all
          metrics except the TOS 0 metric.

          Bit 2, if set, indicates that the system is
          network multicast capable, i.e., that it
          implements OSPF multicast routing."                       1"The state of the virtual neighbor relationship."                      2"The number of times this virtual link has
          changed its state or an error has occurred.

          Discontinuities in the value of this counter can occur
          at re-initialization of the management system, and at other
          times as indicated by the value of ospfDiscontinuityTime."                       <"The current length of the retransmission
          queue."                       K"Indicates whether Hellos are being suppressed
          to the neighbor."                       b"Indicates whether the router is acting
          as a graceful restart helper for the neighbor."                       �"Remaining time in current OSPF graceful restart
          interval, if the router is acting as a restart
          helper for the neighbor."                       p"Describes the outcome of the last attempt at acting
           as a graceful restart helper for the neighbor."                      �"The OSPF Process's external LSA link state database.

          This table is identical to the OSPF LSDB Table
          in format, but contains only external link state
          advertisements.  The purpose is to allow external
          LSAs to be displayed once for the router rather
          than once in each non-stub area.

          Note that external LSAs are also in the AS-scope link state
          database." 6"OSPF Version 2, Section 12 Link State Advertisements"                     $"A single link state advertisement."                       {"The type of the link state advertisement.
          Each link state type has a separate advertisement
          format." O"OSPF Version 2, Appendix A.4.1 The Link State
          Advertisement header"           2-- read-only since originally an
-- SMIv1 index
         �"The Link State ID is an LS Type Specific field
          containing either a Router ID or an IP address;
          it identifies the piece of the routing domain
          that is being described by the advertisement." ."OSPF Version 2, Section 12.1.4 Link State ID"           2-- read-only since originally an
-- SMIv1 index
         h"The 32-bit number that uniquely identifies the
          originating router in the Autonomous System." 0"OSPF Version 2, Appendix C.1 Global parameters"           2-- read-only since originally an
-- SMIv1 index
        �"The sequence number field is a signed 32-bit
          integer.  It starts with the value '80000001'h,
          or -'7FFFFFFF'h, and increments until '7FFFFFFF'h.
          Thus, a typical sequence number will be very negative.
          It is used to detect old and duplicate link state
          advertisements.  The space of sequence numbers is linearly
          ordered.  The larger the sequence number, the more recent
          the advertisement." C"OSPF Version  2,  Section  12.1.6  LS  sequence
          number"                     N"This field is the age of the link state
          advertisement in seconds." '"OSPF Version 2, Section 12.1.1 LS age"       =-- Should be 0..MaxAge, except when
-- doNotAge bit is set
            �"This field is the checksum of the complete
          contents of the advertisement, excepting the
          age field.  The age field is excepted so that
          an advertisement's age can be incremented
          without updating the checksum.  The checksum
          used is the same that is used for ISO
          connectionless datagrams; it is commonly referred
          to as the Fletcher checksum." ,"OSPF Version 2, Section 12.1.7 LS checksum"                     G"The entire link state advertisement, including
          its header." B"OSPF Version 2, Section 12  Link State
          Advertisements"                                        2"The Area Aggregate Table acts as an adjunct
           to the Area Table.  It describes those address aggregates
           that are configured to be propagated from an area.
           Its purpose is to reduce the amount of information
           that is known beyond an Area's borders.

           It contains a set of IP address ranges
           specified by an IP address/IP network mask pair.
           For example, a class B address range of X.X.X.X
           with a network mask of 255.255.0.0 includes all IP
           addresses from X.X.0.0 to X.X.255.255.

           Note that if ranges are configured such that one range
           subsumes another range (e.g., 10.0.0.0 mask 255.0.0.0
           and 10.1.0.0 mask 255.255.0.0),
           the most specific match is the preferred one." /"OSPF Version 2, Appendix C.2  Area parameters"                     �"A single area aggregate entry.

          Information in this table is persistent and when this object
          is written the entity SHOULD save the change to non-volatile
          storage." /"OSPF Version 2, Appendix C.2  Area parameters"                     H"The area within which the address aggregate is to be
          found." ."OSPF Version 2, Appendix C.2 Area parameters"           2-- read-only since originally an
-- SMIv1 index
         �"The type of the address aggregate.  This field
          specifies the Lsdb type that this address
          aggregate applies to." O"OSPF Version 2, Appendix A.4.1 The Link State
          Advertisement header"           2-- read-only since originally an
-- SMIv1 index
         H"The IP address of the net or subnet indicated
          by the range." ."OSPF Version 2, Appendix C.2 Area parameters"           2-- read-only since originally an
-- SMIv1 index
         @"The subnet mask that pertains to the net or
          subnet." ."OSPF Version 2, Appendix C.2 Area parameters"           2-- read-only since originally an
-- SMIv1 index
        "This object permits management of the table by
          facilitating actions such as row creation,
          construction, and destruction.

          The value of this object has no effect on
          whether other objects in this conceptual row can be
          modified."                       �"Subnets subsumed by ranges either trigger the
          advertisement of the indicated aggregate
         (advertiseMatching) or result in the subnet's not
          being advertised at all outside the area."                       F"External route tag to be included in NSSA (type-7)
           LSAs."                      �"The OSPF Process's link-local link state database
          for non-virtual links.
          This table is identical to the OSPF LSDB Table
          in format, but contains only link-local Link State
          Advertisements for non-virtual links.  The purpose is
          to allow link-local LSAs to be displayed for each
          non-virtual interface.  This table is implemented to
          support type-9 LSAs that are defined
          in 'The OSPF Opaque LSA Option'." `"OSPF Version 2, Section 12 Link State Advertisements
          and The OSPF Opaque LSA Option"                     $"A single link state advertisement."                       u"The IP address of the interface from
          which the LSA was received if the interface is
          numbered." 3"OSPF Version 2, Appendix C.3 Interface parameters"                     |"The interface index of the interface from
          which the LSA was received if the interface is
          unnumbered." 3"OSPF Version 2, Appendix C.3 Interface parameters"                     {"The type of the link state advertisement.
          Each link state type has a separate
          advertisement format." O"OSPF Version 2, Appendix A.4.1 The Link State
          Advertisement header"                     �"The Link State ID is an LS Type Specific field
          containing a 32-bit identifier in IP address format;
          it identifies the piece of the routing domain
          that is being described by the advertisement." ."OSPF Version 2, Section 12.1.4 Link State ID"                     h"The 32-bit number that uniquely identifies the
          originating router in the Autonomous System." 0"OSPF Version 2, Appendix C.1 Global parameters"                    �"The sequence number field is a signed 32-bit
          integer.  It starts with the value '80000001'h,
          or -'7FFFFFFF'h, and increments until '7FFFFFFF'h.
          Thus, a typical sequence number will be very negative.
          It is used to detect old and duplicate link state
          advertisements.  The space of sequence numbers is linearly
          ordered.  The larger the sequence number, the more recent
          the advertisement." >"OSPF Version 2, Section 12.1.6 LS sequence
          number"                     N"This field is the age of the link state
          advertisement in seconds." '"OSPF Version 2, Section 12.1.1 LS age"       =-- Should be 0..MaxAge, except when
-- doNotAge bit is set
            �"This field is the checksum of the complete
          contents of the advertisement, excepting the
          age field.  The age field is excepted so that
          an advertisement's age can be incremented
          without updating the checksum.  The checksum
          used is the same that is used for ISO
          connectionless datagrams; it is commonly referred
          to as the Fletcher checksum." ,"OSPF Version 2, Section 12.1.7 LS checksum"                     �"The entire link state advertisement, including
          its header.

          Note that for variable length LSAs, SNMP agents
          may not be able to return the largest string size." A"OSPF Version 2, Section 12 Link State
          Advertisements"                    �"The OSPF Process's link-local link state database
          for virtual links.

          This table is identical to the OSPF LSDB Table
          in format, but contains only link-local Link State
          Advertisements for virtual links.  The purpose is to
          allow link-local LSAs to be displayed for each virtual
          interface.  This table is implemented to support type-9 LSAs
          that are defined in 'The OSPF Opaque LSA Option'." `"OSPF Version 2, Section 12 Link State
          Advertisements and The OSPF Opaque LSA Option"                     $"A single link state advertisement."                       c"The transit area that the virtual link
          traverses.  By definition, this is not 0.0.0.0." 3"OSPF Version 2, Appendix C.3 Interface parameters"                     ("The Router ID of the virtual neighbor." 3"OSPF Version 2, Appendix C.3 Interface parameters"                     {"The type of the link state advertisement.
          Each link state type has a separate
          advertisement format." O"OSPF Version 2, Appendix A.4.1 The Link State
          Advertisement header"                     �"The Link State ID is an LS Type Specific field
          containing a 32-bit identifier in IP address format;
          it identifies the piece of the routing domain
          that is being described by the advertisement." ."OSPF Version 2, Section 12.1.4 Link State ID"                     h"The 32-bit number that uniquely identifies the
          originating router in the Autonomous System." 0"OSPF Version 2, Appendix C.1 Global parameters"                    �"The sequence number field is a signed 32-bit
          integer.  It starts with the value '80000001'h,
          or -'7FFFFFFF'h, and increments until '7FFFFFFF'h.
          Thus, a typical sequence number will be very negative.
          It is used to detect old and duplicate link state
          advertisements.  The space of sequence numbers is linearly
          ordered.  The larger the sequence number, the more recent
          the advertisement." >"OSPF Version 2, Section 12.1.6 LS sequence
          number"                     N"This field is the age of the link state
          advertisement in seconds." '"OSPF Version 2, Section 12.1.1 LS age"       =-- Should be 0..MaxAge, except when
-- doNotAge bit is set
            �"This field is the checksum of the complete
          contents of the advertisement, excepting the
          age field.  The age field is excepted so that
          an advertisement's age can be incremented
          without updating the checksum.  The checksum
          used is the same that is used for ISO
          connectionless datagrams; it is commonly
          referred to as the Fletcher checksum." ,"OSPF Version 2, Section 12.1.7 LS checksum"                     G"The entire link state advertisement, including
          its header." �"OSPF Version 2, Section 12 Link State
          Advertisements.

          Note that for variable length LSAs, SNMP agents
          may not be able to return the largest string size."                    �"The OSPF Process's AS-scope LSA link state database.
           The database contains the AS-scope Link State
           Advertisements from throughout the areas that
           the device is attached to.

           This table is identical to the OSPF LSDB Table
           in format, but contains only AS-scope Link State
           Advertisements.  The purpose is to allow AS-scope
           LSAs to be displayed once for the router rather
           than once in each non-stub area." A"OSPF Version 2, Section 12 Link State
          Advertisements"                     $"A single link state advertisement."                       {"The type of the link state advertisement.
          Each link state type has a separate
          advertisement format." O"OSPF Version 2, Appendix A.4.1 The Link State
          Advertisement header"                     �"The Link State ID is an LS Type Specific field
          containing either a Router ID or an IP address;
          it identifies the piece of the routing domain
          that is being described by the advertisement." ."OSPF Version 2, Section 12.1.4 Link State ID"                     h"The 32-bit number that uniquely identifies the
          originating router in the Autonomous System." 0"OSPF Version 2, Appendix C.1 Global parameters"                    �"The sequence number field is a signed 32-bit
          integer.  It starts with the value '80000001'h,
          or -'7FFFFFFF'h, and increments until '7FFFFFFF'h.
          Thus, a typical sequence number will be very negative.
          It is used to detect old and duplicate link state
          advertisements.  The space of sequence numbers is linearly
          ordered.  The larger the sequence number, the more recent
          the advertisement." C"OSPF Version  2,  Section  12.1.6  LS  sequence
          number"                     N"This field is the age of the link state
          advertisement in seconds." '"OSPF Version 2, Section 12.1.1 LS age"       =-- Should be 0..MaxAge, except when
-- doNotAge bit is set
            �"This field is the checksum of the complete
          contents of the advertisement, excepting the
          age field.  The age field is excepted so that
          an advertisement's age can be incremented
          without updating the checksum.  The checksum
          used is the same that is used for ISO
          connectionless datagrams; it is commonly referred
          to as the Fletcher checksum." ,"OSPF Version 2, Section 12.1.7 LS checksum"                     G"The entire link state advertisement, including
          its header." �"OSPF Version 2, Section 12 Link State
          Advertisements.

          Note that for variable length LSAs, SNMP agents
          may not be able to return the largest string size."                     6"This table maintains per-area, per-LSA-type counters"                       `"An entry with a number of link advertisements
              of a given type for a given area."                       "This entry Area ID."                       "This entry LSA type."                       2"Number of LSAs of a given type for a given area."                               �"These objects are used to monitor/manage
          global OSPF parameters.  This object group
          conforms to RFC 1850."                 S"These objects are used for OSPF systems
          supporting areas per RFC 1850."                 K"These objects are used for OSPF systems
          supporting stub areas."                 \"These objects are used for OSPF systems
          that display their link state database."                 �"These objects are used for non-CIDR OSPF
          systems that support multiple areas.  This
          object group is obsolete."                 Q"These objects are used for OSPF systems
          that support attached hosts."                 o"These objects are used to monitor/manage OSPF
          interfaces.  This object group conforms to RFC 1850."                 V"These objects are used for OSPF systems for supporting
          interface metrics."                 �"These objects are used for OSPF systems for supporting
          virtual interfaces.  This object group conforms
          to RFC 1850."                 m"These objects are used to monitor/manage OSPF neighbors.
          This object group conforms to RFC 1850."                 v"These objects are used to monitor/manage OSPF virtual
          neighbors.  This object group conforms to RFC 1850."                %"These objects are used for OSPF systems that display
          their link state database.  This object group
          conforms to RFC 1850.

          This object group is replaced by the ospfAsLsdbGroup
          in order to support any AS-scope LSA type in a single
          table."                 h"These objects are used for OSPF systems to support
          network prefix aggregation across areas."                 �"These objects are used for OSPF systems
          that display their link-local link state databases
          for non-virtual links."                 �"These objects are used for OSPF systems
           that display their link-local link state databases
           for virtual links."                 f"These objects are used for OSPF systems
           that display their AS-scope link state database."                 M"These objects are used to monitor/manage OSPF global
          parameters."                 G"These objects are used by OSPF systems
            to support areas."                 ;"These objects are used to monitor/manage OSPF interfaces."                 N"These objects are used to monitor/manage OSPF
          virtual interfaces."                 E"These objects are used to monitor/manage OSPF
          neighbors."                 M"These objects are used to monitor/manage OSPF
          virtual neighbors."                 h"These objects are used for OSPF systems to support
          network prefix aggregation across areas."                 b"These objects are used for OSPF systems that display
          per-area, per-LSA-type counters."                 Q"These objects are used for OSPF systems
          that support attached hosts."                 �"These objects are obsolete and are no longer required for
          OSPF systems.  They are placed into this group for SMI
          conformance."                     N"The compliance statement for OSPF systems
          conforming to RFC 1850."   U"This group is mandatory for OSPF systems that support
             attached hosts." i"This group is mandatory for OSPF systems that display
             their per-area link state database." i"This group is mandatory for OSPF systems that display
             their external link state database."             "The compliance statement."   U"This group is mandatory for OSPF systems that support
             attached hosts." i"This group is mandatory for OSPF systems that display
             their per-area link state database." i"This group is mandatory for OSPF systems that display
             their AS-scope link state database." �"This group is mandatory for OSPF systems that display
             their per-link link state database for non-virtual
             links." {"This group is mandatory for OSPF systems that display
             their per-link link state database for virtual links." f"This group is mandatory for OSPF systems that display
             per-area, per-LSA-type counters."             ""Contains obsolete object groups."   �"This group is obsolete, and it is mandatory only
             for non-Classless Inter-Domain Routing (CIDR) OSPF
             systems that support multiple areas." d"This group contains obsolete objects,
             which are no longer required for OSPF systems."                