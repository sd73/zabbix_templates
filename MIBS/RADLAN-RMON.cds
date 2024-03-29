               5"The private MIB module definition for RND RMON MIB." W"5488 Marvell Lane
					Santa Clara, CA 95054
					USA

					Website:  www.marvell.com" "200406010000Z" "201705220000Z" "Initial version of this MIB." "Added rlEtherStatsTable"               -"The MIB's version. The current version is 1"                       �"Maximum number of buckets to be used by each
        History Control group entry.
        changed to read only, value is derived from
        rsMaxRmonEtherHistoryEntrie"                       ]"Maximum number of buckets to be used by all
        History Control group entries together."                       �"A list of rlHistory control entries. This table is exactly like the
        corresponding RMON I History control group table, but is used to sample
        statistics of counters not specified by the RMON I statistics group."                       �"A list of parameters that set up a periodic sampling
        of statistics.  As an example, an instance of the
        rlHistoryControlInterval object might be named
        rlHistoryControlInterval.2"                       �"An index that uniquely identifies an entry in the
        rlHistoryControl table.  Each such entry defines a
        set of samples at a particular interval for a sampled counter."                      "This object identifies the source of the data for
        which historical data was collected and
        placed in the rlHistory table.

        This object may not be modified if the associated
        rlHistoryControlStatus object is equal to valid(1)."                      �"The requested number of discrete time intervals
        over which data is to be saved in the part of the
        rlHistory table associated with this rlHistoryControlEntry.

        When this object is created or modified, the probe
        should set rlHistoryControlBucketsGranted as closely to
        this object as is possible for the particular probe
        implementation and available resources."                      �"The number of discrete sampling intervals
        over which data shall be saved in the part of
        the rlHistory table associated with this
        rlHistoryControlEntry.

        When the associated rlHistoryControlBucketsRequested
        object is created or modified, the probe
        should set this object as closely to the requested
        value as is possible for the particular
        probe implementation and available resources.  The
        probe must not lower this value except as a result
        of a modification to the associated
        rlHistoryControlBucketsRequested object.

        There will be times when the actual number of
        buckets associated with this entry is less than
        the value of this object.  In this case, at the
        end of each sampling interval, a new bucket will
        be added to the rlHistory  table.

        When the number of buckets reaches the value of
        this object and a new bucket is to be added to the
        media-specific table, the oldest bucket associated
        with this rlHistoryControlEntry shall be deleted by
        the agent so that the new bucket can be added.

        When the value of this object changes to a value less
        than the current value, entries are deleted
        from the rlHistory table. Enough of the oldest of these
        entries shall be deleted by the agent so that their
        number remains less than or equal to the new value of
        this object.

        When the value of this object changes to a value
        greater than the current value, the number of
        associated rlHistory table entries may be allowed to
        grow."                       "The interval in seconds over which the data is
        sampled for each bucket in the part of the
        rlHistory table associated with this
        rlHistoryControlEntry.  This interval can
        be set to any number of seconds between 1 and
        3600 (1 hour).

        Because the counters in a bucket may overflow at their
        maximum value with no indication, a prudent manager
        will take into account the possibility of overflow
        in any of the associated counters.  It is important
        to consider the minimum time in which any counter
        could overflow and set the rlHistoryControlInterval object to a value
        This object may not be modified if the associated
        rlHistoryControlStatus object is equal to valid(1)."                       d"The entity that configured this entry and is
        therefore using the resources assigned to it."                       �"The status of this rlHistoryControl entry.

        Each instance of the rlHistory table associated
        with this rlHistoryControlEntry will be deleted by the
        agent if this rlHistoryControlEntry is not equal to
        valid(1)."                       "A list of history entries."                      n"An historical statistics sample of a counter specified
        by the corresponding history control entry.
        This sample is associated with the rlHistoryControlEntry which set up
        the parameters for a regular collection of these
        samples.  As an example, an instance of the
        rlHistoryPkts object might be named
        rlHistoryPkts.2.89"                       �"The history of which this entry is a part.  The
        history identified by a particular value of this
        index is the same history as identified
        by the same value of rlHistoryControlIndex."                       �"An index that uniquely identifies the particular
        sample this entry represents among all samples
        associated with the same rlHistoryControlEntry.
        This index starts at 1 and increases by one
        as each new sample is taken."                      {"The value of sysUpTime at the start of the interval
        over which this sample was measured.  If the probe
        keeps track of the time of day, it should start
        the first sample of the history at a time such that
        when the next hour of the day begins, a sample is
        started at that instant.  Note that following this
        rule may require the probe to delay collecting the
        first sample of the history, as each sample must be
        of the same interval.  Also note that the sample which
        is currently being collected is not accessible in this
        table until the end of its interval."                       @"The value of the sampled counter at the time of this sampling."                       S"Maximum number of buckets to be used by each rlHistoryControlTable
        entry."                       ]"Maximum number of buckets to be used by all
        rlHistoryControlTable entries together."                       +"Maximum number of rlHistoryTable entries."                       ("A list of Ethernet statistics entries."                       5"An entry (conceptual row) in the rlEtherStatsTable."                       �"The total number of packets (including bad
        packets) received that were at least 1518 
		octets in length inclusive
        (excluding framing bits but including FCS octets)."                              