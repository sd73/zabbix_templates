                                                                                               t"The Traceroute MIB (DISMAN-TRACEROUTE-MIB) provides
        access to the traceroute capability at a remote host." �"Kenneth White

        International Business Machines Corporation
        Network Computing Software Division
        Research Triangle Park, NC, USA
        E-mail: wkenneth@us.ibm.com" "200009210000Z" )"Initial version, published as RFC 2925."       -- 21 September 2000
           #"The path to a target has changed."                 +"Could not determine the path to a target."                 0"The path to a target has just been determined."                     �"The maximum number of concurrent active traceroute requests
       that are allowed within an agent implementation.  A value
       of 0 for this object implies that there is no limit for
       the number of concurrent active requests in effect."                      1"Defines the Remote Operations Traceroute Control Table for
        providing the capability of invoking traceroute from a remote
        host.  The results of traceroute operations can be stored in
        the traceRouteResultsTable, traceRouteProbeHistoryTable, and
        the traceRouteHopsTable."                      "Defines an entry in the traceRouteCtlTable.  The first
        index element, traceRouteCtlOwnerIndex, is of type
        SnmpAdminString, a textual convention that allows for
        use of the SNMPv3 View-Based Access Control Model
        (RFC 2575 [11], VACM) and allows an management
        application to identify its entries.  The second index,
        traceRouteCtlTestName (also an SnmpAdminString),
        enables the same management application to have
        multiple requests outstanding."                      0"To facilitate the provisioning of access control by a
       security administrator using the View-Based Access
       Control Model (RFC 2575, VACM) for tables in which
       multiple users may need to independently create or
       modify entries, the initial index is used as an 'owner
       index'.  Such an initial index has a syntax of
       SnmpAdminString, and can thus be trivially mapped to a
       securityName or groupName as defined in VACM, in
       accordance with a security policy.

       When used in conjunction with such a security policy
       all entries in the table belonging to a particular user
       (or group) will have the same value for this initial
       index.  For a given user's entries in a particular
       table, the object identifiers for the information in
       these entries will have the same subidentifiers (except
       for the 'column' subidentifier) up to the end of the
       encoded owner index. To configure VACM to permit access
       to this portion of the table, one would create
       vacmViewTreeFamilyTable entries with the value of
       vacmViewTreeFamilySubtree including the owner index
       portion, and vacmViewTreeFamilyMask 'wildcarding' the
       column subidentifier.  More elaborate configurations
       are possible."                       r"The name of a traceroute test.  This is locally unique,
        within the scope of an traceRouteCtlOwnerIndex."                       f"Specifies the type of host address to be used on the
        traceroute request at the remote host."                      �"Specifies the host address used on the
        traceroute request at the remote host.  The
        host address type can be determined by the
        examining the value of the corresponding
        traceRouteCtlTargetAddressType index element.

        A value for this object MUST be set prior to
        transitioning its corresponding traceRouteCtlEntry to
        active(1) via traceRouteCtlRowStatus."                      �"The purpose of this object is to optionally enable
       bypassing the route table.  If enabled, the remote
       host will bypass the normal routing tables and send
       directly to a host on an attached network.  If the
       host is not on a directly-attached network, an
       error is returned.  This option can be used to perform
       the traceroute operation to a local host through an
       interface that has no route defined (e.g., after the
       interface was dropped by routed)."                      S"Specifies the size of the data portion of a traceroute
        request in octets.  A traceroute request is essentially
        transmitted by encoding a UDP datagram into a
        IP packet. So subtracting the size of a UDP header
        (8 octets) and the size of a IP header (20 octets)
        yields a maximum of 65507 octets."                       N"Specifies the time-out value, in seconds, for
        a traceroute request."                       p"Specifies the number of times to reissue a traceroute
        request with the same time-to-live (TTL) value."                      "Specifies the UDP port to send the traceroute
        request to.  Need to specify a port that is not in
        use at the destination (target) host.  The default
        value for this object is the IANA assigned port,
        33434, for the traceroute function."                       +"Specifies the maximum time-to-live value."                      6"Specifies the value to store in the Differentiated
        Services (DS) Field in the IP packet used to
        encapsulate the traceroute probe.  The DS Field is
        defined as the Type of Service (TOS) octet in a IPv4
        header or as the Traffic Class octet in a IPv6 header.

        The value of this object must be a decimal integer
        in the range from 0 to 255.  This option can be used
        to determine what effect an explicit DS Field setting
        has on a traceroute response.  Not all values are legal
        or meaningful.  DS Field usage is often not supported
        by IP implementations.  A value of 0 means that the
     function represented by this option is not supported.
     Useful TOS octet values are probably '16' (low delay)
     and '8' ( high throughput)." �"Refer to RFC 2474 for the definition of the
        Differentiated Services Field and to RFC 1812
        Section 5.3.2 for Type of Service (TOS)."                     �"Specifies the type of the source address,
        traceRouteCtlSourceAddress, to be used at a remote host
        when performing a traceroute operation."                      
"Use the specified IP address (which must be given
        as an IP number, not a hostname) as the source
        address in outgoing probe packets. On hosts with
        more than one IP address, this option can be used
        to force the source address to be something other
        than the primary IP address of the interface the
        probe packet is sent on.  If the IP address is not
        one of this machine's interface addresses, an error
        is returned and nothing is sent.  A zero length
        octet string value for this object disables source
        address specification.

        The address type (InetAddressType) that relates to
        this object is specified by the corresponding value
        of traceRouteCtlSourceAddressType."                      "Setting this object to an interface's ifIndex prior
        to starting a remote traceroute operation directs
        the traceroute probes to be transmitted over the
        specified interface.  A value of zero for this object
        implies that this option is not enabled."                       N"Enables an application to specify implementation
        dependent options."                      �"The value of this object indicates the maximum number
        of consecutive timeouts allowed before terminating
        a remote traceroute request.  A value of either 255 (maximum
        hop count/possible TTL value) or a 0 indicates that the
        function of terminating a remote traceroute request when a
        specific number of successive timeouts are detected is
        disabled."                       �"This object enables setting of the don't fragment flag (DF)
        in the IP header for a probe.  Use of this object enables
        performing a manual PATH MTU test."                       �"The value of this object specifies the initial TTL value to
        use.  This enables bypassing the initial (often well known)
        portion of a path."                      �"The number of seconds to wait before repeating a
        traceroute test as defined by the value of the
        various objects in the corresponding row.

        The number of hops in a single traceroute test
        is determined by the value of the corresponding
        traceRouteCtlProbesPerHop object.  After a
        single test completes the number of seconds as defined
        by the value of traceRouteCtlFrequency MUST elapse
        before the next traceroute test is started.

        A value of 0 for this object implies that the test
        as defined by the corresponding entry will not be
        repeated."                       �"The storage type for this conceptual row.
        Conceptual rows having the value 'permanent' need not
        allow write-access to any columnar objects in the row."                      �"Reflects the desired state that an traceRouteCtlEntry
        should be in:

           enabled(1)  - Attempt to activate the test as defined by
                         this traceRouteCtlEntry.
           disabled(2) - Deactivate the test as defined by this
                         traceRouteCtlEntry.

        Refer to the corresponding traceRouteResultsOperStatus to
        determine the operational state of the test defined by
        this entry."                       n"The purpose of this object is to provide a
        descriptive name of the remote traceroute
        test."                      �"The maximum number of entries allowed in the
        traceRouteProbeHistoryTable.  An implementation of
        this MIB will remove the oldest entry in the
        traceRouteProbeHistoryTable to allow the addition
        of an new entry once the number of rows in the
        traceRouteProbeHistoryTable reaches this value.

        Old entries are not removed when a new test is
        started.  Entries are added to the
        traceRouteProbeHistoryTable until traceRouteCtlMaxRows
        is reached before entries begin to be removed.

        A value of 0 for this object disables creation of
        traceRouteProbeHistoryTable entries."                      �"The value of this object determines when and if to
        to generate a notification for this entry:
        pathChange(0)     - Generate a traceRoutePathChange
            notification when the current path varies from a
            previously determined path.
        testFailure(1)    - Generate a traceRouteTestFailed
            notification when the full path to a target
            can't be determined.
        testCompletion(2) - Generate a traceRouteTestCompleted
            notification when the path to a target has been
            determined.

        The value of this object defaults to zero, indicating
        that none of the above options have been selected."                       �"The current path for a traceroute test is kept in the
        traceRouteHopsTable on a per hop basis when the value of
        this object is true(1)."                      �"The value of this object is used either to report or
        select the implementation method to be used for
        performing a traceroute operation. The value of this
        object may be selected from
        traceRouteImplementationTypeDomains.

        Additional implementation types should be allocated as
        required by implementers of the DISMAN-TRACEROUTE-MIB
        under their enterprise specific registration point and
        not beneath traceRouteImplementationTypeDomains."                      �"This object allows entries to be created and deleted
        in the traceRouteCtlTable.  Deletion of an entry in
        this table results in all corresponding (same
        traceRouteCtlOwnerIndex and traceRouteCtlTestName
        index values) traceRouteResultsTable,
        traceRouteProbeHistoryTable, and traceRouteHopsTable
        entries being deleted.

        A value MUST be specified for traceRouteCtlTargetAddress
        prior to a transition to active(1) state being
        accepted.

        Activation of a remote traceroute operation is
        controlled via traceRouteCtlAdminStatus and not
        by transitioning of this object's value to active(1).

        Transitions in and out of active(1) state are not
        allowed while an entry's traceRouteResultsOperStatus
        is active(1) with the exception that deletion of
        an entry in this table by setting its RowStatus
        object to destroy(6) will stop an active
        traceroute operation.

        The operational state of an traceroute operation
        can be determined by examination of the corresponding
        traceRouteResultsOperStatus object." T"See definition of RowStatus in RFC 2579, 'Textual
        Conventions for SMIv2.'"                    �"Defines the Remote Operations Traceroute Results Table for
        keeping track of the status of a traceRouteCtlEntry.

        An entry is added to the traceRouteResultsTable when an
        traceRouteCtlEntry is started by successful transition
        of its traceRouteCtlAdminStatus object to enabled(1).
        An entry is removed from the traceRouteResultsTable when
        its corresponding traceRouteCtlEntry is deleted."                      "Defines an entry in the traceRouteResultsTable.  The
        traceRouteResultsTable has the same indexing as the
        traceRouteCtlTable in order for a traceRouteResultsEntry
        to correspond to the traceRouteCtlEntry that caused it to
        be created."                       �"Reflects the operational state of an traceRouteCtlEntry:

           enabled(1)  - Test is active.
           disabled(2) - Test has stopped."                       �"Reflects the current TTL value (range from 1 to
        255) for a remote traceroute operation.
        Maximum TTL value is determined by
        traceRouteCtlMaxTtl."                       �"Reflects the current probe count (1..10) for
        a remote traceroute operation. The maximum
        probe count is determined by
        traceRouteCtlProbesPerHop."                       }"This objects indicates the type of address stored
        in the corresponding traceRouteResultsIpTgtAddr
        object."                      L"This objects reports the IP address associated
        with a traceRouteCtlTargetAddress value when the
        destination address is specified as a DNS name.
        The value of this object should be a zero length
        octet string when a DNS name is not specified or
        when a specified DNS name fails to resolve."                       �"The current number of attempts to determine a path
        to a target.  The value of this object MUST be started
        at 0."                       �"The current number of attempts to determine a path
        to a target that have succeeded.  The value of this
        object MUST be reported as 0 when no attempts have
        succeeded."                       H"The date and time when the last complete path
        was determined."                      �"Defines the Remote Operations Traceroute Results Table for
        storing the results of a traceroute operation.

        An implementation of this MIB will remove the oldest
        entry in the traceRouteProbeHistoryTable to allow the
        addition of an new entry once the number of rows in
        the traceRouteProbeHistoryTable reaches the value specified
        by traceRouteCtlMaxRows."                      "Defines a table for storing the results of a traceroute
        operation.  Entries in this table are limited by
        the value of the corresponding traceRouteCtlMaxRows
        object.

        The first two index elements identify the
        traceRouteCtlEntry that a traceRouteProbeHistoryEntry
        belongs to.  The third index element selects a single
        traceroute operation result.  The fourth and fifth indexes
        select the hop and the probe for a particular
        traceroute operation."                      M"An entry in this table is created when the result of
        a traceroute probe is determined.  The initial 2 instance
        identifier index values identify the traceRouteCtlEntry
        that a probe result (traceRouteProbeHistoryEntry) belongs
        to.  An entry is removed from this table when
        its corresponding traceRouteCtlEntry is deleted.

        An implementation MUST start assigning
        traceRouteProbeHistoryIndex values at 1 and wrap after
        exceeding the maximum possible value as defined by the
        limit of this object ('ffffffff'h)."                       �"Indicates which hop in a traceroute path that the probe's
       results are for.  The value of this object is initially
       determined by the value of traceRouteCtlInitialTtl."                       �"Indicates the index of a probe for a particular
       hop in a traceroute path.  The number of probes per
       hop is determined by the value of the corresponding
       traceRouteCtlProbesPerHop object."                       ~"This objects indicates the type of address stored
        in the corresponding traceRouteProbeHistoryHAddr
        object."                       �"The address of a hop in a traceroute path.  This object
       is not allowed to be a DNS name.  The value of the
       corresponding object, traceRouteProbeHistoryHAddrType,
       indicates this object's IP address type."                       �"The amount of time measured in milliseconds from when
        a probe was sent to when its response was received or
        when it timed out.  The value of this object is reported
        as 0 when it is not possible to transmit a probe."                       ]"The result of a traceroute operation made by a remote
        host for a particular probe."                      y"The last implementation method specific reply code received.

        Traceroute is usually implemented by transmitting a series of
        probe packets with increasing time-to-live values.  A probe
        packet is a UDP datagram encapsulated into an IP packet.
        Each hop in a path to the target (destination) host rejects
        the probe packets (probe's TTL too small, ICMP reply) until
        either the maximum TTL is exceeded or the target host is
        received.
        RADLAN proprietary implementation:
        16 LSB bits of information -
	8 MSB contain ICMP message type, 8 LSB ICMP error code."                       8"Timestamp for when this probe results were determined."                       �"Defines the Remote Operations Traceroute Hop Table for
        keeping track of the results of traceroute tests on a
        per hop basis."                      "Defines an entry in the traceRouteHopsTable.

        The first two index elements identify the
        traceRouteCtlEntry that a traceRouteHopsEntry
        belongs to.  The third index element,
        traceRouteHopsHopIndex, selects a
        hop in a traceroute path."                      �"Specifies the hop index for a traceroute hop.  Values
        for this object with respect to the same
        traceRouteCtlOwnerIndex and traceRouteCtlTestName
        MUST start at 1 and increase monotonically.
        The traceRouteHopsTable keeps the current traceroute
        path per traceRouteCtlEntry if enabled by
        setting the corresponding traceRouteCtlCreateHopsEntries
        to true(1).

        All hops (traceRouteHopsTable entries) in a traceroute
        path MUST be updated at the same time when a traceroute
        operation completes.  Care needs to be applied when either
        a path changes or can't be determined.  The initial portion
        of the path, up to the first hop change, MUST retain the
        same traceRouteHopsHopIndex values.  The remaining portion
        of the path SHOULD be assigned new traceRouteHopsHopIndex
        values."                       �"This objects indicates the type of address stored
        in the corresponding traceRouteHopsIpTargetAddress
        object."                       �"This object reports the IP address associated with
        the hop.  A value for this object should be reported
        as a numeric IP address and not as a DNS name."                       �"The minimum traceroute round-trip-time (RTT) received for
        this hop.  A value of 0 for this object implies that no
        RTT has been received."                       �"The maximum traceroute round-trip-time (RTT) received for
        this hop.  A value of 0 for this object implies that no
        RTT has been received."                       M"The current average traceroute round-trip-time (RTT) for
        this hop."                       �"This object contains the sum of all traceroute responses
        received for this hop.  Its purpose is to enable standard
        deviation calculation."                       �"The value of this object reflects the number of probes sent
        for this hop during this traceroute test.  The value of this
        object should start at 0."                       �"Number of responses received for this hop during this
        traceroute test.  This value of this object should start
        at 0."                       q"Date and time was the last response was received for a probe
        for this hop during this traceroute test."                               9"The compliance statement for the DISMAN-TRACEROUTE-MIB."   �"This group is mandatory for implementations that have
            access to a system clock and are capable of setting
            the values for DateAndTime objects." I"This group defines a collection of optional
            notifications." �"This group lists the objects that make up a
            traceRouteHopsEntry.  Support of the traceRouteHopsTable
            is optional." R"The agent is not required to support SET
            operations to this object."	"This object is not required by implementations that
            are not capable of its implementation.  The function
            represented by this object is implementable if the
            setsockopt SOL_SOCKET SO_DONTROUTE option is
            supported." �"This object is not required by implementations that
            are not capable of binding the send socket with a
            source address. An implementation is only required to
            support IPv4 and IPv6 addresses." �"This object is not required by implementations that
            are not capable of binding the send socket with a
            source address. An implementation is only required to
            support IPv4 and globally unique IPv6 addresses." �"Write access is not required.  When write access is
            not supported return a 0 as the value of this object.
            A value of 0 implies that the function represented by
            this option is not supported." �"Support of this object is optional.  When not
            supporting do not allow write access and return a
            zero length octet string as the value of the object." �"Write access is not required.  It is also allowed
            for implementations to support only the volatile
            StorageType enumeration." �"Write access is not required.   When write access is
            not supported return a 0 as the value of this object.
            A value of 0 implies that the function represented by
            this option is not supported." �"Write access is not required.  In addition, the only
            value that is RECOMMENDED to be supported by an
            implementation is traceRouteUsingUdpProbes." r"An implementation should only support IPv4 and
            globally unique IPv6 address values for this object." r"An implementation should only support IPv4 and
            globally unique IPv6 address values for this object." r"An implementation should only support IPv4 and
            globally unique IPv6 address values for this object." r"An implementation should only support IPv4 and
            globally unique IPv6 address values for this object." r"An implementation should only support IPv4 and
            globally unique IPv6 address values for this object." r"An implementation should only support IPv4 and
            globally unique IPv6 address values for this object."                 M"The group of objects that comprise the remote traceroute
       operation."                 #"The group of DateAndTime objects."                 ^"The notifications which are required to be supported by
       implementations of this MIB."                     ="The group of objects that comprise the traceRouteHopsTable."                     d"Indicates that an implementation is using UDP probes to
        perform the traceroute operation."                  