                                                   �"The SNMP trap that is generated when an alarm
        entry crosses its falling threshold and generates
        an event that is configured for sending SNMP
        traps."             �"The SNMP trap that is generated when an alarm
        entry crosses its rising threshold and generates
        an event that is configured for sending SNMP
        traps."                                     ("A list of Ethernet statistics entries."                       �"A collection of statistics kept for a particular
        Ethernet interface.  As an example, an instance of the
        etherStatsPkts object might be named etherStatsPkts.1"                       N"The value of this object uniquely identifies this
        etherStats entry."                      �"This object identifies the source of the data that
        this etherStats entry is configured to analyze.  This
        source can be any ethernet interface on this device.
        In order to identify a particular interface, this
        object shall identify the instance of the ifIndex
        object, defined in RFC 1213 and RFC 1573 [4,6], for
        the desired interface.  For example, if an entry
        were to receive data from interface #1, this object
        would be set to ifIndex.1.

        The statistics in this group reflect all packets
        on the local network segment attached to the
        identified interface.

        An agent may or may not be able to tell if
        fundamental changes to the media of the interface
        have occurred and necessitate an invalidation of
        this entry.  For example, a hot-pluggable ethernet
        card could be pulled out and replaced by a
        token-ring card.  In such a case, if the agent has
        such knowledge of the change, it is recommended that
        it invalidate this entry.

        This object may not be modified if the associated
        etherStatsStatus object is equal to valid(1)."                      "The total number of events in which packets
        were dropped by the probe due to lack of resources.
        Note that this number is not necessarily the number of
        packets dropped; it is just the number of times this
        condition has been detected."                      �"The total number of octets of data (including
        those in bad packets) received on the
        network (excluding framing bits but including
        FCS octets).

        This object can be used as a reasonable estimate of
        ethernet utilization.  If greater precision is
        desired, the etherStatsPkts and etherStatsOctets
        objects should be sampled before and after a common
        interval.  The differences in the sampled values are
        Pkts and Octets, respectively, and the number of
        seconds in the interval is Interval.  These values
        are used to calculate the Utilization as follows:

                         Pkts * (9.6 + 6.4) + (Octets * .8)
         Utilization = -------------------------------------
                                 Interval * 10,000

        The result of this equation is the value Utilization
        which is the percent utilization of the ethernet
        segment on a scale of 0 to 100 percent."                       r"The total number of packets (including bad packets,
        broadcast packets, and multicast packets) received."                       �"The total number of good packets received that were
        directed to the broadcast address.  Note that this
        does not include multicast packets."                       �"The total number of good packets received that were
        directed to a multicast address.  Note that this
        number does not include packets directed to the
        broadcast address."                      r"The total number of packets received that
        had a length (excluding framing bits, but
        including FCS octets) of between 64 and 1518
        octets, inclusive, but but had either a bad
        Frame Check Sequence (FCS) with an integral
        number of octets (FCS Error) or a bad FCS with
        a non-integral number of octets (Alignment Error)."                       �"The total number of packets received that were
        less than 64 octets long (excluding framing bits,
        but including FCS octets) and were otherwise well
        formed."                       �"The total number of packets received that were
        longer than 1518 octets (excluding framing bits,
        but including FCS octets) and were otherwise
        well formed."                      #"The total number of packets received that were less
        than 64 octets in length (excluding framing bits but
        including FCS octets) and had either a bad Frame
        Check Sequence (FCS) with an integral number of
        octets (FCS Error) or a bad FCS with a non-integral
        number of octets (Alignment Error).

        Note that it is entirely normal for
        etherStatsFragments to increment.  This is because
        it counts both runts (which are normal occurrences
        due to collisions) and noise hits."                      �"The total number of packets received that were
        longer than 1518 octets (excluding framing bits,
        but including FCS octets), and had either a bad
        Frame Check Sequence (FCS) with an integral number
        of octets (FCS Error) or a bad FCS with a
        non-integral number of octets (Alignment Error).

        Note that this definition of jabber is different
        than the definition in IEEE-802.3 section 8.2.1.5
        (10BASE5) and section 10.3.1.4 (10BASE2).  These
        documents define jabber as the condition where any
        packet exceeds 20 ms.  The allowed range to detect
        jabber is between 20 ms and 150 ms."                      �"The best estimate of the total number of collisions
        on this Ethernet segment.

        The value returned will depend on the location of
        the RMON probe. Section 8.2.1.3 (10BASE-5) and
        section 10.3.1.3 (10BASE-2) of IEEE standard 802.3
        states that a station must detect a collision, in
        the receive mode, if three or more stations are
        transmitting simultaneously.  A repeater port must
        detect a collision when two or more stations are
        transmitting simultaneously.  Thus a probe placed on
        a repeater port could record more collisions than a
        probe connected to a station on the same segment
        would.

        Probe location plays a much smaller role when
        considering 10BASE-T.  14.2.1.4 (10BASE-T) of IEEE
        standard 802.3 defines a collision as the
        simultaneous presence of signals on the DO and RD
        circuits (transmitting and receiving at the same
        time).  A 10BASE-T station can only detect
        collisions when it is transmitting.  Thus probes
        placed on a station and a repeater, should report
        the same number of collisions.

        Note also that an RMON probe inside a repeater
        should ideally report collisions between the
        repeater and one or more other hosts (transmit
        collisions as defined by IEEE 802.3k) plus receiver
        collisions observed on any coax segments to which
        the repeater is connected."                       �"The total number of packets (including bad
        packets) received that were 64 octets in length
        (excluding framing bits but including FCS octets)."                       �"The total number of packets (including bad
        packets) received that were between
        65 and 127 octets in length inclusive
        (excluding framing bits but including FCS octets)."                       �"The total number of packets (including bad
        packets) received that were between
        128 and 255 octets in length inclusive
        (excluding framing bits but including FCS octets)."                       �"The total number of packets (including bad
        packets) received that were between
        256 and 511 octets in length inclusive
        (excluding framing bits but including FCS octets)."                       �"The total number of packets (including bad
        packets) received that were between
        512 and 1023 octets in length inclusive
        (excluding framing bits but including FCS octets)."                       �"The total number of packets (including bad
        packets) received that were between
        1024 and 1518 octets in length inclusive
        (excluding framing bits but including FCS octets)."                       e"The entity that configured this entry and is
        therefore using the resources assigned to it."                       &"The status of this etherStats entry."                           $"A list of history control entries."                       �"A list of parameters that set up a periodic sampling
        of statistics.  As an example, an instance of the
        historyControlInterval object might be named
        historyControlInterval.2"                       �"An index that uniquely identifies an entry in the
        historyControl table.  Each such entry defines a
        set of samples at a particular interval for an
        interface on the device."                      
"This object identifies the source of the data for
        which historical data was collected and
        placed in a media-specific table on behalf of this
        historyControlEntry.  This source can be any
        interface on this device.  In order to identify
        a particular interface, this object shall identify
        the instance of the ifIndex object, defined
        in  RFC 1213 and RFC 1573 [4,6], for the desired
        interface.  For example, if an entry were to receive
        data from interface #1, this object would be set
        to ifIndex.1.

        The statistics in this group reflect all packets
        on the local network segment attached to the
        identified interface.

        An agent may or may not be able to tell if fundamental
        changes to the media of the interface have occurred
        and necessitate an invalidation of this entry.  For
        example, a hot-pluggable ethernet card could be
        pulled out and replaced by a token-ring card.  In
        such a case, if the agent has such knowledge of the
        change, it is recommended that it invalidate this
        entry.

        This object may not be modified if the associated
        historyControlStatus object is equal to valid(1)."                      �"The requested number of discrete time intervals
        over which data is to be saved in the part of the
        media-specific table associated with this
        historyControlEntry.

        When this object is created or modified, the probe
        should set historyControlBucketsGranted as closely to
        this object as is possible for the particular probe
        implementation and available resources."                      �"The number of discrete sampling intervals
        over which data shall be saved in the part of
        the media-specific table associated with this
        historyControlEntry.

        When the associated historyControlBucketsRequested
        object is created or modified, the probe
        should set this object as closely to the requested
        value as is possible for the particular
        probe implementation and available resources.  The
        probe must not lower this value except as a result
        of a modification to the associated
        historyControlBucketsRequested object.

        There will be times when the actual number of
        buckets associated with this entry is less than
        the value of this object.  In this case, at the
        end of each sampling interval, a new bucket will
        be added to the media-specific table.

        When the number of buckets reaches the value of
        this object and a new bucket is to be added to the
        media-specific table, the oldest bucket associated
        with this historyControlEntry shall be deleted by
        the agent so that the new bucket can be added.

        When the value of this object changes to a value less
        than the current value, entries are deleted
        from the media-specific table associated with this
        historyControlEntry.  Enough of the oldest of these
        entries shall be deleted by the agent so that their
        number remains less than or equal to the new value of
        this object.

        When the value of this object changes to a value
        greater than the current value, the number of
        associated media- specific entries may be allowed to
        grow."                      g"The interval in seconds over which the data is
        sampled for each bucket in the part of the
        media-specific table associated with this
        historyControlEntry.  This interval can
        be set to any number of seconds between 1 and
        3600 (1 hour).

        Because the counters in a bucket may overflow at their
        maximum value with no indication, a prudent manager
        will take into account the possibility of overflow
        in any of the associated counters.  It is important
        to consider the minimum time in which any counter
        could overflow on a particular media type and set
        the historyControlInterval object to a value less
        than this interval.  This is typically most
        important for the 'octets' counter in any
        media-specific table.  For example, on an Ethernet
        network, the etherHistoryOctets counter could
        overflow in about one hour at the Ethernet's maximum
        utilization.

        This object may not be modified if the associated
        historyControlStatus object is equal to valid(1)."                       e"The entity that configured this entry and is
        therefore using the resources assigned to it."                       �"The status of this historyControl entry.

        Each instance of the media-specific table associated
        with this historyControlEntry will be deleted by the
        agent if this historyControlEntry is not equal to
        valid(1)."                       %"A list of Ethernet history entries."                      f"An historical sample of Ethernet statistics on a
        particular Ethernet interface.  This sample is
        associated with the historyControlEntry which set up
        the parameters for a regular collection of these
        samples.  As an example, an instance of the
        etherHistoryPkts object might be named
        etherHistoryPkts.2.89"                       �"The history of which this entry is a part.  The
        history identified by a particular value of this
        index is the same history as identified
        by the same value of historyControlIndex."                       �"An index that uniquely identifies the particular
        sample this entry represents among all samples
        associated with the same historyControlEntry.
        This index starts at 1 and increases by one
        as each new sample is taken."                      �"The value of sysUpTime at the start of the interval
        over which this sample was measured.  If the probe
        keeps track of the time of day, it should start
        the first sample of the history at a time such that
        when the next hour of the day begins, a sample is
        started at that instant.  Note that following this
        rule may require the probe to delay collecting the
        first sample of the history, as each sample must be
        of the same interval.  Also note that the sample which
        is currently being collected is not accessible in this
        table until the end of its interval."                      *"The total number of events in which packets
        were dropped by the probe due to lack of resources
        during this sampling interval.  Note that this number
    is not necessarily the number of packets dropped, it
    is just the number of times this condition has been
    detected."                       �"The total number of octets of data (including
        those in bad packets) received on the
        network (excluding framing bits but including
        FCS octets)."                       `"The number of packets (including bad packets)
        received during this sampling interval."                       �"The number of good packets received during this
        sampling interval that were directed to the
        broadcast address."                       �"The number of good packets received during this
        sampling interval that were directed to a
        multicast address.  Note that this number does not
        include packets addressed to the broadcast address."                      �"The number of packets received during this sampling
        interval that had a length (excluding framing bits
        but including FCS octets) between 64 and 1518
        octets, inclusive, but had either a bad Frame Check
        Sequence (FCS) with an integral number of octets
        (FCS Error) or a bad FCS with a non-integral number
        of octets (Alignment Error)."                       �"The number of packets received during this
        sampling interval that were less than 64 octets
        long (excluding framing bits but including FCS
        octets) and were otherwise well formed."                       �"The number of packets received during this
        sampling interval that were longer than 1518
        octets (excluding framing bits but including
        FCS octets) but were otherwise well formed."                      H"The total number of packets received during this
        sampling interval that were less than 64 octets in
        length (excluding framing bits but including FCS
        octets) had either a bad Frame Check Sequence (FCS)
        with an integral number of octets (FCS Error) or a bad
        FCS with a non-integral number of octets (Alignment
        Error).

        Note that it is entirely normal for
        etherHistoryFragments to increment.  This is because
        it counts both runts (which are normal occurrences
        due to collisions) and noise hits."                      �"The number of packets received during this
        sampling interval that were longer than 1518 octets
        (excluding framing bits but including FCS octets),
        and  had either a bad Frame Check Sequence (FCS)
        with an integral number of octets (FCS Error) or
        a bad FCS with a non-integral number of octets
        (Alignment Error).

        Note that this definition of jabber is different
        than the definition in IEEE-802.3 section 8.2.1.5
        (10BASE5) and section 10.3.1.4 (10BASE2).  These
        documents define jabber as the condition where any
        packet exceeds 20 ms.  The allowed range to detect
        jabber is between 20 ms and 150 ms."                      "The best estimate of the total number of collisions
        on this Ethernet segment during this sampling
        interval.

        The value returned will depend on the location of
        the RMON probe. Section 8.2.1.3 (10BASE-5) and
        section 10.3.1.3 (10BASE-2) of IEEE standard 802.3
        states that a station must detect a collision, in
        the receive mode, if three or more stations are
        transmitting simultaneously.  A repeater port must
        detect a collision when two or more stations are
        transmitting simultaneously.  Thus a probe placed on
        a repeater port could record more collisions than a
        probe connected to a station on the same segment
        would.

        Probe location plays a much smaller role when
        considering 10BASE-T.  14.2.1.4 (10BASE-T) of IEEE
        standard 802.3 defines a collision as the
        simultaneous presence of signals on the DO and RD
        circuits (transmitting and receiving at the same
        time).  A 10BASE-T station can only detect
        collisions when it is transmitting.  Thus probes
        placed on a station and a repeater, should report
        the same number of collisions.

        Note also that an RMON probe inside a repeater
        should ideally report collisions between the
        repeater and one or more other hosts (transmit
        collisions as defined by IEEE 802.3k) plus receiver
        collisions observed on any coax segments to which
        the repeater is connected."                       �"The best estimate of the mean physical layer
        network utilization on this interface during this
        sampling interval, in hundredths of a percent."                           "A list of alarm entries."                       �"A list of parameters that set up a periodic checking
        for alarm conditions.  For example, an instance of the
        alarmValue object might be named alarmValue.8"                       �"An index that uniquely identifies an entry in the
        alarm table.  Each such entry defines a
        diagnostic sample at a particular interval
        for an object on the device."                      "The interval in seconds over which the data is
        sampled and compared with the rising and falling
        thresholds.  When setting this variable, care
        should be taken in the case of deltaValue
        sampling - the interval should be set short enough
        that the sampled variable is very unlikely to
        increase or decrease by more than 2^31 - 1 during
        a single sampling interval.

        This object may not be modified if the associated
        alarmStatus object is equal to valid(1)."                      �"The object identifier of the particular variable to
        be sampled.  Only variables that resolve to an ASN.1
        primitive type of INTEGER (INTEGER, Counter, Gauge,
        or TimeTicks) may be sampled.

        Because SNMP access control is articulated entirely
        in terms of the contents of MIB views, no access
        control mechanism exists that can restrict the value
        of this object to identify only those objects that
        exist in a particular MIB view.  Because there is
        thus no acceptable means of restricting the read
        access that could be obtained through the alarm
        mechanism, the probe must only grant write access to
        this object in those views that have read access to
        all objects on the probe.

        During a set operation, if the supplied variable
        name is not available in the selected MIB view, a
        badValue error must be returned.  If at any time the
        variable name of an established alarmEntry is no
        longer available in the selected MIB view, the probe
        must change the status of this alarmEntry to
        invalid(4).

        This object may not be modified if the associated
        alarmStatus object is equal to valid(1)."                      �"The method of sampling the selected variable and
        calculating the value to be compared against the
        thresholds.  If the value of this object is
        absoluteValue(1), the value of the selected variable
        will be compared directly with the thresholds at the
        end of the sampling interval.  If the value of this
        object is deltaValue(2), the value of the selected
        variable at the last sample will be subtracted from
        the current value, and the difference compared with
        the thresholds.

        This object may not be modified if the associated
        alarmStatus object is equal to valid(1)."                      ~"The value of the statistic during the last sampling
        period.  For example, if the sample type is
        deltaValue, this value will be the difference
        between the samples at the beginning and end of the
        period.  If the sample type is absoluteValue, this
        value will be the sampled value at the end of the
        period.

        This is the value that is compared with the rising and
        falling thresholds.

        The value during the current sampling period is not
        made available until the period is completed and will
        remain available until the next period completes."                      �"The alarm that may be sent when this entry is first
        set to valid.  If the first sample after this entry
        becomes valid is greater than or equal to the
        risingThreshold and alarmStartupAlarm is equal to
        risingAlarm(1) or risingOrFallingAlarm(3), then a
        single rising alarm will be generated.  If the first
        sample after this entry becomes valid is less than
        or equal to the fallingThreshold and
        alarmStartupAlarm is equal to fallingAlarm(2) or
        risingOrFallingAlarm(3), then a single falling alarm
        will be generated.

        This object may not be modified if the associated
        alarmStatus object is equal to valid(1)."                      D"A threshold for the sampled statistic.  When the
        current sampled value is greater than or equal to
        this threshold, and the value at the last sampling
        interval was less than this threshold, a single
        event will be generated.  A single event will also
        be generated if the first sample after this entry
        becomes valid is greater than or equal to this
        threshold and the associated alarmStartupAlarm is
        equal to risingAlarm(1) or risingOrFallingAlarm(3).

        After a rising event is generated, another such event
        will not be generated until the sampled value
        falls below this threshold and reaches the
        alarmFallingThreshold.

        This object may not be modified if the associated
        alarmStatus object is equal to valid(1)."                      B"A threshold for the sampled statistic.  When the
        current sampled value is less than or equal to this
        threshold, and the value at the last sampling
        interval was greater than this threshold, a single
        event will be generated.  A single event will also
        be generated if the first sample after this entry
        becomes valid is less than or equal to this
        threshold and the associated alarmStartupAlarm is
        equal to fallingAlarm(2) or risingOrFallingAlarm(3).

        After a falling event is generated, another such event
        will not be generated until the sampled value
        rises above this threshold and reaches the
        alarmRisingThreshold.

        This object may not be modified if the associated
        alarmStatus object is equal to valid(1)."                      O"The index of the eventEntry that is
        used when a rising threshold is crossed.  The
        eventEntry identified by a particular value of
        this index is the same as identified by the same value
        of the eventIndex object.  If there is no
        corresponding entry in the eventTable, then
        no association exists.  In particular, if this value
        is zero, no associated event will be generated, as
        zero is not a valid event index.

        This object may not be modified if the associated
        alarmStatus object is equal to valid(1)."                      P"The index of the eventEntry that is
        used when a falling threshold is crossed.  The
        eventEntry identified by a particular value of
        this index is the same as identified by the same value
        of the eventIndex object.  If there is no
        corresponding entry in the eventTable, then
        no association exists.  In particular, if this value
        is zero, no associated event will be generated, as
        zero is not a valid event index.

        This object may not be modified if the associated
        alarmStatus object is equal to valid(1)."                       e"The entity that configured this entry and is
        therefore using the resources assigned to it."                       !"The status of this alarm entry."                           '"A list of host table control entries."                      "A list of parameters that set up the discovery of
        hosts on a particular interface and the collection
        of statistics about these hosts.  For example, an
        instance of the hostControlTableSize object might be
        named hostControlTableSize.1"                      2"An index that uniquely identifies an entry in the
        hostControl table.  Each such entry defines
        a function that discovers hosts on a particular
        interface and places statistics about them in the
        hostTable and the hostTimeTable on behalf of this
        hostControlEntry."                      �"This object identifies the source of the data for
        this instance of the host function.  This source
        can be any interface on this device.  In order
        to identify a particular interface, this object shall
        identify the instance of the ifIndex object, defined
        in RFC 1213 and RFC 1573 [4,6], for the desired
        interface. For example, if an entry were to receive
        data from interface #1, this object would be set to
        ifIndex.1.

        The statistics in this group reflect all packets
        on the local network segment attached to the
        identified interface.

        An agent may or may not be able to tell if
        fundamental changes to the media of the interface
        have occurred and necessitate an invalidation of
        this entry.  For example, a hot-pluggable ethernet
        card could be pulled out and replaced by a
        token-ring card.  In such a case, if the agent has
        such knowledge of the change, it is recommended that
        it invalidate this entry.

        This object may not be modified if the associated
        hostControlStatus object is equal to valid(1)."                       r"The number of hostEntries in the hostTable and the
        hostTimeTable associated with this hostControlEntry."                       �"The value of sysUpTime when the last entry
        was deleted from the portion of the hostTable
        associated with this hostControlEntry.  If no
        deletions have occurred, this value shall be zero."                       e"The entity that configured this entry and is
        therefore using the resources assigned to it."                       �"The status of this hostControl entry.

        If this object is not equal to valid(1), all
        associated entries in the hostTable, hostTimeTable,
        and the hostTopNTable shall be deleted by the
        agent."                       "A list of host entries."                      "A collection of statistics for a particular host
        that has been discovered on an interface of this
        device.  For example, an instance of the
        hostOutBroadcastPkts object might be named
        hostOutBroadcastPkts.1.6.8.0.32.27.3.176"                       $"The physical address of this host."                      $"An index that defines the relative ordering of
        the creation time of hosts captured for a
        particular hostControlEntry.  This index shall
        be between 1 and N, where N is the value of
        the associated hostControlTableSize.  The ordering
        of the indexes is based on the order of each entry's
        insertion into the table, in which entries added
        earlier have a lower index value than entries added
        later.

        It is important to note that the order for a
        particular entry may change as an (earlier) entry
        is deleted from the table.  Because this order may
        change, management stations should make use of the
        hostControlLastDeleteTime variable in the
        hostControlEntry associated with the relevant
        portion of the hostTable.  By observing
        this variable, the management station may detect
        the circumstances where a previous association
        between a value of hostCreationOrder
        and a hostEntry may no longer hold."                      "The set of collected host statistics of which
        this entry is a part.  The set of hosts
        identified by a particular value of this
        index is associated with the hostControlEntry
        as identified by the same value of hostControlIndex."                       f"The number of good packets transmitted to this
        address since it was added to the hostTable."                       �"The number of packets, including bad packets,
        transmitted by this address since it was added
        to the hostTable."                       �"The number of octets transmitted to this address
        since it was added to the hostTable (excluding
        framing bits but including FCS octets), except for
        those octets in bad packets."                       �"The number of octets transmitted by this address
        since it was added to the hostTable (excluding
        framing bits but including FCS octets), including
        those octets in bad packets."                       l"The number of bad packets transmitted by this address
        since this host was added to the hostTable."                       �"The number of good packets transmitted by this
        address that were directed to the broadcast address
        since this host was added to the hostTable."                      "The number of good packets transmitted by this
        address that were directed to a multicast address
        since this host was added to the hostTable.
        Note that this number does not include packets
        directed to the broadcast address."                       ,"A list of time-ordered host table entries."                      e"A collection of statistics for a particular host
        that has been discovered on an interface of this
        device.  This collection includes the relative
        ordering of the creation time of this object.  For
        example, an instance of the hostTimeOutBroadcastPkts
        object might be named
        hostTimeOutBroadcastPkts.1.687"                       $"The physical address of this host."                      "An index that uniquely identifies an entry in
        the hostTime table among those entries associated
        with the same hostControlEntry.  This index shall
        be between 1 and N, where N is the value of
        the associated hostControlTableSize.  The ordering
        of the indexes is based on the order of each entry's
        insertion into the table, in which entries added
        earlier have a lower index value than entries added
        later. Thus the management station has the ability to
        learn of new entries added to this table without
        downloading the entire table.

        It is important to note that the index for a
        particular entry may change as an (earlier) entry
        is deleted from the table.  Because this order may
        change, management stations should make use of the
        hostControlLastDeleteTime variable in the
        hostControlEntry associated with the relevant
        portion of the hostTimeTable.  By observing
        this variable, the management station may detect
        the circumstances where a download of the table
        may have missed entries, and where a previous
        association between a value of hostTimeCreationOrder
        and a hostTimeEntry may no longer hold."                      "The set of collected host statistics of which
        this entry is a part.  The set of hosts
        identified by a particular value of this
        index is associated with the hostControlEntry
        as identified by the same value of hostControlIndex."                       j"The number of good packets transmitted to this
        address since it was added to the hostTimeTable."                       i"The number of god packets transmitted by this
        address since it was added to the hostTimeTable."                       �"The number of octets transmitted to this address
        since it was added to the hostTimeTable (excluding
        framing bits but including FCS octets), except for
        those octets in bad packets."                       �"The number of octets transmitted by this address
        since it was added to the hostTimeTable (excluding
        framing bits but including FCS octets), including
        those octets in bad packets."                       p"The number of bad packets transmitted by this address
        since this host was added to the hostTimeTable."                       �"The number of good packets transmitted by this
        address that were directed to the broadcast address
        since this host was added to the hostTimeTable."                      "The number of good packets transmitted by this
        address that were directed to a multicast address
        since this host was added to the hostTimeTable.
        Note that this number does not include packets
        directed to the broadcast address."                           '"A list of top N host control entries."                       �"A set of parameters that control the creation of a
        report of the top N hosts according to several
        metrics.  For example, an instance of the
        hostTopNDuration object might be named
        hostTopNDuration.3"                       �"An index that uniquely identifies an entry
        in the hostTopNControl table.  Each such
        entry defines one top N report prepared for
        one interface."                      }"The host table for which a top N report will be
        prepared on behalf of this entry.  The host table
        identified by a particular value of this index is
        associated with the same host table as identified by
        the same value of hostIndex.

        This object may not be modified if the associated
        hostTopNStatus object is equal to valid(1)."                       �"The variable for each host that the hostTopNRate
        variable is based upon.

        This object may not be modified if the associated
        hostTopNStatus object is equal to valid(1)."                      �"The number of seconds left in the report currently
        being collected.  When this object is modified by
        the management station, a new collection is started,
        possibly aborting a currently running report.  The
        new value is used as the requested duration of this
        report, which is loaded into the associated
        hostTopNDuration object.

        When this object is set to a non-zero value, any
        associated hostTopNEntries shall be made
        inaccessible by the monitor.  While the value of
        this object is non-zero, it decrements by one per
        second until it reaches zero.  During this time, all
        associated hostTopNEntries shall remain
        inaccessible.  At the time that this object
        decrements to zero, the report is made accessible in
        the hostTopNTable.  Thus, the hostTopN table needs
        to be created only at the end of the collection
        interval."                      ["The number of seconds that this report has collected
        during the last sampling interval, or if this
        report is currently being collected, the number
        of seconds that this report is being collected
        during this sampling interval.

        When the associated hostTopNTimeRemaining object is
        set, this object shall be set by the probe to the
        same value and shall not be modified until the next
        time the hostTopNTimeRemaining is set.

        This value shall be zero if no reports have been
        requested for this hostTopNControlEntry."                      '"The maximum number of hosts requested for the top N
        table.

        When this object is created or modified, the probe
        should set hostTopNGrantedSize as closely to this
        object as is possible for the particular probe
        implementation and available resources."                      �"The maximum number of hosts in the top N table.

        When the associated hostTopNRequestedSize object is
        created or modified, the probe should set this
        object as closely to the requested value as is
        possible for the particular implementation and
        available resources. The probe must not lower this
        value except as a result of a set to the associated
        hostTopNRequestedSize object.
        Hosts with the highest value of hostTopNRate shall be
        placed in this table in decreasing order of this rate
        until there is no more room or until there are no more
        hosts."                       �"The value of sysUpTime when this top N report was
        last started.  In other words, this is the time that
        the associated hostTopNTimeRemaining object was
        modified to start the requested report."                       e"The entity that configured this entry and is
        therefore using the resources assigned to it."                       �"The status of this hostTopNControl entry.

        If this object is not equal to valid(1), all
        associated hostTopNEntries shall be deleted by the
        agent."                       "A list of top N host entries."                       �"A set of statistics for a host that is part of a
        top N report.  For example, an instance of the
        hostTopNRate object might be named
        hostTopNRate.3.10"                      "This object identifies the top N report of which
        this entry is a part.  The set of hosts
        identified by a particular value of this
        object is part of the same report as identified
        by the same value of the hostTopNControlIndex object."                      �"An index that uniquely identifies an entry in
        the hostTopN table among those in the same report.
        This index is between 1 and N, where N is the
        number of entries in this table.  Increasing values
        of hostTopNIndex shall be assigned to entries with
        decreasing values of hostTopNRate until index N
        is assigned to the entry with the lowest value of
        hostTopNRate or there are no more hostTopNEntries."                       $"The physical address of this host."                       �"The amount of change in the selected variable
        during this sampling interval.  The selected
        variable is this host's instance of the object
        selected by hostTopNRateBase."                           R"A list of information entries for the
        traffic matrix on each interface."                       �"Information about a traffic matrix on a particular
        interface.  For example, an instance of the
        matrixControlLastDeleteTime object might be named
        matrixControlLastDeleteTime.1"                      B"An index that uniquely identifies an entry in the
        matrixControl table.  Each such entry defines
        a function that discovers conversations on a
        particular interface and places statistics about
        them in the matrixSDTable and the matrixDSTable on
        behalf of this matrixControlEntry."                      �"This object identifies the source of
        the data from which this entry creates a traffic
        matrix. This source can be any interface on this
        device.  In order to identify a particular
        interface, this object shall identify the instance
        of the ifIndex object, defined in RFC 1213 and RFC
        1573 [4,6], for the desired interface.  For example,
        if an entry were to receive data from interface #1,
        this object would be set to ifIndex.1.

        The statistics in this group reflect all packets
        on the local network segment attached to the
        identified interface.

        An agent may or may not be able to tell if
        fundamental changes to the media of the interface
        have occurred and necessitate an invalidation of
        this entry.  For example, a hot-pluggable ethernet
        card could be pulled out and replaced by a
        token-ring card.  In such a case, if the agent has
        such knowledge of the change, it is recommended that
        it invalidate this entry.

        This object may not be modified if the associated
        matrixControlStatus object is equal to valid(1)."                       �"The number of matrixSDEntries in the matrixSDTable
        for this interface.  This must also be the value of
        the number of entries in the matrixDSTable for this
        interface."                       �"The value of sysUpTime when the last entry
        was deleted from the portion of the matrixSDTable
        or matrixDSTable associated with this
        matrixControlEntry. If no deletions have occurred,
        this value shall be zero."                       e"The entity that configured this entry and is
        therefore using the resources assigned to it."                       �"The status of this matrixControl entry.

        If this object is not equal to valid(1), all
        associated entries in the matrixSDTable and the
        matrixDSTable shall be deleted by the agent."                       Z"A list of traffic matrix entries indexed by
        source and destination MAC address."                       �"A collection of statistics for communications between
        two addresses on a particular interface.  For example,
        an instance of the matrixSDPkts object might be named
        matrixSDPkts.1.6.8.0.32.27.3.176.6.8.0.32.10.8.113"                       "The source physical address."                       #"The destination physical address."                      '"The set of collected matrix statistics of which
        this entry is a part.  The set of matrix statistics
        identified by a particular value of this index
        is associated with the same matrixControlEntry
        as identified by the same value of
        matrixControlIndex."                       �"The number of packets transmitted from the source
        address to the destination address (this number
        includes bad packets)."                       �"The number of octets (excluding framing bits but
        including FCS octets) contained in all packets
        transmitted from the source address to the
        destination address."                       d"The number of bad packets transmitted from
        the source address to the destination address."                       Z"A list of traffic matrix entries indexed by
        destination and source MAC address."                       �"A collection of statistics for communications between
        two addresses on a particular interface.  For example,
        an instance of the matrixSDPkts object might be named
        matrixSDPkts.1.6.8.0.32.10.8.113.6.8.0.32.27.3.176"                       "The source physical address."                       #"The destination physical address."                      '"The set of collected matrix statistics of which
        this entry is a part.  The set of matrix statistics
        identified by a particular value of this index
        is associated with the same matrixControlEntry
        as identified by the same value of
        matrixControlIndex."                       �"The number of packets transmitted from the source
        address to the destination address (this number
        includes bad packets)."                       �"The number of octets (excluding framing bits
        but including FCS octets) contained in all packets
        transmitted from the source address to the
        destination address."                       d"The number of bad packets transmitted from
        the source address to the destination address."                           ""A list of packet filter entries."                       �"A set of parameters for a packet filter applied on a
        particular interface.  As an example, an instance of
        the filterPktData object might be named
        filterPktData.12"                       �"An index that uniquely identifies an entry
        in the filter table.  Each such entry defines
        one filter that is to be applied to every packet
        received on an interface."                      "This object identifies the channel of which this
        filter is a part.  The filters identified by a
        particular value of this object are associated with
        the same channel as identified by the same value of
        the channelIndex object."                      �"The offset from the beginning of each packet where
        a match of packet data will be attempted.  This offset
        is measured from the point in the physical layer
        packet after the framing bits, if any.  For example,
        in an Ethernet frame, this point is at the beginning
        of the destination MAC address.
        This object may not be modified if the associated
        filterStatus object is equal to valid(1)."                      �"The data that is to be matched with the input
        packet.  For each packet received, this filter and
        the accompanying filterPktDataMask and
        filterPktDataNotMask will be adjusted for the
        offset.  The only bits relevant to this match
        algorithm are those that have the corresponding
        filterPktDataMask bit equal to one.  The following
        three rules are then applied to every packet:

        (1) If the packet is too short and does not have data
            corresponding to part of the filterPktData, the
            packet will fail this data match.

        (2) For each relevant bit from the packet with the
            corresponding filterPktDataNotMask bit set to
            zero, if the bit from the packet is not equal to
            the corresponding bit from the filterPktData,
            then the packet will fail this data match.

        (3) If for every relevant bit from the packet with the
            corresponding filterPktDataNotMask bit set to one,
            the bit from the packet is equal to the
            corresponding bit from the filterPktData, then
            the packet will fail this data match.

        Any packets that have not failed any of the three
        matches above have passed this data match.  In
        particular, a zero length filter will match any
        packet.

        This object may not be modified if the associated
        filterStatus object is equal to valid(1)."                      �"The mask that is applied to the match process.
        After adjusting this mask for the offset, only those
        bits in the received packet that correspond to bits
        set in this mask are relevant for further processing
        by the match algorithm.  The offset is applied to
        filterPktDataMask in the same way it is applied to the
        filter.  For the purposes of the matching algorithm,
        if the associated filterPktData object is longer
        than this mask, this mask is conceptually extended
        with '1' bits until it reaches the length of the
        filterPktData object.

        This object may not be modified if the associated
        filterStatus object is equal to valid(1)."                      �"The inversion mask that is applied to the match
        process.  After adjusting this mask for the offset,
        those relevant bits in the received packet that
        correspond to bits cleared in this mask must all be
        equal to their corresponding bits in the
        filterPktData object for the packet to be accepted.
        In addition, at least one of those relevant bits in
        the received packet that correspond to bits set in
        this mask must be different to its corresponding bit
        in the filterPktData object.

        For the purposes of the matching algorithm, if the
        associated filterPktData object is longer than this
        mask, this mask is conceptually extended with '0'
        bits until it reaches the length of the
        filterPktData object.

        This object may not be modified if the associated
        filterStatus object is equal to valid(1)."                      	�"The status that is to be matched with the input
        packet.  The only bits relevant to this match
        algorithm are those that have the corresponding
        filterPktStatusMask bit equal to one.  The following
        two rules are then applied to every packet:

        (1) For each relevant bit from the packet status
            with the corresponding filterPktStatusNotMask bit
            set to zero, if the bit from the packet status is
            not equal to the corresponding bit from the
            filterPktStatus, then the packet will fail this
            status match.

        (2) If for every relevant bit from the packet status
            with the corresponding filterPktStatusNotMask bit
            set to one, the bit from the packet status is
            equal to the corresponding bit from the
            filterPktStatus, then the packet will fail this
            status match.

        Any packets that have not failed either of the two
        matches above have passed this status match.  In
        particular, a zero length status filter will match any
        packet's status.

        The value of the packet status is a sum.  This sum
        initially takes the value zero.  Then, for each
        error, E, that has been discovered in this packet,
        2 raised to a value representing E is added to the
        sum. The errors and the bits that represent them are
        dependent on the media type of the interface that
        this channel is receiving packets from.

        The errors defined for a packet captured off of an
        Ethernet interface are as follows:

            bit #    Error
                0    Packet is longer than 1518 octets
                1    Packet is shorter than 64 octets
                2    Packet experienced a CRC or Alignment
                     error

        For example, an Ethernet fragment would have a
        value of 6 (2^1 + 2^2).

        As this MIB is expanded to new media types, this
        object will have other media-specific errors
        defined.
        For the purposes of this status matching algorithm,
        if the packet status is longer than this
        filterPktStatus object, this object is conceptually
        extended with '0' bits until it reaches the size of
        the packet status.

        This object may not be modified if the associated
        filterStatus object is equal to valid(1)."                      "The mask that is applied to the status match
        process.  Only those bits in the received packet
        that correspond to bits set in this mask are
        relevant for further processing by the status match
        algorithm.  For the purposes of the matching
        algorithm, if the associated filterPktStatus object
        is longer than this mask, this mask is conceptually
        extended with '1' bits until it reaches the size of
        the filterPktStatus.  In addition, if a packet
        status is longer than this mask, this mask is
        conceptually extended with '0' bits until it reaches
        the size of the packet status.

        This object may not be modified if the associated
        filterStatus object is equal to valid(1)."                       "The inversion mask that is applied to the status
        match process.  Those relevant bits in the received
        packet status that correspond to bits cleared in
        this mask must all be equal to their corresponding
        bits in the filterPktStatus object for the packet to
        be accepted.  In addition, at least one of those
        relevant bits in the received packet status that
        correspond to bits set in this mask must be
        different to its corresponding bit in the
        filterPktStatus object for the packet to be
        accepted.
        For the purposes of the matching algorithm, if the
        associated filterPktStatus object or a packet status
        is longer than this mask, this mask is conceptually
        extended with '0' bits until it reaches the longer
        of the lengths of the filterPktStatus object and the
        packet status.

        This object may not be modified if the associated
        filterStatus object is equal to valid(1)."                       e"The entity that configured this entry and is
        therefore using the resources assigned to it."                       ""The status of this filter entry."                       #"A list of packet channel entries."                       �"A set of parameters for a packet channel applied on a
        particular interface.  As an example, an instance of
        the channelMatches object might be named
        channelMatches.3"                      �"An index that uniquely identifies an entry in the
        channel table.  Each such entry defines one channel,
        a logical data and event stream.

        It is suggested that before creating a channel, an
        application should scan all instances of the
        filterChannelIndex object to make sure that there
        are no pre-existing filters that would be
        inadvertently be linked to the channel."                      a"The value of this object uniquely identifies the
        interface on this remote network monitoring device
        to which the associated filters are applied to allow
        data into this channel.  The interface identified by
        a particular value of this object is the same
        interface as identified by the same value of the
        ifIndex object, defined in RFC 1213 and RFC 1573
        [4,6].

        The filters in this group are applied to all packets
        on the local network segment attached to the
        identified interface.
        An agent may or may not be able to tell if
        fundamental changes to the media of the interface
        have occurred and necessitate an invalidation of
        this entry.  For example, a hot-pluggable ethernet
        card could be pulled out and replaced by a
        token-ring card.  In such a case, if the agent has
        such knowledge of the change, it is recommended that
        it invalidate this entry.

        This object may not be modified if the associated
        channelStatus object is equal to valid(1)."                      I"This object controls the action of the filters
        associated with this channel.  If this object is equal
        to acceptMatched(1), packets will be accepted to this
        channel if they are accepted by both the packet data
        and packet status matches of an associated filter.  If
        this object is equal to acceptFailed(2), packets will
        be accepted to this channel only if they fail either
        the packet data match or the packet status match of
        each of the associated filters.

        In particular, a channel with no associated filters
        will match no packets if set to acceptMatched(1)
        case and will match all packets in the
        acceptFailed(2) case.

        This object may not be modified if the associated
        channelStatus object is equal to valid(1)."                      "This object controls the flow of data through this
        channel.  If this object is on(1), data, status and
        events flow through this channel.  If this object is
        off(2), data, status and events will not flow
        through this channel."                      �"The value of this object identifies the event
        that is configured to turn the associated
        channelDataControl from off to on when the event is
        generated.  The event identified by a particular value
        of this object is the same event as identified by the
        same value of the eventIndex object.  If there is no
        corresponding entry in the eventTable, then no
        association exists.  In fact, if no event is intended
        for this channel, channelTurnOnEventIndex must be
        set to zero, a non-existent event index.

        This object may not be modified if the associated
        channelStatus object is equal to valid(1)."                      �"The value of this object identifies the event
        that is configured to turn the associated
        channelDataControl from on to off when the event is
        generated.  The event identified by a particular value
        of this object is the same event as identified by the
        same value of the eventIndex object.  If there is no
        corresponding entry in the eventTable, then no
        association exists.  In fact, if no event is intended
        for this channel, channelTurnOffEventIndex must be
        set to zero, a non-existent event index.

        This object may not be modified if the associated
        channelStatus object is equal to valid(1)."                      �"The value of this object identifies the event
        that is configured to be generated when the
        associated channelDataControl is on and a packet
        is matched.  The event identified by a particular
        value of this object is the same event as identified
        by the same value of the eventIndex object.  If
        there is no corresponding entry in the eventTable,
        then no association exists.  In fact, if no event is
        intended for this channel, channelEventIndex must be
        set to zero, a non-existent event index.

        This object may not be modified if the associated
        channelStatus object is equal to valid(1)."                      �"The event status of this channel.

        If this channel is configured to generate events
        when packets are matched, a means of controlling
        the flow of those events is often needed.  When
        this object is equal to eventReady(1), a single
        event may be generated, after which this object
        will be set by the probe to eventFired(2).  While
        in the eventFired(2) state, no events will be
        generated until the object is modified to
        eventReady(1) (or eventAlwaysReady(3)).  The
        management station can thus easily respond to a
        notification of an event by re-enabling this object.

        If the management station wishes to disable this
        flow control and allow events to be generated
        at will, this object may be set to
        eventAlwaysReady(3).  Disabling the flow control
        is discouraged as it can result in high network
        traffic or other performance problems."                       �"The number of times this channel has matched a
        packet. Note that this object is updated even when
        channelDataControl is set to off."                       $"A comment describing this channel."                       e"The entity that configured this entry and is
        therefore using the resources assigned to it."                       #"The status of this channel entry."                           $"A list of buffers control entries."                       �"A set of parameters that control the collection of
        a stream of packets that have matched filters.  As
        an example, an instance of the
        bufferControlCaptureSliceSize object might be named
        bufferControlCaptureSliceSize.3"                       �"An index that uniquely identifies an entry
        in the bufferControl table.  The value of this
        index shall never be zero.  Each such
        entry defines one set of packets that is
        captured and controlled by one or more filters."                      �"An index that identifies the channel that is the
        source of packets for this bufferControl table.
        The channel identified by a particular value of this
        index is the same as identified by the same value of
        the channelIndex object.

        This object may not be modified if the associated
        bufferControlStatus object is equal to valid(1)."                      �"This object shows whether the buffer has room to
        accept new packets or if it is full.

        If the status is spaceAvailable(1), the buffer is
        accepting new packets normally.  If the status is
        full(2) and the associated bufferControlFullAction
        object is wrapWhenFull, the buffer is accepting new
        packets by deleting enough of the oldest packets
        to make room for new ones as they arrive.  Otherwise,
        if the status is full(2) and the
        bufferControlFullAction object is lockWhenFull,
        then the buffer has stopped collecting packets.

        When this object is set to full(2) the probe must
        not later set it to spaceAvailable(1) except in the
        case of a significant gain in resources such as
        an increase of bufferControlOctetsGranted.  In
        particular, the wrap-mode action of deleting old
        packets to make room for newly arrived packets
        must not affect the value of this object."                      /"Controls the action of the buffer when it
        reaches the full status.  When in the lockWhenFull(1)
        state and a packet is added to the buffer that
        fills the buffer, the bufferControlFullStatus will
        be set to full(2) and this buffer will stop capturing
        packets."                      "The maximum number of octets of each packet
        that will be saved in this capture buffer.
        For example, if a 1500 octet packet is received by
        the probe and this object is set to 500, then only
        500 octets of the packet will be stored in the
        associated capture buffer.  If this variable is set
        to 0, the capture buffer will save as many octets
        as is possible.

        This object may not be modified if the associated
        bufferControlStatus object is equal to valid(1)."                      "The maximum number of octets of each packet
        in this capture buffer that will be returned in
        an SNMP retrieval of that packet.  For example,
        if 500 octets of a packet have been stored in the
        associated capture buffer, the associated
        bufferControlDownloadOffset is 0, and this
        object is set to 100, then the captureBufferPacket
        object that contains the packet will contain only
        the first 100 octets of the packet.

        A prudent manager will take into account possible
        interoperability or fragmentation problems that may
        occur if the download slice size is set too large.
        In particular, conformant SNMP implementations are not
        required to accept messages whose length exceeds 484
        octets, although they are encouraged to support larger
        datagrams whenever feasible."                      �"The offset of the first octet of each packet
        in this capture buffer that will be returned in
        an SNMP retrieval of that packet.  For example,
        if 500 octets of a packet have been stored in the
        associated capture buffer and this object is set to
        100, then the captureBufferPacket object that
        contains the packet will contain bytes starting
        100 octets into the packet."                      e"The requested maximum number of octets to be
        saved in this captureBuffer, including any
        implementation-specific overhead. If this variable
        is set to -1, the capture buffer will save as many
        octets as is possible.

        When this object is created or modified, the probe
        should set bufferControlMaxOctetsGranted as closely
        to this object as is possible for the particular probe
        implementation and available resources.  However, if
        the object has the special value of -1, the probe
        must set bufferControlMaxOctetsGranted to -1."                      �"The maximum number of octets that can be
        saved in this captureBuffer, including overhead.
        If this variable is -1, the capture buffer will save
        as many octets as possible.

        When the bufferControlMaxOctetsRequested object is
        created or modified, the probe should set this object
        as closely to the requested value as is possible for
        the particular probe implementation and available
        resources.
        However, if the request object has the special value
        of -1, the probe must set this object to -1.
        The probe must not lower this value except as a result
        of a modification to the associated
        bufferControlMaxOctetsRequested object.

        When this maximum number of octets is reached
        and a new packet is to be added to this
        capture buffer and the corresponding
        bufferControlFullAction is set to wrapWhenFull(2),
        enough of the oldest packets associated with this
        capture buffer shall be deleted by the agent so
        that the new packet can be added.  If the
        corresponding bufferControlFullAction is set to
        lockWhenFull(1), the new packet shall be discarded.
        In either case, the probe must set
        bufferControlFullStatus to full(2).

        When the value of this object changes to a value less
        than the current value, entries are deleted from
        the captureBufferTable associated with this
        bufferControlEntry.  Enough of the
        oldest of these captureBufferEntries shall be
        deleted by the agent so that the number of octets
        used remains less than or equal to the new value of
        this object.

        When the value of this object changes to a value
        greater than the current value, the number of
        associated captureBufferEntries may be allowed to
        grow."                       A"The number of packets currently in this
        captureBuffer."                       O"The value of sysUpTime when this capture buffer was
        first turned on."                       e"The entity that configured this entry and is
        therefore using the resources assigned to it."                       *"The status of this buffer Control Entry."                       ."A list of packets captured off of a channel."                       �"A packet captured off of an attached network.  As an
        example, an instance of the captureBufferPacketData
        object might be named captureBufferPacketData.3.1783"                       T"The index of the bufferControlEntry with which
        this packet is associated."                      �"An index that uniquely identifies an entry
        in the captureBuffer table associated with a
        particular bufferControlEntry.  This index will
        start at 1 and increase by one for each new packet
        added with the same captureBufferControlIndex.

        Should this value reach 2147483647, the next packet
        added with the same captureBufferControlIndex shall
        cause this value to wrap around to 1."                      �"An index that describes the order of packets
        that are received on a particular interface.
        The packetID of a packet captured on an
        interface is defined to be greater than the
        packetID's of all packets captured previously on
        the same interface.  As the captureBufferPacketID
        object has a maximum positive value of 2^31 - 1,
        any captureBufferPacketID object shall have the
        value of the associated packet's packetID mod 2^31."                      D"The data inside the packet, starting at the
        beginning of the packet plus any offset specified in
        the associated bufferControlDownloadOffset,
        including any link level headers.  The length of the
        data in this object is the minimum of the length of
        the captured packet minus the offset, the length of
        the associated bufferControlCaptureSliceSize minus
        the offset, and the associated
        bufferControlDownloadSliceSize.  If this minimum is
        less than zero, this object shall have a length of
        zero."                       e"The actual length (off the wire) of the packet stored
        in this entry, including FCS octets."                       �"The number of milliseconds that had passed since
        this capture buffer was first turned on when this
        packet was captured."                      �"A value which indicates the error status of this
        packet.

        The value of this object is defined in the same way as
        filterPktStatus.  The value is a sum.  This sum
        initially takes the value zero.  Then, for each
        error, E, that has been discovered in this packet,
        2 raised to a value representing E is added to the
        sum.

        The errors defined for a packet captured off of an
        Ethernet interface are as follows:

            bit #    Error
                0    Packet is longer than 1518 octets
                1    Packet is shorter than 64 octets
                2    Packet experienced a CRC or Alignment
                     error
                3    First packet in this capture buffer after
                     it was detected that some packets were
                     not processed correctly.
                4    Packet's order in buffer is only
                     approximate (May only be set for packets
                     sent from the probe)

        For example, an Ethernet fragment would have a
        value of 6 (2^1 + 2^2).

        As this MIB is expanded to new media types, this
        object will have other media-specific errors defined."                           #"A list of events to be generated."                       �"A set of parameters that describe an event to be
        generated when certain conditions are met.  As an
        example, an instance of the eventLastTimeSent object
        might be named eventLastTimeSent.6"                       �"An index that uniquely identifies an entry in the
        event table.  Each such entry defines one event that
        is to be generated when the appropriate conditions
        occur."                       ("A comment describing this event entry."                      "The type of notification that the probe will make
        about this event.  In the case of log, an entry is
        made in the log table for each event.  In the case of
        snmp-trap, an SNMP trap is sent to one or more
        management stations."                      z"If an SNMP trap is to be sent, it will be sent to
        the SNMP community specified by this octet string.
        In the future this table will be extended to include
        the party security mechanism.  This object shall be
        set to a string of length zero if it is intended that
        that mechanism be used to specify the destination of
        the trap."                       �"The value of sysUpTime at the time this event
        entry last generated an event.  If this entry has
        not generated any events, this value will be
        zero."                      �"The entity that configured this entry and is
        therefore using the resources assigned to it.

        If this object contains a string starting with
        'monitor' and has associated entries in the log
        table, all connected management stations should
        retrieve those log entries, as they may have
        significance to all management stations connected to
        this device"                       �"The status of this event entry.

        If this object is not equal to valid(1), all
        associated log entries shall be deleted by the
        agent."                       )"A list of events that have been logged."                       �"A set of data describing an event that has been
        logged.  For example, an instance of the
        logDescription object might be named
        logDescription.6.47"                       �"The event entry that generated this log
        entry.  The log identified by a particular
        value of this index is associated with the same
        eventEntry as identified by the same value
        of eventIndex."                      >"An index that uniquely identifies an entry
        in the log table amongst those generated by the
        same eventEntries.  These indexes are
        assigned beginning with 1 and increase by one
        with each new log entry.  The association
        between values of logIndex and logEntries
        is fixed for the lifetime of each logEntry.
        The agent may choose to delete the oldest
        instances of logEntry as required because of
        lack of memory.  It is an implementation-specific
        matter as to when this deletion may occur."                       B"The value of sysUpTime when this log entry was
        created."                       ^"An implementation dependent description of the
        event that activated this log entry."                      