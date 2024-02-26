 i-- MIB created 4/24/97 18:23:11, by
--   SMIC (the next generation) version 1.6.29, November 22, 1994.
  �"This data type is used as the syntax of the
             isdnSignalingProtocol object in the
             definition of ISDN-MIB's isdnSignalingTable.

             The definition of this textual convention with the
             addition of newly assigned values is published
             periodically by the IANA, in either the Assigned
             Numbers RFC, or some derivative of it specific to
             Internet Network Management number assignments.  (The
             latest arrangements can be obtained by contacting the
             IANA.)

             Requests for new values should be made to IANA via
             email (iana@iana.org)."                                                                                                                             M"The MIB module to describe the
             management of ISDN interfaces." �"        Guenter Roeck
             Postal: cisco Systems
                     170 West Tasman Drive
                     San Jose, CA 95134
                     U.S.A.
             Phone:  +1 408 527 3143
             E-mail: groeck@cisco.com"       -- Sep 23, 1996
               �"Table containing configuration and operational
         parameters for all physical Basic Rate
         interfaces on this managed device."                       ("An entry in the ISDN Basic Rate Table."                      '"The physical interface type. For 'S/T' interfaces,
         also called 'Four-wire Basic Access Interface',
         the value of this object is isdns(75).
         For 'U' interfaces, also called 'Two-wire Basic
         Access Interface', the value of this object is
         isdnu(76)."                       �"The line topology to be used for this interface.
         Note that setting isdnBasicRateIfType to isdns(75)
         does not necessarily mean a line topology of


         point-to-multipoint."                       �"The physical interface mode. For TE mode, the value
         of this object is te(1). For NT mode, the value
         of this object is nt(2)."                       �"The signaling channel operational mode for this interface.
         If active(1) there is a signaling channel on this
         interface. If inactive(2) a signaling channel is
         not available."                           �"This table defines port specific operational, statistics


         and active call data for ISDN B channels. Each entry
         in this table describes one B (bearer) channel."                       f"Operational and statistics information relating to
         one port. A port is a single B channel."                      �"The B channel type. If the B channel is connected
         to a dialup line, this object has a value of
         dialup(1). In this case, it is controlled by
         an associated signaling channel. If the B channel
         is connected to a leased line, this object has
         a value of leased(2). For leased line B channels, there
         is no signaling channel control available."                      �"The current call control state for this port.
         idle(1):       The B channel is idle.
                        No call or call attempt is going on.
         connecting(2): A connection attempt (outgoing call)
                        is being made on this interface.
         connected(3):  An incoming call is in the process
                        of validation.
         active(4):     A call is active on this interface."                      &"The identifier being used by a signaling protocol
         to identify this B channel, also referred to as
         B channel number. If the Agent also supports the DS0 MIB,
         the values of isdnBearerChannelNumber and dsx0Ds0Number
         must be identical for a given B channel."                      �"The ISDN address the current or last call is or was
         connected to.

         In some cases, the format of this information can not
         be predicted, since it largely depends on the type
         of switch or PBX the device is connected to. Therefore,
         the detailed format of this information is not
         specified and is implementation dependent.

         If possible, the agent should supply this information
         using the E.164 format. In this case, the number must
         start with '+'. Otherwise, IA5 number digits must be used.


         If the peer ISDN address is not available,
         this object has a length of zero." #"ITU-T E.164, Q.931 chapter 4.5.10"         *--    Rsyntax OCTET STRING(SIZE(0..255))
          L"The ISDN subaddress the current or last call is or was
         connected to.

         The subaddress is an user supplied string of up to 20
         IA5 characters and is transmitted transparently through
         the network.

         If the peer subaddress is not available, this object
         has a length of zero." #"ITU-T I.330, Q.931 chapter 4.5.11"         *--    Rsyntax OCTET STRING(SIZE(0..255))
           �"The call origin for the current or last call. If since
         system startup there was no call on this interface,
         this object has a value of unknown(1)."                      "The Information Transfer Capability for the current
         or last call.

         speech(2) refers to a non-data connection, whereas
         audio31(6) and audio7(7) refer to data mode connections.

         Note that Q.931, chapter 4.5.5, originally defined
         audio7(7) as '7 kHz audio' and now defines it as
         'Unrestricted digital information with tones/
         announcements'.

         If since system startup there has been no call on this
         interface, this object has a value of unknown(1)." �"Q.931 [8], chapter 4.5.5, octet 3 of bearer capability
         information element, combined with the User Rate
         (as defined in octets 5 and 5a to 5d), if rate adaption
         is being used."                    |"This flag indicates if the current or last call used
         multirate. The actual information transfer rate,
         in detail specified in octet 4.1 (rate multiplier),
         is the sum of all B channel ifSpeed values for
         the hyperchannel.

         If since system startup there was no call on this
         interface, this object has a value of false(2)." "Q.931 [8], chapter 4.5.5."         N--    Rsyntax INTEGER {
--        true(1),
--        false(2)
--        }
           �"The value of sysUpTime when the ISDN setup message for
         the current or last call was sent or received. If since
         system startup there has been no call on this interface,
         this object has a value of zero."           --    Rsyntax TimeTicks
           �"The value of sysUpTime when the ISDN connect message for
         the current or last call was sent or received. If since
         system startup there has been no call on this interface,
         this object has a value of zero."           --    Rsyntax TimeTicks
           �"The number of charged units for the current or last
         connection. For incoming calls or if charging information
         is not supplied by the switch, the value of this object
         is zero."                          B"The recommended procedure for selecting a new index for
         isdnSignalingTable row creation is to GET the value of
         this object, and then to SET the object with the same
         value. If the SET operation succeeds, the manager can use
         this value as an index to create a new row in this table." *"RFC1903, TestAndIncr textual convention."         &--    Rsyntax INTEGER(0..2147483647)
           �"ISDN signaling table containing configuration and
         operational parameters for all ISDN signaling
         channels on this managed device."                       �"An entry in the ISDN Signaling Table. To create a new
         entry, only isdnSignalingProtocol needs to be specified
         before isdnSignalingStatus can become active(1)."           &--    MAX-ACCESS not-accessible robi
           Y"The index value which uniquely identifies an entry
         in the isdnSignalingTable."           &--    MAX-ACCESS not-accessible robi
           V"The ifIndex value of the interface associated with this
         signaling channel."           (--    Rsyntax Integer32(1..2147483647)
           �"The particular protocol type supported by the
         switch providing access to the ISDN network
         to which this signaling channel is connected."          9--    Rsyntax INTEGER {
--        other(1),
--        dss1(2),
--        etsi(3),
--        dass2(4),
--        ess4(5),
--        ess5(6),
--        dms100(7),
--        dms250(8),
--        ni1(9),
--        ni2(10),
--        ni3(11),
--        vn2(12),
--        vn3(13),
--        vn4(14),
--        vn6(15),
--        kdd(16),
--        ins64(17),
--        ins1500(18),
--        itr6(19),
--        cornet(20),
--        ts013(21),
--        ts014(22),
--        qsig(23),
--        swissnet2(24),
--        swissnet3(25)
--        }
          �"The ISDN Address to be assigned to this signaling
         channel. More specifically, this is the 'Calling Address
         information element' as being passed to the switch
         in outgoing call setup messages.

         It can be an EAZ (1TR6), a calling number (DSS1, ETSI)
         or any other number necessary to identify a signaling
         interface. If there is no such number defined or required,
         this is a zero length string. It is represented in
         DisplayString form.

         Incoming calls can also be identified by this number.


         If the Directory Number, i.e. the Called Number in
         incoming calls, is different to this number, the
         isdnDirectoryTable has to be used to specify all
         possible Directory Numbers.

         The format of this information largely depends on the type
         of switch or PBX the device is connected to. Therefore,
         the detailed format of this information is not
         specified and is implementation dependent.

         If possible, the agent should implement this information
         using the E.164 number format. In this case, the number
         must start with '+'. Otherwise, IA5 number digits must
         be used." #"ITU-T E.164, Q.931 chapter 4.5.10"         *--    Rsyntax OCTET STRING(SIZE(0..255))
          �"Supplementary information to the ISDN address assigned
         to this signaling channel. Usually, this is the
         subaddress as defined in Q.931.
         If there is no such number defined or required, this is
         a zero length string.
         The subaddress is used for incoming calls as well as
         for outgoing calls.
         The subaddress is an user supplied string of up to 20
         IA5 characters and is transmitted transparently through
         the network." #"ITU-T I.330, Q.931 chapter 4.5.11"         *--    Rsyntax OCTET STRING(SIZE(0..255))
          "The total number of B channels (bearer channels)
         managed by this signaling channel. The default value
         of this object depends on the physical interface type
         and is either 2 for Basic Rate interfaces or


         24 (30) for Primary Rate interfaces."                       }"Indicates whether isdnMibCallInformation traps
         should be generated for calls on this signaling
         channel."                       T"This object is used to create and delete rows in the
         isdnSignalingTable."           �--    Rsyntax INTEGER {
--        active(1),
--        notInService(2),
--        notReady(3),
--        createAndGo(4),
--        createAndWait(5),
--        destroy(6)
--        }
          "ISDN signaling table containing statistics
         information for all ISDN signaling channels
         on this managed device.
         Only statistical information which is not already being
         counted in the ifTable is being defined in this table."                       2"An entry in the ISDN Signaling statistics Table."                      -- Augments isdnSignalingEntry
 1"The number of incoming calls on this interface."                       Y"The number of incoming calls on this interface
         which were actually connected."                       1"The number of outgoing calls on this interface."                       Y"The number of outgoing calls on this interface
         which were actually connected."                      "The number of charging units on this interface since
         system startup.
         Only the charging units applying to the local interface,
         i.e. for originated calls or for calls with 'Reverse
         charging' being active, are counted here."                      "Table containing configuration and statistics
         information for all LAPD (D channel Data Link)
         interfaces on this managed device.
         Only statistical information which is not already being
         counted in the ifTable is being defined in this table."                       "An entry in the LAPD Table."                      "If set to true(1), this D channel is the designated
         primary D channel if D channel backup is active.


         There must be exactly one primary D channel
         configured. If D channel backup is not used, this
         object has a value of true(1)." 2"Q.931 [8], Annex F, D channel backup procedures."         N--    Rsyntax INTEGER {
--        true(1),
--        false(2)
--        }
          "The operational status of this interface:

         inactive  all layers are inactive
         l1Active  layer 1 is activated,
                   layer 2 datalink not established
         l2Active  layer 1 is activated,
                   layer 2 datalink established."                       �"The number of peer SABME frames received on this
         interface. This is the number of peer-initiated
         new connections on this interface."                       "The number of LAPD FRMR response frames received.
         This is the number of framing errors on this
         interface."                          A"The recommended procedure for selecting a new index for
         isdnEndpointTable row creation is to GET the value of
         this object, and then to SET the object with the same
         value. If the SET operation succeeds, the manager can use
         this value as an index to create a new row in this table." *"RFC1903, TestAndIncr textual convention."         &--    Rsyntax INTEGER(0..2147483647)
           B"Table containing configuration for Terminal
         Endpoints."                       �"An entry in the Terminal Endpoint Table. The value
         of isdnEndpointIfType must be supplied for a row
         in this table to become active."                       X"The index value which uniquely identifies an entry
         in the isdnEndpointTable."           $--  MAX-ACCESS not-accessible robi
           V"The ifIndex value of the interface associated with this
         Terminal Endpoint."           (--    Rsyntax Integer32(1..2147483647)
           �"The interface type for this Terminal Endpoint.
         Interface types of x25ple(40) and isdn(63) are allowed.
         The interface type is identical to the value of
         ifType in the associated ifEntry."          h--    Rsyntax INTEGER {
--        other(1),
--        regular1822(2),
--        hdh1822(3),
--        ddnX25(4),
--        rfc877x25(5),
--        ethernetCsmacd(6),
--        iso88023Csmacd(7),
--        iso88024TokenBus(8),
--        iso88025TokenRing(9),
--        iso88026Man(10),
--        starLan(11),
--        proteon10Mbit(12),
--        proteon80Mbit(13),
--        hyperchannel(14),
--        fddi(15),
--        lapb(16),
--        sdlc(17),
--        ds1(18),
--        e1(19),
--        basicISDN(20),
--        primaryISDN(21),
--        propPointToPointSerial(22),
--        ppp(23),
--        softwareLoopback(24),
--        eon(25),
--        ethernet3Mbit(26),
--        nsip(27),
--        slip(28),
--        ultra(29),
--        ds3(30),
--        sip(31),
--        frameRelay(32),
--        rs232(33),
--        para(34),
--        arcnet(35),
--        arcnetPlus(36),
--        atm(37),
--        miox25(38),
--        sonet(39),
--        x25ple(40),
--        iso88022llc(41),
--        localTalk(42),
--        smdsDxi(43),
--        frameRelayService(44),
--        v35(45),
--        hssi(46),
--        hippi(47),
--        modem(48),
--        aal5(49),
--        sonetPath(50),
--        sonetVT(51),
--        smdsIcip(52),
--        propVirtual(53),
--        propMultiplexor(54)
--        }
          �"The type of TEI (Terminal Endpoint Identifier)
         used for this Terminal Endpoint. In case of dynamic(1),
         the TEI value is selected by the switch. In
         case of static(2), a valid TEI value has to be
         entered in the isdnEndpointTeiValue object.
         The default value for this object depends on the


         interface type as well as the Terminal Endpoint type.
         On Primary Rate interfaces the default value is
         static(2). On Basic Rate interfaces the default value
         is dynamic(1) for isdn(63) Terminal Endpoints and
         static(2) for x25ple(40) Terminal Endpoints."                      �"The TEI (Terminal Endpoint Identifier) value
         for this Terminal Endpoint. If isdnEndpointTeiType
         is set to static(2), valid numbers are 0..63,
         while otherwise the value is set internally.
         The default value of this object is 0 for static
         TEI assignment.
         The default value for dynamic TEI assignment is also
         0 as long as no TEI has been assigned. After TEI
         assignment, the assigned TEI value is returned."                      �"The Service profile IDentifier (SPID) information
         for this Terminal Endpoint.

         The SPID is composed of 9-20 numeric characters.

         This information has to be defined in addition to
         the local number for some switch protocol types,
         e.g. Bellcore NI-1 and NI-2.

         If this object is not required, it is a
         zero length string." �"Bellcore SR-NWT-001953, Generic Guidelines for ISDN
         Terminal Equipment on Basic Access Interfaces,
         Chapter 8.5.1."         *--    Rsyntax OCTET STRING(SIZE(0..255))
           S"This object is used to create and delete rows in the
         isdnEndpointTable."           �--    Rsyntax INTEGER {
--        active(1),
--        notInService(2),
--        notReady(3),
--        createAndGo(4),
--        createAndWait(5),
--        destroy(6)
--        }
               %"Table containing Directory Numbers."                       w"An entry in the Directory Number Table. All objects
         in an entry must be set for a new row to become active."                       Y"The index value which uniquely identifies an entry
         in the isdnDirectoryTable."                      j"A Directory Number. Directory Numbers are used
         to identify incoming calls on the signaling
         channel given in isdnDirectorySigIndex.

         The format of this information largely depends on the type
         of switch or PBX the device is connected to. Therefore,
         the detailed format of this information is not
         specified and is implementation dependent.

         If possible, the agent should implement this information
         using the E.164 number format. In this case, the number
         must start with '+'. Otherwise, IA5 number digits must
         be used." #"ITU-T E.164, Q.931 chapter 4.5.10"         *--    Rsyntax OCTET STRING(SIZE(0..255))
           �"An index pointing to an ISDN signaling channel.
         Incoming calls are accepted on this
         signaling channel if the isdnDirectoryNumber is
         presented as Called Number in the SETUP message."                       T"This object is used to create and delete rows in the
         isdnDirectoryTable."           �--    Rsyntax INTEGER {
--        active(1),
--        notInService(2),
--        notReady(3),
--        createAndGo(4),
--        createAndWait(5),
--        destroy(6)
--        }
                  �"This trap/inform is sent to the manager under the
             following condidions:
             - on incoming calls for each call which is rejected for
               policy reasons (e.g. unknown neighbor or access
               violation)
             - on outgoing calls whenever a call attempt is determined
               to have ultimately failed. In the event that call retry
               is active, then this will be after all retry attempts
               have failed.
             - whenever a call connects. In this case, the object
               isdnBearerCallConnectTime should be included in the
               trap.

             Only one such trap is sent in between successful or
             unsuccessful call attempts from or to a single neighbor;
             subsequent call attempts result in no trap.

             If the Dial Control MIB objects dialCtlNbrCfgId and
             dialCtlNbrCfgIndex are known by the entity generating
             this trap, both objects should be included in the trap
             as well. The receipt of this trap with no dial neighbor
             information indicates that the manager must poll the
             callHistoryTable of the Dial Control MIB to see what
             changed."                     S"The compliance statement for entities which implement
             the ISDN MIB."   j"The isdnMibBasicRateGroup is mandatory for entities
             supporting ISDN Basic Rate interfaces." h"Implementation of this group is optional for all systems
             that attach to ISDN interfaces." h"Implementation of this group is optional for all systems
             that attach to ISDN interfaces." 9"It is conformant to implement this object as read-only." 9"It is conformant to implement this object as read-only." 9"It is conformant to implement this object as read-only." 9"It is conformant to implement this object as read-only."                 u"A collection of objects required for ISDN Basic Rate
             physical interface configuration and statistics."                 `"A collection of objects required for ISDN Bearer channel
             control and statistics."                 a"A collection of objects required for ISDN D channel
             configuration and statistics."                 8"A collection of objects describing Terminal Endpoints."                 7"A collection of objects describing directory numbers."                 S"The notifications which a ISDN MIB entity is
             required to implement."                            