    Q"Used to report the result of an operation:

         responseReceived(1) - Operation completes successfully.
         unknown(2) - Operation failed due to unknown error.
         internalError(3) - An implementation detected an error
              in its own processing that caused an operation
              to fail.
         requestTimedOut(4) - Operation failed to receive a
              valid reply within the time limit imposed on it.
         unknownDestinationAddress(5) - Invalid destination
              address.
         noRouteToTarget(6) - Could not find a route to target.
         interfaceInactiveToTarget(7) - The interface to be
              used in sending a probe is inactive without an
              alternate route existing.
         arpFailure(8) - Unable to resolve a target address to a
              media specific address.
         maxConcurrentLimitReached(9) - The maximum number of
              concurrent active operations would have been exceeded
              if the corresponding operation was allowed.
         unableToResolveDnsName(10) - The DNS name specified was
              unable to be mapped to an IP address.
         invalidHostAddress(11) - The IP address for a host
              has been determined to be invalid.  Examples of this
              are broadcast or multicast addresses."                                                                                                         �"The Ping MIB (DISMAN-PING-MIB) provides the capability of
        controlling the use of the ping function at a remote
        host." �"Kenneth White

        International Business Machines Corporation
        Network Computing Software Division
        Research Triangle Park, NC, USA

        E-mail: wkenneth@us.ibm.com" "200009210000Z" )"Initial version, published as RFC 2925."       -- 21 September 2000
          �"Generated when a probe failure is detected when the
          corresponding pingCtlTrapGeneration object is set to
          probeFailure(0) subject to the value of
          pingCtlTrapProbeFailureFilter.  The object
          pingCtlTrapProbeFailureFilter can be used to specify the
          number of successive probe failures that are required
          before this notification can be generated."                \"Generated when a ping test is determined to have failed
          when the corresponding pingCtlTrapGeneration object is
          set to testFailure(1).  In this instance
          pingCtlTrapTestFailureFilter should specify the number of
          probes in a test required to have failed in order to
          consider the test as failed."                 �"Generated at the completion of a ping test when the
          corresponding pingCtlTrapGeneration object is set to
          testCompletion(4)."                     �"The maximum number of concurrent active ping requests
       that are allowed within an agent implementation.  A value
       of 0 for this object implies that there is no limit for
       the number of concurrent active requests in effect."                       �"Defines the ping Control Table for providing, via SNMP,
        the capability of performing ping operations at
        a remote host.  The results of these operations are
        stored in the pingResultsTable and the
        pingProbeHistoryTable."                      �"Defines an entry in the pingCtlTable.  The first index
        element, pingCtlOwnerIndex, is of type SnmpAdminString,
        a textual convention that allows for use of the SNMPv3
        View-Based Access Control Model (RFC 2575 [11], VACM)
        and allows an management application to identify its
        entries.  The second index, pingCtlTestName (also an
        SnmpAdminString), enables the same management
        application to have multiple outstanding requests."                      '"To facilitate the provisioning of access control by a
       security administrator using the View-Based Access
       Control Model (RFC 2575, VACM) for tables in which
       multiple users may need to independently create or
       modify entries, the initial index is used as an 'owner
       index'.  Such an initial index has a syntax of
       SnmpAdminString, and can thus be trivially mapped to a
       securityName or groupName as defined in VACM, in
       accordance with a security policy.

       When used in conjunction with such a security policy all
       entries in the table belonging to a particular user (or
       group) will have the same value for this initial index.
       For a given user's entries in a particular table, the
       object identifiers for the information in these entries
       will have the same subidentifiers (except for the 'column'
       subidentifier) up to the end of the encoded owner index.
       To configure VACM to permit access to this portion of the
       table, one would create vacmViewTreeFamilyTable entries
       with the value of vacmViewTreeFamilySubtree including
       the owner index portion, and vacmViewTreeFamilyMask
       'wildcarding' the column subidentifier.  More elaborate
       configurations are possible."                       h"The name of the ping test.  This is locally unique, within
        the scope of an pingCtlOwnerIndex."                       j"Specifies the type of host address to be used at a remote
        host for performing a ping operation."                      p"Specifies the host address to be used at a remote host for
        performing a ping operation.  The host address type is
        determined by the object value of corresponding
        pingCtlTargetAddressType.
        A value for this object MUST be set prior to transitioning
        its corresponding pingCtlEntry to active(1) via
        pingCtlRowStatus."                      �"Specifies the size of the data portion to be
        transmitted in a ping operation in octets.  A ping
        request is usually an ICMP message encoded
        into an IP packet.  An IP packet has a maximum size
        of 65535 octets.  Subtracting the size of the ICMP
        or UDP header (both 8 octets) and the size of the IP
        header (20 octets) yields a maximum size of 65507
        octets."                       Q"Specifies the time-out value, in seconds, for a
        remote ping operation."                       V"Specifies the number of times to perform a ping
        operation at a remote host."                      �"Reflects the desired state that a pingCtlEntry should be
        in:

           enabled(1)  - Attempt to activate the test as defined by
                         this pingCtlEntry.
           disabled(2) - Deactivate the test as defined by this
                         pingCtlEntry.

        Refer to the corresponding pingResultsOperStatus to
        determine the operational state of the test defined by
        this entry."                      �"The content of this object is used together with the
        corresponding pingCtlDataSize value to determine how to
        fill the data portion of a probe packet.  The option of
        selecting a data fill pattern can be useful when links
        are compressed or have data pattern sensitivities. The
        contents of pingCtlDataFill should be repeated in a ping
        packet when the size of the data portion of the ping
        packet is greater than the size of pingCtlDataFill."                      �"The number of seconds to wait before repeating a ping test
        as defined by the value of the various objects in the
        corresponding row.

        A single ping test consists of a series of ping probes.
        The number of probes is determined by the value of the
        corresponding pingCtlProbeCount object.  After a single
        test completes the number of seconds as defined by the
        value of pingCtlFrequency MUST elapse before the
        next ping test is started.

        A value of 0 for this object implies that the test
        as defined by the corresponding entry will not be
        repeated."                      q"The maximum number of entries allowed in the
        pingProbeHistoryTable.  An implementation of this
        MIB will remove the oldest entry in the
        pingProbeHistoryTable to allow the addition of an
        new entry once the number of rows in the
        pingProbeHistoryTable reaches this value.

        Old entries are not removed when a new test is
        started.  Entries are added to the pingProbeHistoryTable
        until pingCtlMaxRows is reached before entries begin to
        be removed.

        A value of 0 for this object disables creation of
        pingProbeHistoryTable entries."                       �"The storage type for this conceptual row.
        Conceptual rows having the value 'permanent' need not
        allow write-access to any columnar objects in the row."                      �"The value of this object determines when and if
        to generate a notification for this entry:

        probeFailure(0)   - Generate a pingProbeFailed
            notification subject to the value of
            pingCtlTrapProbeFailureFilter.  The object
            pingCtlTrapProbeFailureFilter can be used
            to specify the number of successive probe failures
            that are required before a pingProbeFailed
            notification can be generated.
        testFailure(1)    - Generate a pingTestFailed
            notification. In this instance the object
            pingCtlTrapTestFailureFilter can be used to
            determine the number of probe failures that
            signal when a test fails.
        testCompletion(2) - Generate a pingTestCompleted
            notification.

        The value of this object defaults to zero, indicating
        that none of the above options have been selected."                      �"The value of this object is used to determine when
        to generate a pingProbeFailed NOTIFICATION.

        Setting pingCtlTrapGeneration
        to probeFailure(0) implies that a pingProbeFailed
        NOTIFICATION is generated only when the number of
        successive probe failures as indicated by the
        value of pingCtlTrapPrbefailureFilter fail within
        a given ping test."                      e"The value of this object is used to determine when
        to generate a pingTestFailed NOTIFICATION.

        Setting pingCtlTrapGeneration to testFailure(1)
        implies that a pingTestFailed NOTIFICATION is
        generated only when the number of ping failures
        within a test exceed the value of
        pingCtlTrapTestFailureFilter."                      �"The value of this object is used to either report or
        select the implementation method to be used for
        calculating a ping response time.  The value of this
        object MAY be selected from pingImplementationTypeDomains.

        Additional implementation types SHOULD be allocated as
        required by implementers of the DISMAN-PING-MIB under
        their enterprise specific registration point and not
        beneath pingImplementationTypeDomains."                       _"The purpose of this object is to provide a
        descriptive name of the remote ping test."                       �"Specifies the type of the source address,
        pingCtlSourceAddress, to be used at a remote host
        when performing a ping operation."                      "Use the specified IP address (which must be given
        in numeric form, not as a hostname) as the source
        address in outgoing probe packets.  On hosts with
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
        of pingCtlSourceAddressType."                      "Setting this object to an interface's ifIndex prior
        to starting a remote ping operation directs
        the ping probes to be transmitted over the
        specified interface.  A value of zero for this object
        means that this option is not enabled."                      �"The purpose of this object is to optionally enable
       bypassing the route table.  If enabled, the remote
       host will bypass the normal routing tables and send
       directly to a host on an attached network.  If the
       host is not on a directly-attached network, an
       error is returned.  This option can be used to perform
       the ping operation to a local host through an
       interface that has no route defined (e.g., after the
       interface was dropped by routed)."                      ."Specifies the value to store in the Differentiated
        Services (DS) Field in the IP packet used to
        encapsulate the ping probe.  The DS Field is defined
        as the Type of Service (TOS) octet in a IPv4 header
        or as the Traffic Class octet in a IPv6 header.

        The value of this object must be a decimal integer
        in the range from 0 to 255.  This option can be used
        to determine what effect an explicit DS Field setting
        has on a ping response.  Not all values are legal or
        meaningful.  A value of 0 means that the function
     represented by this option is not supported.  DS Field
     usage is often not supported by IP implementations and
     not all values are supported.  Refer to RFC 2474 for
     guidance on usage of this field." �"Refer to RFC 2474 for the definition of the
        Differentiated Services Field and to RFC 1812
        Section 5.3.2 for Type of Service (TOS)."                    "This object allows entries to be created and deleted
        in the pingCtlTable.  Deletion of an entry in this
        table results in all corresponding (same
        pingCtlOwnerIndex and pingCtlTestName index values)
        pingResultsTable and pingProbeHistoryTable entries
        being deleted.

        A value MUST be specified for pingCtlTargetAddress
        prior to a transition to active(1) state being
        accepted.

        Activation of a remote ping operation is controlled
        via pingCtlAdminStatus and not by changing
        this object's value to active(1).

        Transitions in and out of active(1) state are not
        allowed while an entry's pingResultsOperStatus is
        active(1) with the exception that deletion of
        an entry in this table by setting its RowStatus
        object to destroy(6) will stop an active
        ping operation.

        The operational state of a ping operation
        can be determined by examination of its
        pingResultsOperStatus object." T"See definition of RowStatus in RFC 2579, 'Textual
        Conventions for SMIv2.'"                    "Defines the Ping Results Table for providing
        the capability of performing ping operations at
        a remote host.  The results of these operations are
        stored in the pingResultsTable and the pingPastProbeTable.

        An entry is added to the pingResultsTable when an
        pingCtlEntry is started by successful transition
        of its pingCtlAdminStatus object to enabled(1).
        An entry is removed from the pingResultsTable when
        its corresponding pingCtlEntry is deleted."                       �"Defines an entry in the pingResultsTable.  The
        pingResultsTable has the same indexing as the
        pingCtlTable in order for a pingResultsEntry to
        correspond to the pingCtlEntry that caused it to
        be created."                       �"Reflects the operational state of a pingCtlEntry:
           enabled(1)   - Test is active.
           disabled(2)  - Test has stopped."                       }"This objects indicates the type of address stored
        in the corresponding pingResultsIpTargetAddress
        object."                      G"This objects reports the IP address associated
        with a pingCtlTargetAddress value when the destination
        address is specified as a DNS name.  The value of
        this object should be a zero length octet string
        when a DNS name is not specified or when a
        specified DNS name fails to resolve."                       �"The minimum ping round-trip-time (RTT) received.  A value
        of 0 for this object implies that no RTT has been received."                       �"The maximum ping round-trip-time (RTT) received.  A value
        of 0 for this object implies that no RTT has been received."                       1"The current average ping round-trip-time (RTT)."                       �"Number of responses received for the corresponding
        pingCtlEntry and pingResultsEntry.  The value of this object
        MUST be reported as 0 when no probe responses have been
        received."                       �"The value of this object reflects the number of probes sent
        for the corresponding pingCtlEntry and pingResultsEntry.
        The value of this object MUST be reported as 0 when no probes
        have been sent."                      "This object contains the sum of the squares for all ping
        responses received.  Its purpose is to enable standard
        deviation calculation.  The value of this object MUST
        be reported as 0 when no ping responses have been
        received."                       I"Date and time when the last response was received for
        a probe."                      &"Defines a table for storing the results of a ping
        operation.  Entries in this table are limited by
        the value of the corresponding pingCtlMaxRows
        object.

        An entry in this table is created when the result of
        a ping probe is determined.  The initial 2 instance
        identifier index values identify the pingCtlEntry
        that a probe result (pingProbeHistoryEntry) belongs
        to.  An entry is removed from this table when
        its corresponding pingCtlEntry is deleted.

        An implementation of this MIB will remove the oldest
        entry in the pingProbeHistoryTable to allow the
        addition of an new entry once the number of rows in
        the pingProbeHistoryTable reaches the value specified
        by pingCtlMaxRows."                       �"Defines an entry in the pingProbeHistoryTable.
        The first two index elements identify the
        pingCtlEntry that a pingProbeHistoryEntry belongs
        to.  The third index element selects a single
        probe result."                      �"An entry in this table is created when the result of
        a ping probe is determined.  The initial 2 instance
        identifier index values identify the pingCtlEntry
        that a probe result (pingProbeHistoryEntry) belongs
        to.

        An implementation MUST start assigning
        pingProbeHistoryIndex values at 1 and wrap after
        exceeding the maximum possible value as defined by
        the limit of this object ('ffffffff'h)."                       �"The amount of time measured in milliseconds from when
        a probe was sent to when its response was received or
        when it timed out.  The value of this object is reported
        as 0 when it is not possible to transmit a probe."                       9"The result of a particular probe done by a remote host."                      ;"The last implementation method specific reply code received.
        If the ICMP Echo capability is being used then a successful
        probe ends when an ICMP response is received that contains
        the code ICMP_ECHOREPLY(0).  The ICMP responses are defined
        normally in the ip_icmp include file."                       6"Timestamp for when this probe result was determined."                               3"The compliance statement for the DISMAN-PING-MIB."  ["This group is mandatory for implementations that have
            access to a system clock and are capable of setting
            the values for DateAndTime objects.  It is RECOMMENDED
            that when this group is not supported that the values
            for the objects in this group be reported as
            '0000000000000000'H." R"The agent is not required to support set
            operations to this object." �"Write access is not required.  It is also allowed
            for implementations to support only the volatile
            StorageType enumeration." �"Write access is not required.  In addition, the only
            value that MUST be supported by an implementation is
            pingIcmpEcho."	"This object is not required by implementations that
            are not capable of its implementation.  The function
            represented by this object is implementable if the
            setsockopt SOL_SOCKET SO_DONTROUTE option is
            supported." �"This object is not required by implementations that
            are not capable of binding the send socket with a
            source address. An implementation is only required to
            support IPv4 and IPv6 addresses." �"This object is not required by implementations that
            are not capable of binding the send socket with a
            source address. An implementation is only required to
            support IPv4 and globally unique IPv6 addresses." �"Write access is not required.   When write access is
            not supported return a 0 as the value of this object.
            A value of 0 means that the function represented by
            this option is not supported." �"Write access is not required.   When write access is
            not supported return a 0 as the value of this object.
            A value of 0 means that the function represented by
            this option is not supported." U"An implementation is only required to
            support IPv4 and IPv6 addresses." e"An implementation is only required to
            support IPv4 and globally unique IPv6 addresses."                 H"The group of objects that comprise the remote ping
       capability."                 #"The group of DateAndTime objects."                 ]"The notification which are required to be supported by
       implementations of this MIB."                         r"Indicates that an implementation is using the Internet
        Control Message Protocol (ICMP) 'ECHO' facility."               K"Indicates that an implementation is using the UDP echo
        port (7)." "RFC 862, 'Echo Protocol'."             \"Indicates that an implementation is an SNMP query to
        calculate a round trip time."               �"Indicates that an implementation is attempting to
        connect to a TCP port in order to calculate a round
        trip time."                  