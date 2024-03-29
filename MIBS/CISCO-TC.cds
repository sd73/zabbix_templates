4-- *****************************************************************
-- CISCO-TC.my:  Cisco MIB Textual Conventions
--   
-- May 1994, Jeffrey T. Johnson
--   
-- Copyright (c) 1994-2007 by cisco Systems, Inc.
-- All rights reserved.
--   
-- ****************************************************************
  7"This textual convention is an extension of entLogicalIndex.
        If non-zero, the semantic is same as entLogicalIndex object.
        If zero, no appropriate entLogicalIndex exists.  Any additional 
        semantics must be defined as part of the description of any 
        object which uses this syntax."              P"This object type is a control object type which applies to
        writable objects in the same SNMP PDU related to the
        same table containing those objects. It controls an 
        operation which repeatedly applies the specified 
        configuration data to more than one rows in a table. 
        The operation starts from the row specified by the index 
        of the instance and repeats for the number of rows as 
        the value of the object. 

        ConfigIterator object needs to be accompanied by one set of
        writable objects which are of the same instance to apply to.

        For example, a SNMP PDU contains 
           { objectA.10 = 1, 
             objectB.10 = 'E1',
             objectC.10 = 44,
             objectRepetition.10 = 100 }

        The SYNTAX of objectRepetition is ConfigIterator.
        This will apply value 1 to objectA, value 'E1' to objectB,
        value 44 to objectC in the table starting from row 10 
        repeatedly for 100 rows.

        The iteration is based on the number of rows, not based on
        the value of the index. For sparse tables, the index 10, 
        20, 30, 110, and 120 counts for 5 rows, the operation will 
        go beyond index 100 in the previous SNMP PDU example.

        The iteration will stop prematurely when it comes to the 
        following situations:
        (1) When the number of the rows in the table is less than
            the designated row indicated by the ConfigIterator 
            object. 
        (2) When it encounters the first error in any row, the 
            operation won't continue to next row.

        The operation of ConfigIterator object applies only to
        the writable objects having the same index as the
        ConfigIterator object in one SNMP PDU.

        For example, a SNMP PDU contains
           { objectD.5 = 38,
             objectE.6 = 'T1',
             objectF.5 = 'false',
             objectIterator.5 = 10 }

        The SYNTAX of objectIterator is ConfigIterator.
        This will apply value 38 to objectD, value 'false' to 
        objectF in the table starting from row 5 repeatedly 
        for 10 rows. Since the object objectE.6 has different
        index (6) from the index of objectIterator, the 
        repetition won't be applied to it. However the value 
        of objectE in the row 6 will be set to 'T1' according
        to regular SNMP SET orperation. 

        If there is row overlapping of the iteration in a SNMP PDU,
        it will be operated as they are in two different SNMP PDUs.

        For example, a SNMP PDU contains
           { objectD.5 = 38,
             objectD.6 = 40,
             objectE.6 = 'T1',
             objectF.5 = 'false',
             objectIterator.5 = 10
             objectIterator.6 = 10 }

        This will apply value 38 to objectD, value 'false' to 
        objectF starting from row 5 repeatedly for 10 rows, and
        apply value 40 to objectD, value 'T1' to objectE starting
        from row 6 repeatedly for 10 rows. The final value of 
        objectD.6 can be 38 or 40, it depends on the SNMP stack of
        the system starts SNMP SET for the row 5 before the row 6 
        or the other way around.

        The object defined as ConfigIterator will be set to value 1 
        after the iteration operation is kick-off regardless the 
        system has completed the operation to the designated rows 
        or not. Therefore retrieving the value of this object 
        is meaningless. It acts as the one time operation for 
        bulk configuration.

        The object defined as ConfigIterator has no meaning by itself,
        it has to be combined with one or more than one writable 
        objects from the same table and within the same SNMP PDU
        for the repetition operation.

        For example, a SNMP PDU contains
           { objectG.2 = 49,
             objectH.2 = 'AE'h
             objectIterator.4 = 20 }

        The SYNTAX of objectIterator is ConfigIterator. Since
        there are no objects having the same index as the index
        of objectIterator in the PDU, the result of this SNMP 
        operation will set value 49 to objectG and value 0xAE 
        to objectH of the row 2 only as regular SNMP SET operation.

        The index of the instance indicates the starting row for the
        iteration. 
        The order of the iteration depends, for instance, on: 
        (1) physical hardware position, or
        (2) logical index.

        It depends on the characters of the table which contains
        the ConfigIterator object.

        Iteration can be done through some or all the components
        of the index for a table. The description of the iterator
        object in that table should describe which part of the 
        index the iteration is applied to.

        The operation for this object type is based on the best
        effort. When the agent receives a SNMP PDU containing this 
        data type, the return status of the SNMP request reflects 
        only the result of the SET operation has applied to the 
        starting row. It may return a SNMP response with SUCCESS 
        status regardless the number of rows for the data actually 
        been deployed later on. Therefore it is possible the data 
        might not be completely deployed to the number of rows
        designated by the ConfigIterator and the operation stops 
        prematurely due to an error it first encounters after 
        n rows (n < the value of ConfigIterator object).

        Usually the error report mechanism for this type of operation
        is accomplished by combining this type of object with the
        other two objects in the same table:

        (1) An OwnerString object
        (2) An object indicates the result of the operation.

        When issuing this bulk configuration request, the SNMP 
        manager should provide its identifier in (1) object.
        After issuing the request, it should check the value of (1) 
        object if it is the same with it own name.
        If they are the same, then the value of the object presents
        in (2) is the result from the previous operation from this
        manager. Otherwise, another SNMP manager might issue
        the bulk configuration to the same table before the previous
        bulk operation has been completed. These two objects will 
        represent the last bulk operation in the table."             /"IEEE P802.1ah/D3.3 chapter 9.8, December 2006" g"An integer-value which identifies the service instance of
        the Provider Backbone Bridge frame."               �"A unique value greater than zero, for each of the
        list that is defined. The object using this 
        convention should give all the object specific 
        details including the list type."              b"This textual convention is an extension of the
        ListIndex. In addition to the ListIndex range, 
        this also includes 0 in its range of values. 
        This value could be object specific and 
        should be given the description of that object. 
        In most cases, a value 0 means that the it does 
        not represent any lists."             @"RFC 2856(HCNUM-TC MIB).
            RFC 2493(PerfHist-TC-MIB)."
V"A 64 bit counter associated with a
        performance measurement in a previous
        15 minute measurement interval. In the
        case where the agent has no valid data
        available for a particular interval the
        corresponding object instance is not
        available and upon a retrieval request
        a corresponding error message shall be
        returned to indicate that this instance
        does not exist (for example, a noSuchName
        error for SNMPv1 and a noSuchInstance for
        SNMPv2 GET operation).
        In a system supporting
        a history of n intervals with
        IntervalCount(1) and IntervalCount(n) the
        most and least recent intervals
        respectively, the following applies at
        the end of a 15 minute interval:
            - discard the value of IntervalCount(n)
            - the value of IntervalCount(i) becomes that
              of IntervalCount(i-1) for n >= i > 1
            - the value of IntervalCount(1) becomes that
              of CurrentCount
            - the TotalCount, if supported, is adjusted.

        This definition is based on CounterBasedGauge64 TEXTUAL
        CONVENTION  defined in RFC2856. The PerfHighIntervalCount
        type represents a non-negative
        integer, which may increase or decrease, but shall never
        exceed a maximum value, nor fall below a minimum value. The
        maximum value can not be greater than 2^64-1
        (18446744073709551615 decimal), and the minimum value can
        not be smaller than 0.  The value of a PerfHighIntervalCount,
        has its maximum value whenever the information being modeled
        is greater than or equal to its maximum value, and has its
        minimum value whenever the information being modeled is
        smaller than or equal to its minimum value.  If the
        information being modeled subsequently decreases below
        (increases above) the maximum (minimum) value, the
        PerfHighIntervalCount also decreases (increases).

        Note that this TC is not strictly supported in SMIv2,
        because the 'always increasing' and 'counter wrap' semantics
        associated with the Counter64 base type are not preserved.
        It is possible that management applications which rely
        solely upon the (Counter64) ASN.1 tag to determine object
        semantics will mistakenly operate upon objects of this type
        as they would for Counter64 objects.

        This textual convention represents a limited and short-term
        solution, and may be deprecated as a long term solution is
        defined and deployed to replace it."               2"A period of time, measured in units of 1 second."              �"Represents a network layer address.  The length and format of
        the address is protocol dependent as follows:
        ip        4 octets
        decnet    2 octets
        pup       obsolete
        chaos     2 octets
        xns       10 octets
                  first 4 octets are the net number
                  last 6 octets are the host number
        x121    
        appletalk 3 octets
                  first 2 octets are the net number
                  last octet is the host number
        clns
        lat
        vines     6 octets
                  first 4 octets are the net number
                  last 2 octets are the host number
        cons
        apollo    10 octets
                  first 4 octets are the net number
                  last 6 octets are the host number
        stun      8 octets
        novell    10 octets
                  first 4 octets are the net number
                  last 6 octets are the host number
        qllc      6 octets
        bstun     1 octet - bi-sync serial tunnel 
        snapshot  1 octet
        atmIlmi   4 octets
        x25 pvc   2 octets (12 bits)
        ipv6      16 octets
        cdm
        nbf
        bgpIgx
        clnsPfx  upto 20 octets
        http     upto 70 octets
                 first 4 octets are the IPv4 host 
                 address
                 next 2 octets are the TCP port 
                 number
                 remaining(1 upto 64) octets are 
                 the URI"               R"Either the value 0, or the ifIndex value of an
        interface in the ifTable."             &"Uniform Resource Locators. RFC 1738."B"This textual convention defines the URL string.
        The  Universal Resource Locator(URL). The URL strings
        are compact string representation for a resource
        available via internet. This is the address location 
        of the page to load. The string should represent a
        fully qualifying string with the format 
        'protocol:/server/page'. In general the string should 
        point to any value that can be saved/loaded.
        Any limitation for the URL must be defined as part of
        the description of any object which uses this syntax."               -"Represents time unit value in milliseconds."              �"An enumerated value which provides an indication of
        the general location type of a particular physical and/or
        logical interface.
        chassis - a system framework for mounting one or more 
                  shelves/slots/cards.
        shelf - a cabinet that holds one or more slots.
        slot -  card or subSlot holder.
        subSlot - daughter-card holder.
        port - a physical port (e.g., a DS1 or DS3 physical port).
        subPort - a logical port on a physical port (e.g., a DS1 
                  subPort on a DS3 physical port).
        channel - a logical interface (e.g., a DS0 channel, signaling
                  channel, ATM port, other virtual interfaces).
        subChannel - a sub-channel on a logical interface."               �"This textual convention is an extension of entPhysicalIndex.
        If non-zero, the object is an entPhysicalIndex. If zero, no
        appropriate entPhysicalIndex exists. Any additional semantics
        are object specific."             i"Transmission Control Protocol. J. Postel. RFC793,
            User Datagram Protocol. J. Postel. RFC768" #"The TCP or UDP port number range."               -"Represents time unit value in microseconds."             8"RFC2234, Augmented BNF for syntax specifications: ABNF"�"Use this TC to define objects that indicate the
        physical entity and/or logical interface location 
        of a managed entity on a managed device. In SNMP, a 
        standard mechanism for indicating the physical location
        of entities is via the ENTITY-MIB. However, that approach
        is not satisfactory in some cases because:

        1. The entity requiring a location-based naming may be 
           associated with an entity which can not be represented 
           as a physical entity in the ENTITY-MIB,
        2. NMS applications may desire a more direct 
           name/representation of a physical entity than is 
           available via the ENTITY-MIB, e.g., a physical entity
           which is named via a hierarchy of levels in the ENTITY-MIB.

        The value of an object defined using this TC is an ASCII 
        string consisting of zero or more elements separated by 
        commas. Each element is of the form  = . 

        An example of this syntax is 'slot=5,port=3'.

        The syntax of the string is formally specified using
        ABNF notation (with one exception, noted below), as
        follows:                 

        location-specifier =  elem *(',' elem) 
                       ; subject to 
                       ; size restriction specified in the SYNTAX
                       ; clause below

        elem    =   loctype '=' number

        number  = %x00-FFFFFFFF / %d0-4294967295

        loctype = 1*32VCHAR 

        It is recommended that loctype use one of the enumerated
        labels defined for CiscoLocationClass.

        (NOTE: To conform to ABNF notation as defined in RFC2234, 
         substitute the single-quote symbol with a double-quote 
         symbol in the above rules.)

        A zero length of CiscoLocationSpecifier is object-specific
        and must be defined as part of the description of any object
        which uses this syntax."               2"A period of time, measured in units of 1 minute."              "Each octet within this value specifies a set of eight
        ports. The object defined by this textual convention
        can specify a port range of 2k ports in its description.
        Example: 1 - 2048, 2049 - 4096, etc. The first octet 
        represents the first 8 ports of the range of ports
        specified by the object, the second octet represents 
        the next 8 ports, etc. When a port range is not
        specified, a default port range of '1 - 2048' is assumed.

        Within each octet, the most significant bit represents
        the lowest numbered port, and the least significant bit
        represents the highest numbered port. Thus, each port
        of the bridge is represented by a single bit within the
        value of this object.  If that bit has a value of '1'
        then that port is included in the set of ports; the port
        is not included if its bit has a value of '0'.

        Note that if the length of this string is less than
        256 octets, any 'missing' octets are assumed to contain
        the value zero. An NMS may omit any zero-valued octets
        from the end of this string in order to reduce SetPDU size,
        and the agent may also omit zero-valued trailing octets,
        to reduce the size of GetResponse PDUs."               U"An unsigned 64 bit integer. We use SYNTAX Counter64 for the
        encoding rules."               �"This TC describes an object which stores a snap-shot value
        with the following semantics: objects of this type will
        take a snap-shot value from their associated
        CiscoAbsZeroBasedCounter32 type objects on creation."             U"IEEE 802.1D, 2004 Edition, Annex G User priorities and traffic
            classes." �"An integer that is in the range of the layer 2 CoS values. It
        corresponds to the IEEE 802.1P CoS value which defines eight
        (2^3) user priority levels.
        Note: the IEEE 802.1P has been merged into IEEE 802.1D."              I�"The cause of current operational state of the
        interface.

        GLOSSARY:

        BB        - Buffer-to-Buffer.

        BB_Credit - Buffer-to-Buffer credit, a link level flow
                    control mechanism.

        B_Port    - A Fibre Channel, Bridging port.

        Class F   - A connectionless service with notification on 
                    non-delivery between E_Ports, used for control, 
                    coordination, and configuration of the Fabric.

        Class N   - Refers to any class of service (different types
                    of frame delivery services) other than Class F.

        E_D_TOV   - Error Detect Timeout Value.

        ELP       - Exchange Link Parameter.

        E-mode    - A fibre channel port providing E_Port 
                    functionality. 

        E_Port    - A Fabric Expansion Port.  

        EPP       - Exchange Peer Parameters.

        ESC       - Exchange Switch Capabilities.

        Fabric    - The set of physically connected fibre channel
                    switches.

        FC-FS     - Fibre Channel Framing and Signaling.

        FCIP      - Fibre Channel over IP protocol.

        FCOT      - Fibre channel optical transmitter.

        FC-PH     - The Fibre Channel Physical and Signaling 
                    standard.

        FCSP      - Fibre Channel Security Protocol. 

        Fibre Channel - The primary protocol for building SANs. 

        FICON     - An I\O protocol used between IBM (and compatible) 
                    mainframes and storage.

        FLOGI     - Fabric Login, used by a node port to establish a
                    session with the fabric.

        GBIC      - Gigabit Interface Converter; a removable 
                    transceiver module permitting Fibre Channel and 
                    Gigabit Ethernet physical-layer transport.

        Interconnect_Ports - Switch Ports that assume either the
                    E_Port or B_Port mode are generally referred to 
                    as Interconnect_Ports.

        LIP       - Loop Initialization Primitive sequence.

        LR        - Link Reset, the FC-PH defined primitive sequence 
                    used to initiate a link reset. 

        NOS       - Not Operational Sequence, the FC-PH defined 
                    primitive sequence to indicate that the 
                    transmitting port has detected a link failure (or)
                    offline condition.

        Nx_Port   - A Fiber Channel Node Port. 

        OLS       - Offline Sequence, the FC-PH defined primitive 
                    sequence to indicate that the port is entering
                    into offline state.

        OHMS      - Online Health Management System.

        R_A_TOV   - Resource Allocation Timeout Value.

        RCF       - Reconfigure Fabric. 

        Rxbbcredit - Receive BB credit value configured for 
                     a FC interface.

        SAN       - Storage Area Network; a network linking computing 
                    devices to disk or tape arrays and other devices 
                    over Fibre Channel.

        TE_Port   - Trunking E_Port.

        TOV       - Time out value.

        VSAN      - Virtual Storage Area Network.

        WWN       - World Wide Name.

        xE_Port   - A Fiber channel port that can assume either 
                    E_Port or TE_Port mode.

        The enumerated values which provides the cause of the current
        operational state of the interface are,

           'other(1)' - reasons other than defined here.

           'none(2)' - no failure.

           'hwFailure(3)' - hardware failure.  

           'loopbackDiagFailure(4)' - loopback diagnostics failure.

           'errorDisabled(5)' - the port is not operational due to 
               some error conditions that require administrative 
               attention.

           'swFailure(6)' - software failure.

           'linkFailure(7)' - physical link failure.

           'offline(8)' -  physical link is in offline state as 
               defined in the FC-FS standards.

           'nonParticipating(9)' - during loop initialization, the 
               port is not allowed to participate in loop operations.

           'initializing(10)' - port is being initialized. 

           'vsanInactive(11)'- port VSAN is inactive. The port becomes 
               operational again when the port VSAN is active. 

           'adminDown(12)' - ifAdminStatus is 'down'.

           'channelAdminDown(13)' - this port is a member of a port 
               channel and that port channel's ifAdminStatus is 
               'down'. 

           'channelOperSuspended(14)' - this port is a member of a 
               port channel and its operational parameters are 
               incompatible with the port channel parameters.  

           'channelConfigurationInProgress(15)' - this port is 
               undergoing a port channel configuration.

           'rcfInProgress(16)' - an isolated xE_port is transmitting 
               an reconfigure fabric, requesting a disruptive 
               reconfiguration in an attempt to build a single, 
               non-isolated fabric. Only the Interconnect_Ports can 
               become isolated. 

           'elpFailureIsolation(17)' - during a port initialization 
               the prospective Interconnect_Ports find incompatible 
               link parameters.

           'escFailureIsolation(18) - during a port initialization the 
               prospective Interconnect_Ports are unable to proceed 
               with initialization as a result of ESC.

           'domainOverlapIsolation(19)' - there is a overlap in 
               domains while attempting to connect two existing 
               fabrics.

           'domainAddrAssignFailureIsolation(20)' - the elected 
               principal switch is not capable of performing domain 
               address manager functions so no Nx_port traffic can be 
               forwarded across switches, hence all Interconnect_Ports 
               in the switch are isolated.

           'domainOtherSideEportIsolation(21)' - the peer E_port is 
               isolated.

           'domainInvalidRcfReceived(22)' - invalid RCF received.

           'domainManagerDisabled(23) - domain manager is disabled.

           'zoneMergeFailureIsolation(24)' - the two Interconnect_Ports 
               cannot merge zoning configuration after having exchanged 
               merging request for zoning.

           'vsanMismatchIsolation(25)' - this VSAN is not configured 
               on both sides of a trunk port.

           'parentDown(26)' - the physical port to which this interface 
               is bound is down.

           'srcPortNotBound(27)'- no source port is specified for this 
               interface.

           'interfaceRemoved(28)' - interface is being removed.

           'fcotNotPresent(29)' - FCOT (GBIC) not present.

           'fcotVendorNotSupported(30)' - FCOT (GBIC) vendor is not 
               supported. 

           'incompatibleAdminMode(31)' - port administrative mode is 
               incompatible with port capabilities. 

           'incompatibleAdminSpeed(32)' - port speed is incompatible 
               with port capabilities. 

           'suspendedByMode(33)' - port that belongs to a port channel
               is suspended due to incompatible operational mode.

           'suspendedBySpeed(34)' - port that belongs to a port channel
               is suspended due to incompatible operational speed.

           'suspendedByWwn(35)' - port that belongs to a port channel 
               is suspended due to incompatible remote switch WWN.

           'domainMaxReTxFailure(36)' - domain manager failure after 
               maximum retries.

           'eppFailure(37)' - trunk negotiation protocol failure after 
               maximum retries.

           'portVsanMismatchIsolation(38)' - an attempt is made to 
               connect two switches using non-trunking ports having 
               different port VSANs. 

           'loopbackIsolation(39)' - port is connected to another port 
               in the same switch.

           'upgradeInProgress(40)' - linecard upgrade in progress.

           'incompatibleAdminRxBbCredit(41)' - receive BB credit is 
               incompatible.

           'incompatibleAdminRxBufferSize(42)' - receive buffer size 
               is incompatible.

           'portChannelMembersDown(43)' - no operational members.

           'zoneRemoteNoRespIsolation(44)' - isolation due to remote 
               zone server not responding.

           'firstPortUpAsEport(45)' - in a over subscribed line card, 
               when the first port in a group is up in E-mode, other 
               ports in that group cannot be brought up.

           'firstPortNotUp(46)' - in a over subscribed line card, 
               first port cannot be brought up in E-mode when the 
               other ports in the group are up.

           'peerFcipPortClosedConnection(47)' - port went down because 
               peer FCIP port closed TCP connection.    

           'peerFcipPortResetConnection(48)' - port went down because 
               the TCP connection was reset by the peer FCIP port.

           'fcipPortMaxReTx(49)' - FCIP port went down due to maximum 
               TCP re-transmissions reached the configured limit.

           'fcipPortKeepAliveTimerExpire(50)' - FCIP port went down 
               due to TCP keep alive timer expired.

           'fcipPortPersistTimerExpire(51)' - FCIP port went down due 
               to TCP persist timer expired.

           'fcipPortSrcLinkDown(52)' - FCIP port went down due to 
               Ethernet link down.

           'fcipPortSrcAdminDown(53)' - FCIP port went down because 
               the source Ethernet link was administratively shutdown.

           'fcipPortAdminCfgChange(54)' - FCIP port went down due to 
               configuration change. 

           'fcipSrcPortRemoved(55)' - FCIP port went down due to source 
               port removal.

           'fcipSrcModuleNotOnline(56)' - FCIP port went down due to 
               source module not online.

           'invalidConfig(57)' - this port has a misconfiguration with 
               respect to port channels.

           'portBindFailure(58)' - port got isolated due to port bind 
               failure.  

           'portFabricBindFailure(59)' - port got isolated due to 
               fabric bind failure.    

           'noCommonVsanIsolation(60)' - trunk is isolated because 
               there are no common VSANs with peer.

           'ficonVsanDown (61)' - FICON VSAN down.

           'invalidAttachment (62)' -  invalid attachment.

           'portBlocked (63)' - port blocked due to FICON. 

           'incomAdminRxBbCreditPerBuf (64)' - disabled due to 
               incompatible administrative port rxbbcredit, 
               performance buffers.

           'tooManyInvalidFlogis (65)' - suspended due to too many 
               invalid FLOGIs. 

           'deniedDueToPortBinding (66)' - suspended due to port 
               binding.

           'elpFailureRevMismatch (67)' - isolated for ELP failure due 
               to revision mismatch.

           'elpFailureClassFParamErr (68)' - isolated for ELP failure 
               due to Class F parameter error.

           'elpFailureClassNParamErr (69)' - isolated for ELP failure 
               due to Class N parameter error.

           'elpFailureUnknownFlowCtlCode (70)' - isolated for ELP 
               failure due to invalid flow control code.

           'elpFailureInvalidFlowCtlParam (71)' - isolated for ELP 
               failure due to invalid flow control parameter.

           'elpFailureInvalidPortName(72)' - isolated for ELP failure 
               due to invalid port name.

           'elpFailureInvalidSwitchName (73)' - isolated for ELP 
               failure due to invalid switch name.

           'elpFailureRatovEdtovMismatch (74)' - isolated for ELP 
               failure due to R_A_TOV or E_D_TOV mismatch.

           'elpFailureLoopbackDetected (75)' - isolated for ELP 
               failure due to loopback detected.

           'elpFailureInvalidTxBbCredit (76)' - isolated for ELP 
               failure due to invalid transmit BB credit.

           'elpFailureInvalidPayloadSize (77)' - isolated for ELP 
               failure due to invalid payload size.

           'bundleMisCfg (78)' - misconfiguration in port channel 
               membership detected.

           'bitErrRuntimeThreshExceeded (79)' - bit error rate too 
               high. It has exceeded the run time threshold.

           'linkFailLinkReset (80)' - link failure due to link reset.

           'linkFailPortInitFail (81)' - link failure due to port 
               initialization failure.

           'linkFailPortUnusable (82)' - link failure due to port 
               unusable.

           'linkFailLossOfSignal (83)' - link failure due to loss of 
               signal. 

           'linkFailLossOfSync (84)' - link failure due to loss of 
               sync.

           'linkFailNosRcvd (85)' - link failure due to non-operational 
               sequences received.

           'linkFailOlsRcvd (86)' - link failure due to offline 
               sequences received.

           'linkFailDebounceTimeout (87)' - link failure due to 
               re-negotiation failed.

           'linkFailLrRcvd (88)' - link failure when link reset(LR) 
               operation fails due to non-empty receive queue.  

           'linkFailCreditLoss (89)' - link failure due to excessive 
               credit loss indications.

           'linkFailRxQOverflow (90)' - link failure due to receive 
               queue overflow.

           'linkFailTooManyInterrupts (91)' - link failure due to 
               excessive port interrupts.

           'linkFailLipRcvdBb (92)' - link failure when loop 
               initialization(LIP) operation fails due to non empty 
               receive queue.

           'linkFailBbCreditLoss (93)' - link failure when link 
               reset(LR) operation fails due to queue not empty.

           'linkFailOpenPrimSignalTimeout (94)' - link failure due to
               open primitive signal timeout while receive queue
               not empty.

           'linkFailOpenPrimSignalReturned (95)' - link failure due to
               open primitive signal returned while receive queue 
               not empty. 

           'linkFailLipF8Rcvd (96)' - link failure due to F8 LIP 
               received.

           'linkFailLineCardPortShutdown (97)' - link failure due to 
               port shutdown.

           'fcspAuthenFailure (98)' - fibre channel security protocol 
               authorization fail.

           'fcotChecksumError (99)' - FCOT SPROM checksum error. 

           'ohmsExtLoopbackTest (100)' - link suspended due to external 
               loopback diagnostics failure.

           'invalidFabricBindExchange (101)' - invalid fabric binding 
               exchange.

           'tovMismatch (102)' - link isolation due to TOV mismatch.

           'ficonNotEnabled (103)' - FICON not enabled.

           'ficonNoPortNumber (104)' - no FICON port number.

           'ficonBeingEnabled (105)' - FICON is being enabled.

           'ePortProhibited (106)' - port down because FICON prohibit 
               mask in place for E/TE port.

           'portGracefulShutdown (107)' - port has been shutdown 
               gracefully.

           'trunkNotFullyActive (108)' - some of the VSANs which are 
               common with the peer are not up.

           'fabricBindingSwitchWwnNotFound (109)' - peer switch WWN not 
               found in fabric binding active database.

           'fabricBindingDomainInvalid (110)' - peer domain ID is 
               invalid in fabric binding active database.

           'fabricBindingDbMismatch (111)' - fabric binding active 
               database mismatch with peer. 

           'fabricBindingNoRspFromPeer (112)' - fabric binding no 
               response from peer.

           'dpvmVsanSuspended (113)' - dpvm vsan is suspended.

           'dpvmVsanNotFound (114)' - dpvm vsan not found.

           'trackedPortDown (115)' - port down because tracked
               port is down.

           'ecSuspendedOnLoop (116)' - port suspended because extended
               BB credits are configured on loop port.

           'isolateBundleMisCfg (117)' - port isolated due to bundle
               mis-configuration.

           'noPeerBundleSupport (118)' - peer port does not support
               bundle.

           'portBringupIsolation (119)' - trunk port isolated during 
               bringup time.

           'domainNotAllowedIsolated (120)' - port isolated due to
               domain not allowed.

           'virtualIvrDomainOverlapIsolation (121)' - port isolated due to
               virtual IVR domain overlap.

           'outOfService (122)' - port is in out of service state.

           'portAuthFailed (123)' - port has encountered an 802.1x 
            authentication failure.

           'bundleStandby (124)' - port cannot be brought up in a bundle, 
            since the bundle has max members.

           'portConnectorTypeErr (125)' - Error in the port connector 
            type (SFP).

           'errorDisabledReInitLmtReached (126)' - the port is not 
            operational after trying to initialize the port multiple 
            times due to some erorrs.

           'ficonDupPortNum (127)' - the ficon vsan has a duplicate port 
            number.

           'localRcf (128)' - fcdomain applied a locally disruptive
            reconfiguration (the local domain became invalid; no 
            RCF frames have been sent outside the local switch).

            'twoSwitchesWithSameWWN (129)' - merge attempt between
            VSANs containing the same WWN. If the user attempts to 
            merge two different VSANs and both have at least one 
            switch with the same WWN then the link in between the 
            VSANs is isolated.

            'invalidOtherSidePrincEFPReqRecd (130)' - EFP request frame
            indicating a principal switch other than the locally 
            known one.

            'domainOther (131)' - other domain manager reasons not 
            defined here.

            'elpFailureAllZeroPeerWWNRcvd (132)' - isolated for ELP 
            failure due to peer WWN is received with all zeros.

            'preferredPathIsolation (133)' - port isolated due to
             preferred path not able to program the routes."               <"Represents the different types of network layer protocols."              {"Indicates the port range.

        oneto2K(1) indicates that the port number range is
        from 1 to 2048.

        twoKto4K(2) indicates that the port number range is
        from 2049 to 4096.

        fourKto6K(3) indicates that the port number range is
        from 4097 to 6144.

        sixKto8K(4) indicates that the port number range is
        from 6145 to 8192.

        eightKto10K(5) indicates that the port number range is
        from 8193 to 10240.

        tenKto12K(6) indicates that the port number range is
        from 10241 to 12288.

        twelveKto14K(7) indicates that the port number range is
        from 12289 to 14336.

        fourteenKto16K(8) indicates that the port number range is
        from 14337 to 16384.

        When an object is defined with this textual convention,
        it must be accompanied by an object of CiscoPortList
        syntax."             '"ITU-T T.35 - Section 3.1 Country Code" v"This textual convention represents a country or area code for
        non-standard facilities in telematic services."             B"ITU-T E.164, Q.931 chapter 4.5.10
         ITU-H H.225.0 Annex H""A UTF-8 string limited to the character set defined for
        E.164, '0123456789*#,'.
        Note that  represents the double quote which
        cannot be contained in a SMI description clause.
             OR
        An IA5String limited to the character set '0123456789*#,.'"             &"Internet Protocol. J. Postel. RFC791" "IP protocol number range."               �"Service Access Point - is a term that denotes the means
        by which a user entity in layer n+1 accesses a service
        of a provider entity in layer n."               �"Represents a case-insensitive 2-letter country code taken
        from ISO-3166. Unrecognized countries are represented as 
        empty string."              �"Represents the operational status of an table entry.
        This textual convention allows explicitly representing
        the states of rows dependent on rows in other tables.

        active(1) -
            Indicates this entry's RowStatus is active
            and the RowStatus for each dependency is active.

        activeDependencies(2) -
            Indicates that the RowStatus for each dependency
            is active, but the entry's RowStatus is not active.

        inactiveDependency(3) -
            Indicates that the RowStatus for at least one
            dependency is not active.

        missingDependency(4) -
            Indicates that at least one dependency does
            not exist in it's table."              �"This TC describes an object which counts events with the
        following semantics: objects of this type will be set to
        zero(0) on creation and will thereafter count appropriate
        events, it locks at the maximum value of 4,294,967,295 if
        the counter overflows.
        This TC may be used only in situations where wrapping is
        not possible or extremely unlikely situation."              	"Each octet within this value specifies a set of eight
        VLANs. The object defined by this textual convention
        can specify a VLAN range of 1k VLANs in its description.
        Example: 0 - 1023, 1024 - 2047, etc. The first octet
        represents the first 8 VLANs of the range of VLANs
        specified by the object, the second octet represents
        the next 8 VLANs, etc. When a VLAN range is not
        specified, a default port range of '0 - 1023' is assumed.

        Within each octet, the most significant bit represents
        the lowest numbered VLAN, and the least significant bit
        represents the highest numbered VLAN. Thus, each VLAN
        of the device is represented by a single bit within the
        value of this object.  If that bit has a value of '1'
        then that VLAN is included in the set of VLANs; the VLAN
        is not included if its bit has a value of '0'.

        Note that if the length of this string is less than
        128 octets, any 'missing' octets are assumed to contain
        the value zero. An NMS may omit any zero-valued octets
        from the end of this string in order to reduce SetPDU size,
        and the agent may also omit zero-valued trailing octets,
        to reduce the size of GetResponse PDUs."             "ITU-X.733""Represents the perceived alarm severity associated
        with a service or safety affecting condition and/or
        event.  These are based on ITU severities, except
        that info(7) is added.

            cleared(1) -
                Indicates a previous alarm condition has been
                cleared.  It is not required (unless specifically
                stated elsewhere on a case by case basis) that an
                alarm condition that has been cleared will produce
                a notification or other event containing an
                alarm severity with this value.

            indeterminate(2) -
                Indicates that the severity level cannot be
                determined. 

            critical(3) -
                Indicates that a service or safety affecting
                condition has occurred and an immediate
                corrective action is required.

            major(4) -
                Indicates that a service affecting condition has
                occurred and an urgent corrective action is
                required.

            minor(5) -
                Indicates the existence of a non-service affecting
                condition and that corrective action should be
                taken in order to prevent a more serious (for
                example, service or safety affecting) condition.

            warning(6) -
                Indicates the detection of a potential or impending
                service or safety affecting condition, before any
                significant effects have been felt.

            info(7) -
                Indicates an alarm condition that does not
                meet any other severity definition.  This can
                include important, but non-urgent, notices or
                informational events."             >"RFC2851, Textual Conventions for Internet Network Addresses."8"Denotes a generic Internet subnet address mask.
        The Internet subnet address mask is represented as the
        number of contiguous 1-bit from MSB (most significant bit)
        of the Internet subnet address mask.
        A CiscoInetAddressMask value is always interpreted within
        the context of an InetAddressType value. The 
        InetAddressType only object or InetAddressType with
        InetAddress objects which define the context must be
        registered immediately before the object which uses the
        CiscoInetAddressMask textual convention.  In other words,
        the object identifiers for the InetAddressType object and
        the CiscoInetAddressMask object MUST have the same length
        and the last sub-identifier of the InetAddressType object
        MUST be 1 less than the last sub-identifier of the 
        CiscoInetAddressMask object and MUST be 2 less than the
        last sub-identifier of the CiscoInetAddressMask object if
        an InetAddress object is defined between InetAddressType
        and CiscoInetAddressMask objects.
        The maximum value of the CiscoInetAddressMask TC is 32 for
        the value 'ipv4(1)' in InetAddressType object and 128 for
        the value 'ipv6(2)' in InetAddressType object.
        The value zero is object-specific and must therefore be
        defined as part of the description of any object which
        uses this syntax.  Examples of the usage of zero might
        include situations where Internet subnet mask was unknown,
        or when none subnet masks need to be referenced."               0"Each bit represents a CoS value (0 through 7)."              �"This textual convention defines the format of the
        displayable textual result from the bulk configuration
        operation specified as ConfigIterator type.

        The format should be: 
        'COMPLETION=          error occured>/,
         ERROR=/:
         '

        For example:
        'COMPLETION=22/100,ERROR=38/44:Invalid Ds1 line coding 
         for the line type'"             7"RFC 2616 Section 6.1.1 Status Code and Reason Phrase."�"This corresponds to the HTTP Status code.
        The Status-Code element in HTTP response is 
        a 3-digit integer result code of the attempt
        to understand and satisfy the HTTP request
        The Status-Code is intended for use by automata.

        The first digit of the Status-Code defines the class of 
        response.  The last two digits do not have any 
        categorization role. There are 5 values for the first digit:

         - 1xx: Informational - Request received, continuing process

         - 2xx: Success - The action was successfully received,
                understood, and accepted

         - 3xx: Redirection - Further action must be taken in order 
                to complete the request

         - 4xx: Client Error - The request contains bad syntax 
                or cannot be fulfilled

         - 5xx: Server Error - The server failed to fulfill an 
                apparently valid request."                     X"This module defines textual conventions used throughout
        cisco enterprise mibs." �"Cisco Systems
            Customer Service

            Postal: 170 W Tasman Drive
            San Jose, CA  95134
            USA

            Tel: +1 800 553-NETS

            E-mail: cs-snmp@cisco.com" "200702150000Z" "200607060000Z" "200604130000Z" "200506240000Z" "200506160000Z" "200410110000Z" "200406080000Z" "200404140000Z" "200212180000Z" "200212121600Z" "200212020000Z" "200209220000Z" "200209170000Z" "200204160000Z" "200107070000Z" "200101180000Z" "200011210000Z" "9810280000Z" "9703130000Z" "9608140000Z" "9607080000Z" "9602220000Z" "9506070000Z" v"Added following textual conventions:
        CiscoVlanList,
        CiscoCosList, 
        CiscoPbbServiceIdentifier" |"Added the following enums to IfOperStatusReason:
        - elpFailureAllZeroPeerWWNRcvd,
        - preferredPathIsolation." f"Added enumeration to IfOperStatusReason from 113-131
        ('dpvmVsanSuspended' to 'domainOther')." )"Added CvE164Address textual convention." �"Added following textual conventions:
        CiscoURLString
        CiscoHTTPResponseStatusCode
        EntLogicalIndexOrZero." ."Added IfOperStatusReason textual convention." ."Added CiscoPortListRange textual convention." X"Added CiscoPortList textual convention.
        Removed Unsigned32 textual convention." l"Changed MilliSeconds TC to CiscoMilliSeconds as it was
        overlapping with the one in a standard MIB." 7"Added the 'http' enumeration to CiscoNetworkProtocol." &"Added Unsigned64 textual convention." �"Added ListIndex, ListIndexOrZero, TimeIntervalSec,
        TimeintervalMin, MicroSeconds and MicroSeconds TC from Andiamo's
        TC MIB ." �"Added ConfigIterator & BulkConfigResult textual
        convention for bulk provisioning.
        Added CountryCodeITU textual convention for ITU-T defined
        country codes for non-standard facilities." 1"Added PerfHighIntervalCount TEXTUAL-CONVENTION." ,"Added enumerations to CiscoNetworkProtocol"@"Added CiscoAlarmSeverity textual convention.
        Changed SAPType display hint to d.  Changed
        INTEGER to Integer32 in CiscoPort and
        CiscoIpProtocol TCs.  Changed SnmpAdminString
        to OCTET STRING in CiscoLocationSpecifier.
        Removed IMPORTs for ciscoProducts and
        SnmpAdminString." �"Added CiscoLocationClass, CiscoLocationSpecifier
        CiscoInetAddressMask, CiscoAbsZeroBasedCounter32, 
        CiscoSnapShotAbsCounter32 textual conventions." d"Added CiscoRowOperStatus, EntPhysicalIndexOrZero,
        Port and IpProtocol textual conventions." 0"Added SAPType, CountryCode textual convention." 0"Added InterfaceIndexOrZero textual convention." ."Added new CiscoNetworkProtocol enumerations." '"Added Unsigned32 textual conventions." k"Miscellaneous updates/corrections, including making
        CiscoNetworkProtocol enumerations contiguous."                      