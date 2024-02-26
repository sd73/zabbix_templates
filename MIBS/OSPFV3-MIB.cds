   0"OSPF for IPv6, Appendix C.1, Global Parameters"'"A 32-bit, unsigned integer uniquely identifying the
                  router in the Autonomous System.  To ensure
                  uniqueness, this may default to the value of one of
                  the router's IPv4 host addresses if IPv4 is
                  configured on the router."             5"OSPF Version 2, Appendix B, Architectural Constants" m"The values one might be able to configure for
                  variables bounded by the Refresh Interval."             M"OSPF for IPv6, Appendix C.3, Router Interface
                  Parameters" 0"The range, in seconds, of dead interval value."             L"OSPF for IPv6, Appendix C.3 Router Interface
                  Parameters" ^"An OSPFv3 Area Identifier.  A value of zero
                  identifies the backbone area."             /"OSPF Version 2, Section 12.1.4, Link State ID" �"A unique 32-bit identifier of the piece of the
                  routing domain that is being described by a link
                  state advertisement.  In contrast to OSPFv2, the
                  Link State ID (LSID) has no addressing semantics."             �"OSPF Version 2, Section 12.1.1, LS age;
                 Extending OSPF to Support Demand Circuits,
                 Section 2.2, The LS age field" �"The age of the link state advertisement in
                seconds.  The high-order bit of the LS age
                field is considered the DoNotAge bit for
                support of on-demand circuits."             M"OSPF for IPv6, Appendix C.3, Router Interface
                  Parameters" ""An OSPFv3 Interface Instance ID."             E"OSPF Version 2, Section 12.1.6, LS sequence
                number"G"The sequence number field is a signed 32-bit
                integer.  It is used to detect old and duplicate
                link state advertisements.  The space of
                sequence numbers is linearly ordered.  The
                larger the sequence number, the more recent the
                advertisement."                                                                                        	"The MIB module for OSPF version 3.

                 Copyright (c) 2009 IETF Trust and the persons
                 identified as authors of the code.  All rights
                 reserved.

                 Redistribution and use in source and binary forms, with
                 or without modification, are permitted provided that
                 the following conditions are met:

                 - Redistributions of source code must retain the above
                   copyright notice, this list of conditions and the
                   following disclaimer.

                - Redistributions in binary form must reproduce the
                  above copyright notice, this list of conditions and
                  the following disclaimer in the documentation and/or
                  other materials provided with the distribution.

                - Neither the name of Internet Society, IETF or IETF
                  Trust, nor the names of specific contributors, may be
                  used to endorse or promote products derived from this
                  software without specific prior written permission.

                  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
                  CONTRIBUTORS 'AS IS' AND ANY EXPRESS OR IMPLIED
                  WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
                  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
                  PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL
                  THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY
                  DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
                  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
                  PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
                  USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
                  HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER
                  IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
                  NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
                  USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
                  POSSIBILITY OF SUCH DAMAGE.

                  This version of this MIB module is part of RFC 5643;
                  see the RFC itself for full legal notices."�"WG E-Mail: ospf@ietf.org
                 WG Chairs: Acee Lindem
                            acee@redback.com

                            Abhay Roy
                            akr@cisco.com

                 Editors:   Dan Joyal
                            Nortel
                            600 Technology Park Drive
                            Billerica, MA  01821, USA
                            djoyal@nortel.com

                            Vishwas Manral
                            IP Infusion
                            Almora, Uttarakhand
                            India
                            vishwas@ipinfusion.com" "200908130000Z" ("Initial version, published as RFC 5643"                  l"An ospfv3VirtIfStateChange notification signifies that
            there has been a change in the state of an OSPFv3 virtual
            interface.

            This notification should be generated when the interface
            state regresses (e.g., goes from Point-to-Point to Down)
            or progresses to a terminal state (i.e., Point-to-Point)."                �"An ospfv3NbrStateChange notification signifies that
            there has been a change in the state of a
            non-virtual OSPFv3 neighbor.  This notification should be
            generated when the neighbor state regresses
            (e.g., goes from Attempt or Full to 1-Way or
            Down) or progresses to a terminal state (e.g.,
            2-Way or Full).  When a neighbor transitions
            from or to Full on non-broadcast multi-access
            and broadcast networks, the notification should be
            generated by the Designated Router.  A Designated
            Router transitioning to Down will be noted by
            ospfIfStateChange."                j"An ospfv3VirtNbrStateChange notification signifies
            that there has been a change in the state of an OSPFv3
            virtual neighbor.  This notification should be generated
            when the neighbor state regresses (e.g., goes
            from Attempt or Full to 1-Way or Down) or
            progresses to a terminal state (e.g., Full)."                �"An ospfv3IfConfigError notification signifies that a
            packet has been received on a non-virtual
            interface from a router whose configuration
            parameters conflict with this router's
            configuration parameters.  Note that the event
            optionMismatch should cause a notification only if it
            prevents an adjacency from forming."                �"An ospfv3VirtIfConfigError notification signifies that a
            packet has been received on a virtual interface
            from a router whose configuration parameters
            conflict with this router's configuration
            parameters.  Note that the event optionMismatch
            should cause a notification only if it prevents an
            adjacency from forming."                 �"An ospfv3IfRxBadPacket notification signifies that an
            OSPFv3 packet that cannot be parsed has been received on a
            non-virtual interface."                 �"An ospfv3VirtIfRxBadPacket notification signifies
            that an OSPFv3 packet that cannot be parsed has been
            received on a virtual interface."                 �"An ospfv3LsdbOverflow notification signifies that the
            number of LSAs in the router's link state
            database has exceeded ospfv3ExtAreaLsdbLimit."                 �"An ospfv3LsdbApproachingOverflow notification signifies
            that the number of LSAs in the router's
            link state database has exceeded ninety percent of
            ospfv3ExtAreaLsdbLimit."                �"An ospfv3IfStateChange notification signifies that there
            has been a change in the state of a non-virtual
            OSPFv3 interface.  This notification should be generated
            when the interface state regresses (e.g., goes
            from DR to Down) or progresses to a terminal
            state (i.e., Point-to-Point, DR Other, DR, or
            Backup)."                l"An ospfv3NssaTranslatorStatusChange notification
            indicates that there has been a change in the router's
            ability to translate OSPFv3 NSSA LSAs into OSPFv3 External
            LSAs.  This notification should be generated when the
            Translator Status transitions from or to any defined
            status on a per-area basis."                "An ospfv3RestartStatusChange notification signifies that
            there has been a change in the graceful restart
            state for the router.  This notification should be
            generated when the router restart status
            changes."                0"An ospfv3NbrRestartHelperStatusChange notification
            signifies that there has been a change in the
            graceful restart helper state for the neighbor.
            This notification should be generated when the
            neighbor restart helper status transitions for a neighbor."                Z"An ospfv3VirtNbrRestartHelperStatusChange
            notification signifies that there has been a
            change in the graceful restart helper state for
            the virtual neighbor.  This notification should be
            generated when the virtual neighbor restart helper status
            transitions for a virtual neighbor."                        �"A 32-bit unsigned integer uniquely identifying
                the router in the Autonomous System.  To ensure
                uniqueness, this may default to the 32-bit
                unsigned integer representation of one of
                the router's IPv4 interface addresses (if IPv4
                is configured on the router).

                This object is persistent, and when written, the
                entity SHOULD save the change to non-volatile
                storage." 0"OSPF for IPv6, Appendix C.1, Global Parameters"                    �"The administrative status of OSPFv3 in the
                router.  The value 'enabled' denotes that the
                OSPFv3 Process is active on at least one
                interface; 'disabled' disables it on all
                interfaces.

                This object is persistent, and when written, the
                entity SHOULD save the change to non-volatile
                storage."                       +"The version number of OSPF for IPv6 is 3."                       �"A flag to denote whether this router is an area
                border router.  The value of this object is true (1)
                when the router is an area border router." I"OSPF Version 2, Section 3, Splitting the AS into
                Areas"                    "A flag to note whether this router is
                configured as an Autonomous System border router.

                This object is persistent, and when written, the
                entity SHOULD save the change to non-volatile
                storage." I"OSPF Version 2, Section 3.3, Classification of
                routers"                     s"The number of AS-scope (e.g., AS-External) link state
                advertisements in the link state database."                      z"The 32-bit unsigned sum of the LS checksums of
                the AS-scoped link state advertisements
                contained in the link state database.  This sum
                can be used to determine if there has been a
                change in a router's link state database or
                to compare the link state database of two
                routers."                      �"The number of new link state advertisements
                that have been originated.  This number is
                incremented each time the router originates a new
                LSA.

                Discontinuities in the value of this counter
                can occur at re-initialization of the management
                system and at other times as indicated by the
                value of ospfv3DiscontinuityTime."                      �"The number of link state advertisements
                received that are determined to be new
                instantiations.  This number does not include
                newer instantiations of self-originated link state
                advertisements.

                Discontinuities in the value of this counter
                can occur at re-initialization of the management
                system and at other times as indicated by the
                value of ospfv3DiscontinuityTime."                       W"The number of External (LS type 0x4005) in the
                 link state database."                      �"The maximum number of non-default
                AS-external-LSA entries that can be stored in the
                link state database.  If the value is -1, then
                there is no limit.

                When the number of non-default AS-external-LSAs
                in a router's link state database reaches
                ospfv3ExtAreaLsdbLimit, the router enters Overflow
                state.  The router never holds more than
                ospfv3ExtAreaLsdbLimit non-default AS-external-LSAs
                in its database.  ospfv3ExtAreaLsdbLimit MUST be set
                identically in all routers attached to the OSPFv3
                backbone and/or any regular OSPFv3 area (i.e.,
                OSPFv3 stub areas and not-so-stubby-areas (NSSAs)
                are excluded).

                This object is persistent, and when written, the
                entity SHOULD save the change to non-volatile
                storage."                      �"The number of seconds that, after entering
                Overflow state, a router will attempt to leave
                Overflow state.  This allows the router to again
                originate non-default, AS-External-LSAs.  When
                set to 0, the router will not leave Overflow
                state until restarted.

                This object is persistent, and when written, the
                entity SHOULD save the change to non-volatile
                storage."                      3"The router's support for demand circuits.
                The value of this object is true (1) when
                demand circuits are supported.

                This object is persistent, and when written, the
                entity SHOULD save the change to non-volatile
                storage." L"OSPF Version 2; Extending OSPF to Support Demand
                Circuits"                    @"Reference bandwidth in kilobits per second for
               calculating default interface metrics.  The
               default value is 100,000 KBPS (100 MBPS).

               This object is persistent, and when written, the
               entity SHOULD save the change to non-volatile
               storage." K"OSPF Version 2, Appendix C.3, Router interface
               parameters"                    N"The router's support for OSPF graceful restart.
               Options include no restart support, only planned
               restarts, or both planned and unplanned restarts.

               This object is persistent, and when written, the
               entity SHOULD save the change to non-volatile
               storage." b"Graceful OSPF Restart, Appendix B.1, Global
                        Parameters (Minimum subset)"                     �"Configured OSPF graceful restart timeout interval.

               This object is persistent, and when written, the
               entity SHOULD save the change to non-volatile
               storage." _"Graceful OSPF Restart, Appendix B.1, Global
                     Parameters (Minimum subset)"                    7"Indicates if strict LSA checking is enabled for
             graceful restart.  A value of true (1) indicates that
             strict LSA checking is enabled.

             This object is persistent, and when written,
             the entity SHOULD save the change to non-volatile
             storage." X"Graceful OSPF Restart, Appendix B.2, Global
                    Parameters (Optional)"                     9"The current status of OSPF graceful restart capability."                       N"Remaining time in the current OSPF graceful restart
              interval."                      �"Describes the outcome of the last attempt at a
              graceful restart.

              none:            no restart has yet been attempted.
              inProgress:      a restart attempt is currently underway.
              completed:       the last restart completed successfully.
              timedOut:        the last restart timed out.
              topologyChanged: the last restart was aborted due to
                               a topology change."                      �"This object provides a coarse level of control
                over the generation of OSPFv3 notifications.

                If this object is set to true (1), then it enables
                the generation of OSPFv3 notifications.  If it is
                set to false (2), these notifications are not
                generated.
                This object is persistent, and when written, the
                entity SHOULD save the change to non-volatile
                storage."                       �"The router's support for stub router functionality.  An
            object value of true (1) indicates that stub router
            functionality is supported."  "OSPF Stub Router Advertisement"                    f"This object controls the advertisement of
            stub LSAs by the router.  The value
            doNotAdvertise (1) will result in the advertisement
            of standard LSAs and is the default value.

            This object is persistent, and when written,
            the entity SHOULD save the change to non-volatile
            storage." K"OSPF Stub Router Advertisement, Section 2, Proposed
            Solution"                    I"The value of sysUpTime on the most recent occasion
           at which any one of this MIB's counters suffered
           a discontinuity.

           If no such discontinuities have occurred since the last
           re-initialization of the local management subsystem,
           then this object contains a zero value."                       t"The value of sysUpTime on the most recent occasion
             at which the ospfv3RestartExitReason was updated."                      &"Information describing the configured
                parameters and cumulative statistics of the router's
                attached areas.  The interfaces and
                virtual links are configured as part of these areas.
                Area 0, by definition, is the backbone area." E"OSPF Version 2, Section 6, The Area Data
                Structure"                    F"Information describing the configured
                parameters and cumulative statistics of one of the
                router's attached areas.

                The information in this table is persistent,
                and when written, the entity SHOULD save the a
                change to non-volatile storage."                       u"A 32-bit unsigned integer uniquely identifying an area.
                Area ID 0 is used for the OSPFv3 backbone." /"OSPF Version 2, Appendix C.2, Area parameters"                     �"Indicates whether an area is a stub area, NSSA, or
                standard area.  AS-scope LSAs are not imported into stub
                areas or NSSAs.  NSSAs import AS-External data as NSSA
                LSAs that have Area-scope." /"OSPF Version 2, Appendix C.2, Area parameters"                    �"The number of times that the intra-area route
                table has been calculated using this area's
                link state database.  This is typically done
                using Dijkstra's algorithm.

                Discontinuities in the value of this counter
                can occur at re-initialization of the management
                system and at other times as indicated by the
                value of ospfv3DiscontinuityTime."                       �"The total number of area border routers
                reachable within this area.  This is initially zero,
                and is calculated in each Shortest Path First (SPF)
                pass."                       �"The total number of Autonomous System border
                routers reachable within this area.  This is
                initially zero, and is calculated in each SPF
                pass."                       �"The total number of Area-scope link state
                advertisements in this area's link state
                database."                      k"The 32-bit unsigned sum of the Area-scope link state
                advertisements' LS checksums contained in this
                area's link state database.  The sum can be used
                to determine if there has been a change in a
                router's link state database or to compare the
                link state database of two routers."                      "The variable ospfv3AreaSummary controls the
                import of Inter-Area LSAs into stub and
                NSSA areas.  It has no effect on other areas.

                If it is noAreaSummary, the router will neither
                originate nor propagate Inter-Area LSAs into the
                stub or NSSA area.  It will only advertise a
                default route.

                If it is sendAreaSummary, the router will both
                summarize and propagate Inter-Area LSAs."                      9"This object permits management of the table by
                facilitating actions such as row creation,
                construction, and destruction.

                The value of this object has no effect on
                whether other objects in this conceptual row can be
                modified."                       �"The metric value advertised for the default route
                into stub and NSSA areas.  By default, this equals the
                least metric among the interfaces to other areas."                       �"Indicates an NSSA border router's policy to
                perform NSSA translation of NSSA-LSAs into
                AS-External-LSAs."                      x"Indicates if and how an NSSA border router is
                 performing NSSA translation of NSSA-LSAs into
                 AS-External-LSAs.  When this object is set to
                 'enabled', the NSSA border router's
                 ospfv3AreaNssaTranslatorRole has been set to 'always'.
                 When this object is set to 'elected', a candidate
                 NSSA border router is translating NSSA-LSAs into
                 AS-External-LSAs.  When this object is set to
                 'disabled', a candidate NSSA Border router is NOT
                 translating NSSA-LSAs into AS-External-LSAs."                       �"The stability interval defined as the number of
                seconds after an elected translator determines its
                services are no longer required that it should
                continue to perform its translation duties."                      �"Indicates the number of Translator state changes
                that have occurred since the last start-up of the
                OSPFv3 routing process.

                Discontinuities in the value of this counter
                can occur at re-initialization of the management
                system and at other times as indicated by the
                value of ospfv3DiscontinuityTime."                       Z"This variable assigns the type of metric
                advertised as a default route."                       �"Indicates whether or not traffic engineering
                   is enabled in the area.  The object is set
                   to the value true (1) to enable traffic engineering.
                   Traffic engineering is disabled by default."                       �"The OSPFv3 Process's AS-scope link state database
                (LSDB).  The LSDB contains the AS-scope link state
                advertisements from throughout the areas that the
                device is attached to."                       -"A single AS-scope link state advertisement."                       �"The type of the link state advertisement.
                Each link state type has a separate
                advertisement format.  AS-scope LSAs not recognized
                by the router may be stored in the database."                       n"The 32-bit number that uniquely identifies the
                originating router in the Autonomous System." 1"OSPF Version 2, Appendix C.1, Global parameters"                    >"The Link State ID is an LS type-specific field
                containing a unique identifier;
                it identifies the piece of the routing domain
                that is being described by the advertisement.
                In contrast to OSPFv2, the LSID has no
                addressing semantics."                      G"The sequence number field is a signed 32-bit
                integer.  It is used to detect old and duplicate
                link state advertisements.  The space of
                sequence numbers is linearly ordered.  The
                larger the sequence number, the more recent the
                advertisement." E"OSPF Version 2, Section 12.1.6, LS sequence
                number"                     �"This field is the age of the link state
                advertisement in seconds.  The high-order bit
                of the LS age field is considered the DoNotAge
                bit for support of on-demand circuits." �"OSPF Version 2, Section 12.1.1, LS age;
                 Extending OSPF to Support Demand Circuits,
                 Section 2.2, The LS age field."                    �"This field is the checksum of the complete
                contents of the advertisement, excepting the
                age field.  The age field is excepted so that
                an advertisement's age can be incremented
                without updating the checksum.  The checksum
                used is the same that is used for ISO
                connectionless datagrams; it is commonly
                referred to as the Fletcher checksum." -"OSPF Version 2, Section 12.1.7, LS checksum"                     M"The entire link state advertisement, including
                its header."                       _"The value true (1) indicates that the LSA type
                is recognized by this router."                       �"The OSPFv3 Process's Area-scope LSDB.
                The LSDB contains the Area-scope link state
                advertisements from throughout the area that the
                device is attached to."                       /"A single Area-scope link state advertisement."                       U"The 32-bit identifier of the Area from which the
                LSA was received." /"OSPF Version 2, Appendix C.2, Area parameters"                     �"The type of the link state advertisement.
                Each link state type has a separate
                advertisement format.  Area-scope LSAs unrecognized
                by the router are also stored in this database."                       n"The 32-bit number that uniquely identifies the
                originating router in the Autonomous System." 1"OSPF Version 2, Appendix C.1, Global parameters"                    >"The Link State ID is an LS type-specific field
                containing a unique identifier;
                it identifies the piece of the routing domain
                that is being described by the advertisement.
                In contrast to OSPFv2, the LSID has no
                addressing semantics."                      G"The sequence number field is a signed 32-bit
                integer.  It is used to detect old and
                duplicate link state advertisements.  The space
                of sequence numbers is linearly ordered.  The
                larger the sequence number, the more recent the
                advertisement." E"OSPF Version 2, Section 12.1.6, LS sequence
                number"                     �"This field is the age of the link state
                advertisement in seconds.  The high-order bit
                of the LS age field is considered the DoNotAge
                bit for support of on-demand circuits." �"OSPF Version 2, Section 12.1.1, LS age;
                 Extending OSPF to Support Demand Circuits,
                 Section 2.2, The LS age field."                    �"This field is the checksum of the complete
                contents of the advertisement, excepting the
                age field.  The age field is excepted so that
                an advertisement's age can be incremented
                without updating the checksum.  The checksum
                used is the same that is used for ISO
                connectionless datagrams; it is commonly
                referred to as the Fletcher checksum." -"OSPF Version 2, Section 12.1.7, LS checksum"                     M"The entire link state advertisement, including
                its header."                       _"The value true (1) indicates that the LSA type is
                recognized by this router."                       �"The OSPFv3 Process's Link-scope LSDB for non-virtual
                interfaces.  The LSDB contains the Link-scope link
                state advertisements from the interfaces that the
                device is attached to."                       /"A single Link-scope link state advertisement."                       N"The identifier of the link from which the LSA
                was received."                       \"The identifier of the interface instance from
                which the LSA was received."                       �"The type of the link state advertisement.
                Each link state type has a separate
                advertisement format.  Link-scope LSAs unrecognized
                by the router are also stored in this database."                       n"The 32-bit number that uniquely identifies the
                originating router in the Autonomous System." 1"OSPF Version 2, Appendix C.1, Global parameters"                    �"The Link State ID is an LS type-specific field
                containing a unique identifier;
                it identifies the piece of the routing domain
                that is being described by the advertisement.
                In contrast to OSPFv2, the LSID has no
                addressing semantics.  However, in OSPFv3
                the Link State ID always contains the flooding
                scope of the LSA."                      G"The sequence number field is a signed 32-bit
                integer.  It is used to detect old and duplicate
                link state advertisements.  The space of
                sequence numbers is linearly ordered.  The
                larger the sequence number, the more recent the
                advertisement." E"OSPF Version 2, Section 12.1.6, LS sequence
                number"                     �"This field is the age of the link state
                advertisement in seconds.  The high-order bit
                of the LS age field is considered the DoNotAge
                bit for support of on-demand circuits." �"OSPF Version 2, Section 12.1.1, LS age;
                 Extending OSPF to Support Demand Circuits,
                 Section 2.2, The LS age field."                    �"This field is the checksum of the complete
                contents of the advertisement, excepting the
                age field.  The age field is excepted so that
                an advertisement's age can be incremented
                without updating the checksum.  The checksum
                used is the same that is used for ISO
                connectionless datagrams; it is commonly
                referred to as the Fletcher checksum." -"OSPF Version 2, Section 12.1.7, LS checksum"                     M"The entire link state advertisement, including
                its header."                       _"The value true (1) indicates that the LSA type is
                recognized by this router."                       �"The Host/Metric Table indicates what hosts are
                directly attached to the router and their
                corresponding metrics." F"OSPF Version 2, Appendix C.7, Host route
                parameters"                     �"A metric to be advertised when a given host is
                reachable.

                The information in this table is persistent, and
                when written, the entity SHOULD save the change
                to non-volatile storage."                       e"The address type of ospfv3HostAddress.  Only IPv6
                global address type is expected." F"OSPF Version 2, Appendix C.7, Host route
                parameters"                     Q"The IPv6 address of the host.  Must be an
                IPv6 global address." F"OSPF Version 2, Appendix C.7, Host route
                parameters"                     "The metric to be advertised." F"OSPF Version 2, Appendix C.7, Host route
                parameters"                    9"This object permits management of the table by
                facilitating actions such as row creation,
                construction, and destruction.

                The value of this object has no effect on
                whether other objects in this conceptual row can be
                modified."                       �"The Area the host entry is to be found within.
                By default, the area for the subsuming OSPFv3
                interface, or Area 0 if there is no subsuming
                interface." /"OSPF Version 2, Appendix C.2, Area parameters"                     d"The OSPFv3 Interface Table describes the
                interfaces from the viewpoint of OSPFv3." K"OSPF for IPv6, Appendix C.3, Router Interface
                Parameters"                    "The OSPFv3 Interface Entry describes one
                interface from the viewpoint of OSPFv3.

                The information in this table is persistent,
                and when written, the entity SHOULD save the
                change to non-volatile storage."                       �"The interface index of this OSPFv3 interface.
                It corresponds to the interface index of the
                IPv6 interface on which OSPFv3 is configured."                       �"Enables multiple interface instances of OSPFv3
                to be run over a single link.  Each interface
                instance would be assigned a separate ID.  This ID
                has local link significance only."                       �"A 32-bit integer uniquely identifying the area
                to which the interface connects.  Area ID
                0 is used for the OSPFv3 backbone."                       "The OSPFv3 interface type."                      �"The OSPFv3 interface's administrative status.
                The value formed on the interface; the interface
                will be advertised as an internal route to some
                area.  The value 'disabled' denotes that the
                interface is external to OSPFv3.

                Note that a value of 'disabled' for the object
                ospfv3AdminStatus will override a value of
                'enabled' for the interface."                      �"The priority of this interface.  Used in
                multi-access networks, this field is used in
                the designated-router election algorithm.  The
                value 0 signifies that the router is not
                eligible to become the Designated Router on this
                particular network.  In the event of a tie in
                this value, routers will use their Router ID as
                a tie breaker."                      �"The estimated number of seconds it takes to transmit
                a Link State Update packet over this interface.  LSAs
                contained in the update packet must have their age
                incremented by this amount before transmission.  This
                value should take into account the transmission and
                propagation delays of the interface." L"OSPF for IPv6, Appendix C.3, Router Interface
                Parameters."                    "The number of seconds between link state
                advertisement retransmissions for adjacencies
                belonging to this interface.  This value is
                also used when retransmitting database
                description and Link State Request packets."                       �"The length of time, in seconds, between the
                Hello packets that the router sends on the
                interface.  This value must be the same for all
                routers attached to a common network."                      Z"The number of seconds that a router's Hello
                packets have not been seen before its
                neighbors declare the router down on the interface.
                This should be some multiple of the Hello interval.
                This value must be the same for all routers attached
                to a common network."                       �"The larger time interval, in seconds, between
                the Hello packets sent to an inactive,
                non-broadcast multi-access neighbor."                      ~"The OSPFv3 interface state.  An interface may be
                in standby state if there are multiple interfaces
                on the link and another interface is active.  The
                interface may be in Down state if the underlying
                IPv6 interface is down or if the admin status is
                'disabled' either globally or for the interface."                       )"The Router ID of the Designated Router."                       A"The Router ID of the Backup Designated
                Router."                      `"The number of times this OSPFv3 interface has
                changed its state or an error has occurred.

                Discontinuities in the value of this counter
                can occur at re-initialization of the management
                system and at other times as indicated by the
                value of ospfv3DiscontinuityTime."                      9"This object permits management of the table by
                facilitating actions such as row creation,
                construction, and destruction.

                The value of this object has no effect on
                whether other objects in this conceptual row can be
                modified."                       �"Indicates whether Demand OSPFv3 procedures
                (Hello suppression to FULL neighbors and
                setting the DoNotAge flag on propagated LSAs)
                should be performed on this interface."                      "The metric assigned to this interface.
                 The default value of the metric is
                 'Reference Bandwidth / ifSpeed'.  The value
                 of the reference bandwidth can be set
                 in the ospfv3ReferenceBandwidth object."                       �"The total number of Link-scope link state
                advertisements in this link's link state
                database."                      k"The 32-bit unsigned sum of the Link-scope link state
                advertisements' LS checksums contained in this
                link's link state database.  The sum can be used
                to determine if there has been a change in a
                router's link state database or to compare the
                link state database of two routers."                       �"Indicates whether or not neighbor probing is
                   enabled to determine whether or not the neighbor
                   is inactive.  Neighbor probing is disabled by
                   default."                       �"The number of consecutive LSA retransmissions before
              the neighbor is deemed inactive and the neighbor
              adjacency is brought down."                       0"Defines how often the neighbor will be probed."                      �"Indicates whether or not traffic engineering
              is disabled on the interface when traffic
              engineering is enabled in the area where the
              interface is attached.  The object is set
              to the value true (1) to disable traffic engineering
              on the interface.  Traffic engineering is enabled
              by default on the interface when traffic engineering
              is enabled in the area where the interface is
              attached."                       �"Specifies whether or not link LSA origination is
              suppressed for broadcast or NBMA interface types.
              The object is set to value true (1) to suppress
              the origination." O"OSPF for IPv6, Appendix C.3, Router Interface
                    Parameters"                     �"Information about this router's virtual
                interfaces that the OSPFv3 Process is configured
                to carry on." G"OSPF for IPv6, Appendix C.4, Virtual Link
                Parameters"                     �"Information about a single virtual interface.

                The information in this table is persistent,
                and when written, the entity SHOULD save the
                change to non-volatile storage."                       y"The transit area that the virtual link
                traverses.  By definition, this is not
                Area 0."                       ("The Router ID of the virtual neighbor."                       �"The local interface index assigned by the
                OSPFv3 Process to this OSPFv3 virtual interface.
                It is advertised in Hellos sent over the virtual
                link and in the router's router-LSAs."                       s"The local Interface Instance ID assigned by the
                OSPFv3 Process to this OSPFv3 virtual interface."                       �"The estimated number of seconds it takes to
                transmit a Link State Update packet over this
                interface."                      {"The number of seconds between link state
                advertisement retransmissions for adjacencies
                belonging to this interface.  This value is
                also used when retransmitting database
                description and Link State Request packets.  This
                value should be well over the expected
                round-trip time."                       �"The length of time, in seconds, between the
                Hello packets that the router sends on the
                interface.  This value must be the same for the
                virtual neighbor."                      7"The number of seconds that a router's Hello
                packets have not been seen before its
                neighbors declare the router down.  This should
                be some multiple of the Hello interval.  This
                value must be the same for the virtual
                neighbor."                       b"OSPF virtual interface states.  The same encoding
                as the ospfV3IfTable is used."                      H"The number of state changes or error events on
                this virtual link.

                Discontinuities in the value of this counter
                can occur at re-initialization of the management
                system and at other times as indicated by the
                value of ospfv3DiscontinuityTime."                      9"This object permits management of the table by
                facilitating actions such as row creation,
                construction, and destruction.

                The value of this object has no effect on
                whether other objects in this conceptual row can be
                modified."                       �"The total number of Link-scope link state
                advertisements in this virtual link's link state
                database."                      s"The 32-bit unsigned sum of the Link-scope link state
                advertisements' LS checksums contained in this
                virtual link's link state database.  The sum can be used
                to determine if there has been a change in a
                router's link state database or to compare the
                link state database of two routers."                       Y"A table describing all neighbors in the
                locality of the OSPFv3 router." J"OSPF Version 2, Section 10, The Neighbor Data
                Structure"                     ."The information regarding a single neighbor." J"OSPF Version 2, Section 10, The Neighbor Data
                Structure"                     Y"The Local Link ID of the link over which the
                 neighbor can be reached."                       �"Interface instance over which the neighbor
                can be reached.  This ID has local link
                significance only."                       r"A 32-bit unsigned integer uniquely identifying the
                neighboring router in the Autonomous System."                       n"The address type of ospfv3NbrAddress.  Only IPv6
                addresses without zone index are expected."                       S"The IPv6 address of the neighbor associated with
                the local link."                       L"A bit mask corresponding to the neighbor's
                options field." 0"OSPF for IPv6, Appendix A.2, The Options Field"                     �"The priority of this neighbor in the designated-
                router election algorithm.  The value 0 signifies
                that the neighbor is not eligible to become the
                Designated Router on this particular network."                       D"The state of the relationship with this
                neighbor." /"OSPF Version 2, Section 10.1, Neighbor states"                    a"The number of times this neighbor relationship
                has changed state or an error has occurred.

                Discontinuities in the value of this counter
                can occur at re-initialization of the management
                system and at other times as indicated by the
                value of ospfv3DiscontinuityTime."                       B"The current length of the retransmission
                queue."                       Q"Indicates whether Hellos are being suppressed
                to the neighbor."                       �"The Interface ID that the neighbor advertises
                in its Hello packets on this link, that is, the
                neighbor's local interface index."                       f"Indicates whether the router is acting
              as a graceful restart helper for the neighbor."                       �"Remaining time in current OSPF graceful restart
              interval, if the router is acting as a restart
              helper for the neighbor."                      �"Describes the outcome of the last attempt at acting
              as a graceful restart helper for the neighbor.

              none:            no restart has yet been attempted.
              inProgress:      a restart attempt is currently underway.
              completed:       the last restart completed successfully.
              timedOut:        the last restart timed out.
              topologyChanged: the last restart was aborted due to
                               a topology change."                      �"A table describing all configured neighbors.

                The Configured Neighbors table just gives
                OSPFv3 information for sending OSPFv3 packets
                to potential neighbors and is typically used
                on NBMA and Point-to-Multipoint networks.
                Once a Hello is received from a neighbor in
                the Configured Neighbor table, an entry for
                that neighbor is created in the Neighbor table
                and adjacency state is maintained there.
                Neighbors on multi-access or Point-to-Point
                networks can use multicast addressing, so only
                Neighbor table entries are created for them." J"OSPF Version 2, Section 10, The Neighbor Data
                Structure"                     �"The information regarding a single configured
                neighbor.

                The information in this table is persistent,
                and when written, the entity SHOULD save the
                change to non-volatile storage." J"OSPF Version 2, Section 10, The Neighbor Data
                Structure"                     Y"The Local Link ID of the link over which the
                 neighbor can be reached."                       �"Interface instance over which the neighbor
                can be reached.  This ID has local link
                significance only."                       n"The address type of ospfv3NbrAddress.  Only IPv6
                addresses without zone index are expected."                       S"The IPv6 address of the neighbor associated with
                the local link."                       �"The priority of this neighbor in the designated-
                router election algorithm.  The value 0 signifies
                that the neighbor is not eligible to become the
                Designated Router on this particular network."                      9"This object permits management of the table by
                facilitating actions such as row creation,
                construction, and destruction.

                The value of this object has no effect on
                whether other objects in this conceptual row can be
                modified."                       +"A table describing all virtual neighbors." +"OSPF Version 2, Section 15, Virtual Links"                     "Virtual neighbor information."                       "The transit area Identifier."                       i"A 32-bit integer uniquely identifying the
                neighboring router in the Autonomous System."                       f"The local Interface ID for the virtual link over
                which the neighbor can be reached."                       f"The interface instance for the virtual link over
                which the neighbor can be reached."                       r"The address type of ospfv3VirtNbrAddress.  Only IPv6
                addresses without zone index are expected."                       k"The IPv6 address advertised by this virtual neighbor.
                It must be a global scope address."                       L"A bit mask corresponding to the neighbor's options
                field." 0"OSPF for IPv6, Appendix A.2, The Options Field"                     1"The state of the virtual neighbor relationship."                      \"The number of times this virtual link has
                changed its state or an error has occurred.

                Discontinuities in the value of this counter
                can occur at re-initialization of the management
                system and at other times as indicated by the
                value of ospfv3DiscontinuityTime."                       B"The current length of the retransmission
                queue."                       Q"Indicates whether Hellos are being suppressed
                to the neighbor."                       �"The Interface ID that the neighbor advertises
                in its Hello packets on this virtual link, that is,
                the neighbor's local Interface ID."                       g"Indicates whether the router is acting
               as a graceful restart helper for the neighbor."                       �"Remaining time in the current OSPF graceful restart
               interval, if the router is acting as a restart
               helper for the neighbor."                      "Describes the outcome of the last attempt at acting
               as a graceful restart helper for the neighbor.

               none:            no restart has yet been attempted.
               inProgress:      a restart attempt is currently underway.
               completed:       the last restart completed successfully.
               timedOut:        the last restart timed out.
               topologyChanged: the last restart was aborted due to
                                a topology change."                      e"The Area Aggregate Table acts as an adjunct
                to the Area Table.  It describes those address
                aggregates that are configured to be propagated
                from an area.  Its purpose is to reduce the amount
                of information that is known beyond an area's
                borders.

                A range of IPv6 prefixes specified by a
                prefix / prefix length pair.  Note that if
                ranges are configured such that one range
                subsumes another range, the most specific
                match is the preferred one."                       �"A single area aggregate entry.

                Information in this table is persistent, and
                when this object is written, the entity SHOULD
                save the change to non-volatile storage." /"OSPF Version 2, Appendix C.2, Area parameters"                     H"The area the Address Aggregate is to be found
                within." /"OSPF Version 2, Appendix C.2, Area parameters"                     �"The type of the Address Aggregate.  This field
                specifies the Area LSDB type that this Address
                Aggregate applies to." 0"OSPF Version 2, Appendix A.4.1, The LSA header"                     c"The prefix type of ospfv3AreaAggregatePrefix.  Only
                IPv6 addresses are expected."                       "The IPv6 prefix." /"OSPF Version 2, Appendix C.2, Area parameters"                     `"The length of the prefix (in bits).  A prefix can
                not be shorter than 3 bits." /"OSPF Version 2, Appendix C.2, Area parameters"                    9"This object permits management of the table by
                facilitating actions such as row creation,
                construction, and destruction.

                The value of this object has no effect on
                whether other objects in this conceptual row can be
                modified."                       �"Prefixes subsumed by ranges will either trigger the
                advertisement of the indicated aggregate
                (advertiseMatching) or result in the prefix not
                being advertised at all outside the area."                       �"This tag is advertised only in the summarized
                As-External LSA when summarizing from NSSA-LSAs to
                AS-External-LSAs."                       �"The OSPFv3 Process's Link-scope LSDB for virtual
                interfaces.  The LSDB contains the Link-scope link
                state advertisements from virtual interfaces."                       X"A single Link-scope link state advertisement
                for a virtual interface."                       y"The transit area that the virtual link
                traverses.  By definition, this is not
                Area 0."                       ("The Router ID of the virtual neighbor."                       �"The type of the link state advertisement.
                Each link state type has a separate
                advertisement format.  Link-scope LSAs unrecognized
                by the router are also stored in this database."                       n"The 32-bit number that uniquely identifies the
                originating router in the Autonomous System." 1"OSPF Version 2, Appendix C.1, Global parameters"                    >"The Link State ID is an LS type-specific field
                containing a unique identifier;
                it identifies the piece of the routing domain
                that is being described by the advertisement.
                In contrast to OSPFv2, the LSID has no
                addressing semantics."                      G"The sequence number field is a signed 32-bit
                integer.  It is used to detect old and duplicate
                link state advertisements.  The space of
                sequence numbers is linearly ordered.  The
                larger the sequence number, the more recent the
                advertisement." E"OSPF Version 2, Section 12.1.6, LS sequence
                number"                     �"This field is the age of the link state
                advertisement in seconds.  The high-order bit
                of the LS age field is considered the DoNotAge
                bit for support of on-demand circuits." �"OSPF Version 2, Section 12.1.1, LS age;
                 Extending OSPF to Support Demand Circuits,
                 Section 2.2, The LS age field."                    �"This field is the checksum of the complete
                contents of the advertisement, excepting the
                age field.  The age field is excepted so that
                an advertisement's age can be incremented
                without updating the checksum.  The checksum
                used is the same that is used for ISO
                connectionless datagrams; it is commonly
                referred to as the Fletcher checksum." -"OSPF Version 2, Section 12.1.7, LS checksum"                     M"The entire link state advertisement, including
                its header."                       _"The value true (1) indicates that the LSA type is
                recognized by this router."                           �"Potential types of configuration conflicts.
            Used by the ospfv3ConfigError and
            ospfv3ConfigVirtError notifications."                       "OSPFv3 packet types."                       �"The IPv6 address of an inbound packet that cannot
            be identified by a neighbor instance.

            Only IPv6 addresses without zone index are expected."                              